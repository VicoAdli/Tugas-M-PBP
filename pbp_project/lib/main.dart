import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

import 'package:pbp_project/screens/login.dart';
import 'package:pbp_project/screens/shoplist_form.dart';
import 'package:pbp_project/screens/list_product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
        create: (_) {
          CookieRequest request = CookieRequest();
          return request;
        },
        child: MaterialApp(
          title: 'My App',
          theme: ThemeData(
            primarySwatch: Colors.indigo,
          ),
          home: const LoginPage(),
          routes: {
            '/addItem': (context) => const ShopFormPage(),
            '/lihatItem': (context) => const ItemPage(),
          },
        ));
  }
}
