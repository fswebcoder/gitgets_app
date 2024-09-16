import 'package:flutter/material.dart' show IconData, Icons;

class MenuItem{
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;
  const MenuItem({required this.subTitle, required this.link, required this.title, required this.icon});


}

const appMenuItem = <MenuItem> [
    MenuItem(
      title: 'Botones',
      subTitle: 'Varios botones en flutter',
      link: '/buttons',
      icon: Icons.add_a_photo_rounded
    ),
    MenuItem(
      title: 'Inputs',
      subTitle: 'Varios inputs en flutter',
      link: '/inputs',
      icon: Icons.input_rounded
    ),
    MenuItem(
      title: 'Cards',
      subTitle: 'Varios cards en flutter',
      link: '/cards',
      icon: Icons.credit_card
    ),
];