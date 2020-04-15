import 'package:flutter/material.dart';
import 'package:rede_app/ui/navbar_builder.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Eventos",
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
