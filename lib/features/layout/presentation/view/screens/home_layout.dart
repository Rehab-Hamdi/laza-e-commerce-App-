import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:laza/core/theme/app_palette.dart';

import '../../../../home/presentation/screens/home_screen.dart';
import '../../../data/local_data/drawer_items_data.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //   child: Column(
      //     children: [
      //       const DrawerHeader(
      //         decoration: BoxDecoration(color: Colors.blue),
      //         child: Text('Drawer Header'),
      //       ),
      //       Expanded(
      //         child: ListView.separated(
      //           itemBuilder: (context, index) => ListTile(
      //             leading: DrawerItemsData.drawerItemsList[index].prefixIcon,
      //             title: Text(DrawerItemsData.drawerItemsList[index].title),
      //             trailing: DrawerItemsData.drawerItemsList[index].suffixIcon,
      //           ),
      //           separatorBuilder: (_, __) => const SizedBox(height: 5),
      //           itemCount: DrawerItemsData.drawerItemsList.length,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: GNav(
            tabMargin: EdgeInsets.all(2),
            tabBorderRadius: 15,
            duration: const Duration(milliseconds: 900),
            // color: MyColors.bottomNavigationBarIconsColor,
            activeColor: Colors.white,
            iconSize: 30,
            textStyle: TextStyle(fontSize: 20, color: Colors.white),
            tabBackgroundColor: AppPalette.appColor,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            onTabChange: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            tabs: const [
              GButton(icon: Icons.home_filled, text: 'Home'),
              GButton(icon: Icons.search, text: 'Search'),
              GButton(icon: Icons.language, text: 'Language'),
              GButton(icon: Icons.settings, text: 'Settings'),
            ],
          ),
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
