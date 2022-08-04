import 'package:flutter/material.dart';
import 'list_item.dart';

class ShadesPage extends StatelessWidget {
  final MaterialAccentColor color;

  ShadesPage({required this.color});



  @override
  Widget build(BuildContext context) {
    final List<Color> accentShades = [
      color.shade100,
      color.shade200,
      color.shade400,
      color.shade700,
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Shades'),
          backgroundColor: accentShades.elementAt(1)),
      body: ListView.builder(
        itemCount: accentShades.length,
        itemBuilder: (BuildContext context, int index){
          return ListItem(color: accentShades.elementAt(index));
        },

      ),
    );
  }
  }