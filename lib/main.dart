import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale("ar", "AE")],
      locale: const Locale("ar", "AE"),
      title: 'Electrical Store',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: kPrimaryColor,
          elevation: 0,
        ),
        textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: kPrimaryColor),
      ),
      home: const HomeScreen(),
    );
  }
}
