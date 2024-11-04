import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:joyfytech_website/router/app_router.dart';
import 'package:joyfytech_website/utils/project_data.dart';
import 'package:provider/provider.dart';

import 'navbar/navbar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDKLidOsdvG7y6LzVpWjYH3w9OUNyhUoAY",
        projectId: "joyfy-tech-website",
        messagingSenderId: "1037908699093",
        appId: "1:1037908699093:web:8c727e6e624f5f2c42bf5c",
        storageBucket: "joyfy-tech-website.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  FirebaseStorage storage = FirebaseStorage.instance;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => ProjectData()), // Provide your project data
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    final router = AppRouter.router;
    AppRouter.setupRouter();
    return MaterialApp(
      onGenerateRoute: router.generator,
      debugShowCheckedModeBanner: false,
      title: Provider.of<ProjectData>(context)
          .projectTitle, // Get project title from Provider
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff011E7B)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(child: Navbar()),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
