import 'package:flutter/material.dart';
//import 'package:rede_app/ui/menu.dart';

class HomePage extends StatelessWidget {
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
              'Conteúdos mistos na Home',
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
