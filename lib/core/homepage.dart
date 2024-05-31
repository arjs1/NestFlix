import 'package:flutter/material.dart';
import 'package:nestflix_movie/pages/favouritepage/favourite_page.dart';
import 'package:nestflix_movie/pages/homescreen/home_screen.dart';
import 'package:nestflix_movie/pages/profilepage/profile_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _pages = [HomeScreen(), FavouritePage(), ProfilePage()];

  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _pages[_currentindex],
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          unselectedItemColor: Colors.white70,
          backgroundColor: Colors.grey[850],
          fixedColor: Colors.white,
          currentIndex: _currentindex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outlined),
              label: "Favourite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2),
              label: "Profile",
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
            // _onTap();
          },
        ),
      ),
    );
  }
}
