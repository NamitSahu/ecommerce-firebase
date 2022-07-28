import 'package:ecommerce_firebase/config/app_router.dart';
import 'package:ecommerce_firebase/config/theme.dart';
import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() => runApp(const EcommerceApp());

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce App',
      theme: theme(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

