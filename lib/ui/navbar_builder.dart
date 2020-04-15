import 'package:flutter/material.dart';
import 'package:rede_app/ui/nav_bar.dart';
import 'package:rede_app/ui/routing_constants.dart';
import 'package:rede_app/ui/route_generator.dart' as router;

class NavBarBuilder extends StatefulWidget {
  @override
  _NavBarBuilderState createState() => _NavBarBuilderState();
}
final _navigatorKey = GlobalKey<NavigatorState>();
int _currentIndex = 0;

class _NavBarBuilderState extends State<NavBarBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
      onWillPop: () async {
        if (_navigatorKey.currentState.canPop()) {
          _navigatorKey.currentState.pop();
          return false;
        }
        return true;
      },
      child:Navigator(
        key: _navigatorKey,
        initialRoute: HomePageRoute,
        onGenerateRoute: router.generateRoute,
      ),
       ),
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Color.fromRGBO(20, 20, 20, 1),
        items: allNavBarItems.map((NavBar navBarItem) {
          return BottomNavigationBarItem(
            icon: Icon(
              navBarItem.icon,
              color: navBarItem.color,
            ),
            title: Text(
              navBarItem.title,
              style: TextStyle(color: navBarItem.color),
            ),
          );
        }).toList(),
        onTap: (int index) {
          setState(() {
            if(_currentIndex==0 && index==0){
            }else if(_currentIndex!=0 && index==0) {
              _navigatorKey.currentState.pushNamedAndRemoveUntil(allNavBarItems[index].route, (Route<dynamic> route)=>false);
            }else{
              _navigatorKey.currentState.pushNamed(allNavBarItems[index].route);
            }
            _currentIndex = index;
            
            
            // _navigatorKey.currentState.pop();
            
          });
        },
      ),
    );
  }
}
