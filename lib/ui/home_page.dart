import 'package:flutter/material.dart';
//import 'package:rede_app/ui/menu.dart';
import 'package:rede_app/ui/nav_bar.dart';
import 'package:rede_app/presentation/rede_app_icons.dart' as customIcons;
import 'package:rede_app/ui/navbar_builder.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

int _currentIndex = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      // bottomNavigationBar: NavBarBuilder(),
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
            child: Center(
                child: Text('Conteúdos Mistos na Home',
                    style: TextStyle(
                        fontSize: 18.0, height: 10.0, color: Colors.white))),
          ),
          Image.asset("assets/images/logo_rede_branco.png",
              height: 150.0, width: 150.0),
        ],
      ),
    );
  }
}
