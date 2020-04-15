import 'package:flutter/material.dart';
import 'package:rede_app/ui/navbar_builder.dart';

class DevotionalPage extends StatefulWidget {
  @override
  _DevotionalPageState createState() => _DevotionalPageState();
}

class _DevotionalPageState extends State<DevotionalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Devocionais",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(children: <Widget>[
      Center(child: Text('Integração com Firebase',style: TextStyle(fontSize: 18.0,height:10.0,color: Colors.white))),
      Image.asset("assets/images/logo_rede_branco.png",height: 150.0,width: 150.0),
      
        
        
      ],
      ),
      // bottomNavigationBar: NavBarBuilder(),
      backgroundColor: Colors.black,
    );
  }
}
