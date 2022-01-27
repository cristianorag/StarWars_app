import 'package:flutter/material.dart';
import 'package:star_wars/view/avatar_editing.dart';
import 'package:star_wars/view/home.dart';
import 'package:star_wars/view/official_site.dart';

class RouteGenerator {
  static const home = '/';

  static const officialSite = '/officialSite';

  static const avatarEditing = '/avatarEditing';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (BuildContext context) {
          return Home();
        });

        // ignore: dead_code
        break;

      case officialSite:
        return MaterialPageRoute(builder: (BuildContext context) {
          return OfficialSite();
        });

        // ignore: dead_code
        break;

      case avatarEditing:
        return MaterialPageRoute(builder: (BuildContext context) {
          return AvatarEditing();
        });

        // ignore: dead_code
        break;

      default:
        throw Exception('Invalid Route: ${settings.name}');
    }
  }
}