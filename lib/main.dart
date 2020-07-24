import 'package:flutter/material.dart';
import 'package:rede_app/utils/app_routes.dart';
import 'package:rede_app/views/tabs_page.dart';


void main() => runApp(RedeApp());


class RedeApp extends StatefulWidget {
  @override
  _RedeAppState createState() => _RedeAppState();
}

class _RedeAppState extends State<RedeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Rede PIBVM',
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        textTheme:ThemeData.light().textTheme.copyWith(
          title: TextStyle(
            fontSize: 20,
            fontFamily: 'Raleway',
            color: Colors.white,
          )
        )
      ),
      routes: {
        AppRoutes.HOME: (ctx)=>TabsPage()
      },
    );
  }
}