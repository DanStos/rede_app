import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rede_app/ui/home_page.dart';
import 'package:rede_app/ui/routing_constants.dart';
import 'package:rede_app/ui/videos_page.dart';
import 'package:rede_app/ui/photos_page.dart';
import 'package:rede_app/ui/devotional_page.dart';
import 'package:rede_app/ui/events_page.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case HomePageRoute:
      return MaterialPageRoute(builder: (context)=>HomePage());
    case VideosPageRoute:
      return MaterialPageRoute(builder: (context)=>VideosPage());
    case PhotosPageRoute:
      return MaterialPageRoute(builder: (context)=>PhotosPage());
    case DevotionalPageRoute:
      return MaterialPageRoute(builder: (context)=>DevotionalPage());
    case EventsPageRoute:
      return MaterialPageRoute(builder: (context)=>EventsPage());
  }
}