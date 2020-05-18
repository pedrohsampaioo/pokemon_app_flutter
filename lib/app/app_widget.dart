import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Modular.initialRoute,
      onGenerateRoute: Modular.generateRoute,
      navigatorKey: Modular.navigatorKey,
      theme: ThemeData(
        buttonTheme: ButtonThemeData(minWidth: 10),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        accentColor: Color(0xFF2c3956),
      ),
    );
  }
}
