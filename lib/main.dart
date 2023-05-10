import 'package:flutter/material.dart';
import 'package:itcp1/formfield.dart';
import 'data_entry.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      locale: Locale('ar'),
      debugShowCheckedModeBanner: false,
      title: ' تقرير الصيانة',
      home: MyCustomForm(),
    );
  }
}

