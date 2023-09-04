import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'configs/size_configs.dart';
import 'utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('ar'),
        ],
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'urduFonts',
          useMaterial3: true,
        ),
        routes: Routes.routes);
  }
}
