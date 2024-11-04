import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/colors.dart';
import '../../utils/constants.dart';

class MobileAddOurWorks extends StatefulWidget {
  const MobileAddOurWorks({super.key});

  @override
  State<MobileAddOurWorks> createState() => _MobileAddOurWorksState();
}

class _MobileAddOurWorksState extends State<MobileAddOurWorks> {
  Uint8List? _imageBytes;
  String? _imageUrl;
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _linkController = TextEditingController();
  bool _isSubmitting = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _imageBytes == null
                    ? ElevatedButton(
                        onPressed: () async {
                          // Pick image from PC
                          final XFile? pickedFile = await ImagePicker()
                              .pickImage(source: ImageSource.gallery);
                          if (pickedFile != null) {
                            final bytes = await pickedFile.readAsBytes();
                            setState(() {
                              _imageBytes = bytes;
                            });
                          }
                        },
                        child: Text('Pick Image'),
                      )
                    : Container(
                        width: 150,
                        height: 150,
                        child: Image.memory(_imageBytes!),
                      ),
                SizedBox(height: 20),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      buildTextFormField(
                          controller: _titleController,
                          labelText: 'Title',
                          validatorMessage: 'Please enter a title'),
                      SizedBox(height: 10),
                      buildTextFormField(
                          controller: _descriptionController,
                          labelText: 'Description',
                          validatorMessage: 'Please enter a description'),
                      SizedBox(height: 10),
                      buildTextFormField(
                          controller: _linkController,
                          labelText: 'Link',
                          validatorMessage: 'Please enter a link'),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(
                      hexToInt("0xFF${ColorsData.blueColor}"),
                    ),
                  ),
                  child: _isSubmitting
                      ? Container(
                          height: 40,
                          width: 40,
                          child: Center(
                              child: CircularProgressIndicator(
                            color: Colors.white,
                          )))
                      : InkWell(
                          onTap: _isSubmitting
                              ? null
                              : () async {
                                  if (_formKey.currentState!.validate()) {
                                    setState(() {
                                      _isSubmitting = true;
                                    });
                                    if (_imageBytes != null) {
                                      // Upload image to Firebase Storage
                                      await uploadImageToFirebaseStorage(
                                          _imageBytes!);
                                      // Save data to Firestore
                                      await saveDataToFirestore(
                                        _titleController.text,
                                        _imageUrl!,
                                        _linkController.text,
                                        _descriptionController.text,
                                      );
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                              'Please pick an image first'),
                                        ),
                                      );
                                    }
                                    setState(() {
                                      _isSubmitting = false;
                                    });
                                  }
                                },
                          child: Center(
                              child: Text(
                            'Submit',
                            style: TextStyle(color: Colors.white),
                          ))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> uploadImageToFirebaseStorage(Uint8List imageBytes) async {
    final storage = FirebaseStorage.instance;
    final task = storage
        .ref('ourProjects/${DateTime.now().millisecondsSinceEpoch}.jpg')
        .putData(imageBytes);
    final downloadUrl = await task.whenComplete(() => print('Upload complete'));
    final imageUrl = await downloadUrl.ref.getDownloadURL();
    setState(() {
      _imageUrl = imageUrl;
    });
  }

  Future<void> saveDataToFirestore(
    String title,
    String imageUrl,
    String link,
    String description,
  ) async {
    final firestore = FirebaseFirestore.instance;
    final docRef = firestore.collection('ourProjects').doc();
    await docRef.set({
      'id': docRef.id,
      'title': title,
      'image': imageUrl,
      'link': link,
      'description': description,
    });
    Navigator.pop(context);
  }

  // Reusable TextFormField builder function
  buildTextFormField({
    required TextEditingController controller,
    required String labelText,
    required String validatorMessage,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return validatorMessage;
        }
        return null;
      },
    );
  }
}
