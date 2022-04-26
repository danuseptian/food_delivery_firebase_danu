import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_firebase_danu/modules/dashboard/dashboard_view.dart';
import 'package:food_delivery_firebase_danu/service/fireauth_service.dart';
import 'package:food_delivery_firebase_danu/utilities/loading_screen.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';
import 'modules/login/login_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return StreamBuilder<User?>(
              stream: FireAuthService.streamAuthStatus(),
              builder: (context, snapshot) {
                if (FireAuthService.auth.currentUser != null) {
                  return DashboardView();
                }
                return LoginView();
              },
            );
          }
          return LoadingScreen();
        },
      ),
    );
  }
}
