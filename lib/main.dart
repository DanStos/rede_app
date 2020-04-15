import 'package:flutter/material.dart';
import 'package:rede_app/ui/home_page.dart';
import 'package:rede_app/ui/navbar_builder.dart';
import 'package:rede_app/ui/route_generator.dart' as router;
import 'package:rede_app/ui/routing_constants.dart';

void main() => runApp(MaterialApp(
  home: NavBarBuilder(),
));