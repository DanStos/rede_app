import 'package:flutter/material.dart';
import 'package:rede_app/presentation/rede_app_icons.dart' as customIcons;
import 'package:rede_app/ui/routing_constants.dart';



class NavBar {
  const NavBar(this.title, this.icon, this.color, this.route);
  final String title;
  final IconData icon;
  final Color color;
  final String route;
}

const List<NavBar> allNavBarItems = <NavBar>[
  NavBar('Home', customIcons.Rede_app.home, Colors.white,HomePageRoute),
  NavBar('Eventos', Icons.event, Colors.white,EventsPageRoute),
  NavBar('Vídeos', customIcons.Rede_app.youtube_play, Colors.white,VideosPageRoute),
  NavBar('Fotos', customIcons.Rede_app.instagram_1, Colors.white,PhotosPageRoute),
  NavBar('Devocionais', customIcons.Rede_app.book, Colors.white,DevotionalPageRoute)
];