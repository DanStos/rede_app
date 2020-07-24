// import 'package:flutter/material.dart';
// import 'package:rede_app/views/home_page.dart';
// import 'package:rede_app/views/videos_page.dart';
// import 'package:rede_app/views/photos_page.dart';
// import 'package:rede_app/views/devotional_page.dart';
// import 'package:rede_app/views/events_page.dart';


// class MenuDrawer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       // Add a ListView to the drawer. This ensures the user can scroll
//       // through the options in the drawer if there isn't enough vertical
//       // space to fit everything.
//       child: new Container(
//         color: Colors.black,
//         child: ListView(
//           // Important: Remove any padding from the ListView.
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               padding: EdgeInsets.all(15.0),
//               child: Image.asset(
//                 "assets/images/logo_rede_branco.png",
//                 height: 200.0,
//                 width: 200.0,
//               ),
//               decoration: BoxDecoration(
//                 color: Color.fromRGBO(10, 10, 10, 1),
//               ),
//             ),
//             ListTile(
//               leading: Icon(
//                 Icons.home,
//                 color: Colors.white,
//               ),
//               title: Text(
//                 'Home',
//                 style: TextStyle(color: Colors.white),
//               ),
//               onTap: () {
//                 Navigator.pop(context);
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => HomePage()));
//               },
//             ),
//             ListTile(
//               leading: Icon(
//                 customIcons.Rede_app.instagram_1,
//                 color: Colors.white,
//               ),
//               title: Text(
//                 'Fotos',
//                 style: TextStyle(color: Colors.white),
//               ),
//               onTap: () {
//                 Navigator.pop(context);
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => PhotosPage()));
//               },
//             ),
//             ListTile(
//               leading: Icon(
//                 customIcons.Rede_app.youtube_play,
//                 color: Colors.white,
//               ),
//               title: Text(
//                 'Vídeos',
//                 style: TextStyle(color: Colors.white),
//               ),
//               onTap: () {
//                 Navigator.pop(context);
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => VideosPage()));
//               },
//             ),
//             ListTile(
//               leading: Icon(
//                 Icons.event,
//                 color: Colors.white,
//               ),
//               title: Text(
//                 'Eventos',
//                 style: TextStyle(color: Colors.white),
//               ),
//               onTap: () {
//                 Navigator.pop(context);
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => EventsPage()));
//               },
//             ),
//             ListTile(
//               leading: Icon(
//                 customIcons.Rede_app.book,
//                 color: Colors.white,
//               ),
//               title: Text(
//                 'Devocionais',
//                 style: TextStyle(color: Colors.white),
//               ),
//               onTap: () {
//                 Navigator.pop(context);
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => DevotionalPage()));
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
