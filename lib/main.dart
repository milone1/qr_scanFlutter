import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:qr_flutter/screens/home_page.dart';
import 'package:qr_flutter/screens/mapa_page.dart';
import 'package:qr_flutter/provider/ui_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UiProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR scanner',
        initialRoute: 'home',
        routes : {
          'home': (context) => HomePage(),
          'mapa': (context) => MapPage(),
        },
        theme: ThemeData(
          primaryColor: Colors.teal,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.teal
          )
        ),
      ),
    );
  }
}