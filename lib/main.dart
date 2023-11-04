import 'package:ecommerce/screens/bottom_navigation_bar.dart';
import 'package:ecommerce/screens/login_Screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final auth=FirebaseAuth.instance;
    User? user = auth.currentUser;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: user==null? const LoginScreen() :  const BottomNavigationBarWidget(),
      // PaymentScreen(),
    );
  }
}
