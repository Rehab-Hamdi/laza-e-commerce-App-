import 'package:flutter/material.dart';

import '../models/drawer.dart';

class DrawerItemsData {
  static List<DrawerModel> drawerItemsList = [
    DrawerModel(title: 'Home', prefixIcon: Icon(Icons.home)),
    DrawerModel(title: 'Account information', prefixIcon: Icon(Icons.info)),
    DrawerModel(title: 'Wishlist', prefixIcon: Icon(Icons.favorite)),
    DrawerModel(title: 'Orders', prefixIcon: Icon(Icons.shopping_cart)),
    DrawerModel(title: 'Settings', prefixIcon: Icon(Icons.settings)),
    DrawerModel(title: 'Logout', prefixIcon: Icon(Icons.logout)),
  ];
}
