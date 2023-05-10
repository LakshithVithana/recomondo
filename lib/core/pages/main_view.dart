import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recomondo/screens/explore/presentation/pages/explore_page.dart';
import 'package:recomondo/screens/followers/presentation/pages/followers_page.dart';
import 'package:recomondo/screens/home/presentation/pages/home_page.dart';
import 'package:recomondo/screens/profile/presentation/pages/profile_page.dart';
import 'package:recomondo/screens/saved/presentation/pages/saved_page.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

typedef IndexCallback = void Function(int val);

class _MainViewState extends State<MainView> {
  int selected_index = 0;

  void _onItemTapped(int index) {
    setState(() {
      selected_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(
            index: selected_index,
            children: const [
              HomePage(),
              ExplorePage(),
              FollowersPage(),
              SavedPage(),
              ProfilePage(),
            ],
          ),
          Positioned(
            bottom: 0.0,
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
                child: SizedBox(
                  height: 83.w,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {
                          _onItemTapped(0);
                        },
                        icon: selected_index == 0
                            ? Image.asset('assets/icons/home_selected.png')
                            : Image.asset('assets/icons/home.png'),
                      ),
                      IconButton(
                        onPressed: () {
                          _onItemTapped(1);
                        },
                        icon: selected_index == 1
                            ? Image.asset('assets/icons/explore_selected.png')
                            : Image.asset('assets/icons/explore.png'),
                      ),
                      IconButton(
                        onPressed: () {
                          _onItemTapped(2);
                        },
                        icon: selected_index == 2
                            ? Image.asset('assets/icons/followers_selected.png')
                            : Image.asset('assets/icons/followers.png'),
                      ),
                      IconButton(
                        onPressed: () {
                          _onItemTapped(3);
                        },
                        icon: selected_index == 3
                            ? Image.asset('assets/icons/saved_selected.png')
                            : Image.asset('assets/icons/saved.png'),
                      ),
                      IconButton(
                        onPressed: () {
                          _onItemTapped(4);
                        },
                        icon: selected_index == 4
                            ? Image.asset('assets/icons/profile_selected.png')
                            : Image.asset('assets/icons/profile.png'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: selected_index,
      //   onTap: _onItemTapped,
      //   showSelectedLabels: false,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: selected_index == 0
      //           ? Image.asset('assets/icons/home_selected.png')
      //           : Image.asset('assets/icons/home.png'),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Image.asset('assets/icons/explore.png'),
      //       label: "Explore",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Image.asset('assets/icons/followers.png'),
      //       label: "Followers",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Image.asset('assets/icons/saved.png'),
      //       label: "Saved",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Image.asset('assets/icons/profile.png'),
      //       label: "Profile",
      //     ),
      //   ],
      // ),
    );
  }
}
