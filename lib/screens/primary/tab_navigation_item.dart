import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/screens/primary/widget_home.dart';
import 'package:flutter_application_1/screens/primary/widget_rank.dart';
import 'package:flutter_application_1/screens/primary/widget_search.dart';

class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Icon icon;

  TabNavigationItem({
    @required this.page,
    @required this.title,
    @required this.icon,
  });

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: HomePage(),
          icon: Icon(Icons.home),
          title: Text("Home"),
        ),
        TabNavigationItem(
          page: SearchPage(),
          icon: Icon(Icons.category),
          title: Text("Category"),
        ),
        TabNavigationItem(
          page: RankPage(),
          icon: Icon(Icons.format_list_numbered),
          title: Text("Rank"),
        ),
      ];
}
