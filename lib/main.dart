import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mobile_ojt_task/features/auth/presentation/view/login_view.dart';

void main() async{
    WidgetsFlutterBinding.ensureInitialized();
     await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyDckdFFPh3cf_DrQ_MALvRogUKItJ8vtmc",
    appId: 'com.example.mobile_ojt_task',
    messagingSenderId: '748085143128',
    projectId: 'mobile-ojt',
  ));
  log('Firebase Initialized Successfully');
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginView(),
    );
  }
}
