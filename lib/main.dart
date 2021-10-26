import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:restaurant_app/pages/pages.dart';
import 'package:restaurant_app/providers/auth_provider.dart';

import 'package:restaurant_app/providers/page_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PageProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => Splash(),
          '/login': (context) => Login(),
          '/register': (context) => Register(),
          '/main-page': (context) => MainPage(),
          '/accepted-page': (context) => AcceptedPage(),
        },
      ),
    );
  }
}
