import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:pbp_project/providers/auth_provider.dart';
import 'package:pbp_project/providers/shop_provider.dart';
import 'package:pbp_project/screens/lihat_item_page.dart';
import 'package:pbp_project/screens/login_page.dart';
import 'package:pbp_project/screens/logout_page.dart';
import 'package:pbp_project/screens/menu.dart';
import 'package:pbp_project/screens/shoplist_form.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();
    if (kDebugMode) {
      print("Firebase initialized successfully");
    }
  } catch (error) {
    if (kDebugMode) {
      print("Error initializing Firebase: $error");
    }
  }

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context) => ShopProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(),
      routes: {
        '/login': (context) => const LoginPage(),
        '/logout': (context) => const LogoutPage(),
        '/addItem': (context) => const ShopFormPage(),
        '/lihatItem': (context) => const LihatItemPage(),
      },
    );
  }
}
