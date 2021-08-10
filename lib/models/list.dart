import 'package:flutter/material.dart';

class List {
  final String id;
  final String name;
  final String nation;
  final Color color;
  final String imageUrl;

  const List({
    @required this.id,
    @required this.name,
    @required this.nation,
    this.color = Colors.orange,
    @required this.imageUrl,
  });
}
