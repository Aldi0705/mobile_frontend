import 'package:flutter/material.dart';
import 'package:myapp/home.dart';
import 'package:myapp/pages/login/login.dart';
import 'package:myapp/providers/news_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => NewsProvider()), //registrasi provider
    //
    //
    //
    //
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Login());
  }
}
