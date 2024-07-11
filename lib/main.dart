// import 'dart:io';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'pages/login_page.dart';
import 'theme/theme_provider.dart';

void main() async {
  // ByteData data = await rootBundle.load('assets/raw/gradle-7.2.2.pom');
  // SecurityContext context = SecurityContext.defaultContext;
  // context.setTrustedCertificatesBytes(data.buffer.asUint8List());
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      title: 'chat',
      theme: Provider.of<ThemeProvider>(context).themeData
    );
  }
}

