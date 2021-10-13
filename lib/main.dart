import 'package:flutter/material.dart';
import 'package:project_02/pages/home_page.dart';
import 'package:project_02/pages/tabs/nosotros_tab.dart';
import 'package:project_02/pages/tabs/ubicacion_tab.dart';
import 'package:project_02/pages/tabs/version_tab.dart';
import 'package:project_02/widgets/producto_preview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // COLORS
          //brightness: Brightness.dark,
          primarySwatch: Colors.deepPurple,
          // FONTS
          fontFamily: 'Lora',
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 50, fontStyle: FontStyle.italic),
            subtitle1: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            subtitle2: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            bodyText1: TextStyle(fontSize: 20, color: Colors.white),
            bodyText2: TextStyle(fontSize: 17),
          )),
      //home: RootPage(),

      routes: {
        '/': (context) => RootPage(),
        '/Ubicación': (context) => TabUbicacion(),
        '/Empresa': (context) => TabNosotros(),
        '/Versión': (context) => TabVersion(),
      },
      initialRoute: '/',
    );
  }
}
