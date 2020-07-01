import 'package:flutter/material.dart';

class Destination {
  const Destination(this.index, this.title, this.icon, this.color);
  final int index;
  final String title;
  final IconData icon;
  final MaterialColor color;
}


const List<Destination> allDestinations = <Destination>[
  Destination(0, 'Today', Icons.home, Colors.teal),
  Destination(1, 'Elements', Icons.list, Colors.cyan),
  Destination(2, 'Statistics', Icons.flight, Colors.orange),
  Destination(3, 'Settings', Icons.settings, Colors.blue)
];