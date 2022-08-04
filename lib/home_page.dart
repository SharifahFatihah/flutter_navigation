import 'package:flutter/material.dart';
import 'package:day7/list_item.dart';
import 'package:day7/shades_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  void navigateToShadePageStatic(
      BuildContext context,
      MaterialAccentColor color,
      ) {
    Navigator.pushNamed(
      context,
      '/shades',
      arguments: color,
    );
  }

  void navigateToShadePage(BuildContext context, MaterialAccentColor color) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return ShadesPage(color: color);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Colors')),
      body: ListView.builder(
        itemCount: Colors.accents.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              navigateToShadePageStatic(
                context,
                Colors.accents.elementAt(index),
              );
            },
            child: ListItem(
              color: Colors.accents.elementAt(index),
            ),
          );
        },
      ),
    );
  }
}