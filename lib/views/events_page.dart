import 'package:flutter/material.dart';
// import 'package:rede_app/views/navbar_builder.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Theme.of(context).primaryColor,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Integração com Firebase',
              style: Theme.of(context).textTheme.title,
            ),
            Image.asset(
              "assets/images/logo_rede_branco.png",
              height: 150.0,
              width: 150.0,
            )
          ],
        ),
      ),
    );
  }
}
