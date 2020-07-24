import 'package:flutter/material.dart';

import '../views/home_page.dart';
import '../views/devotional_page.dart';
import '../views/events_page.dart';
import '../views/videos_page.dart';
import '../views/photos_page.dart';

class AppRoutes {
  static const HOME = '/';
  static const DEVOTIONALS = '/devotionals';
  static const EVENTS = '/events';
  static const VIDEOS = '/videos';
  static const PHOTOS = '/photos';

  static final List<Map<String, Object>> screens = [
    {
      'title': 'Videos',
      'view': VideosPage(),
      'icon': Icons.ondemand_video,
    },
    {
      'title': 'Fotos',
      'view': PhotosPage(),
      'icon': Icons.photo,
    },
    {
      'title': 'Home',
      'view': HomePage(),
      'icon': Icons.home,
    },
    {
      'title': 'Eventos',
      'view': EventsPage(),
      'icon': Icons.event,
    },
    {
      'title': 'Devocionais',
      'view': DevotionalPage(),
      'icon': Icons.not_interested,
    },
  ];
}
