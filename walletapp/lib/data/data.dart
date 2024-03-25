import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map<String, dynamic>> transactionsData = [
  {
    'icon': const Icon(FontAwesomeIcons.burger, color: Colors.white),
    'color': Colors.yellow[700],
    'name': 'Food',
    'totalAmount': '-45.00 UAH',
    'date': 'Today',
  },
  {
    'icon': const Icon(FontAwesomeIcons.bagShopping, color: Colors.white),
    'color': Colors.purple[700],
    'name': 'Shopping',
    'totalAmount': '-230.00 UAH',
    'date': 'Yesterday',
  },
  {
    'icon': const Icon(FontAwesomeIcons.heartCircleCheck, color: Colors.white),
    'color': Colors.green[700],
    'name': 'Health',
    'totalAmount': '-500.00 UAH',
    'date': 'Yesterday',
  },
  {
    'icon': const Icon(FontAwesomeIcons.bus, color: Colors.white),
    'color': Colors.yellow[700],
    'name': 'Travel',
    'totalAmount': '-90.00 UAH',
    'date': 'Yesterday',
  },
];
