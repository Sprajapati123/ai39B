import 'package:ai39b/profile_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;

    PageController controller = PageController();

    return Scaffold(
      // appBar: AppBar(),
      body: PageView(
        onPageChanged: (index){setState(() {
            selectedIndex = index;
          });
        },
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 800,
            color: Colors.red,
            width: double.infinity,
            child: Text("1"),
          ),
          Container(
            height: 800,
            color: Colors.grey,
            width: double.infinity,
            child: Text("1"),
          ),
          Container(
            height: 800,
            color: Colors.green,
            width: double.infinity,
            child: Text("1"),
          ),
          ProfileScreen()

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index){
          setState(() {
            selectedIndex = index;
            controller.jumpToPage(index);
          });
        },
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        selectedIconTheme: IconThemeData(color: Colors.black),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: "Notifications"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile"),
        ],
      ),
      // floatingActionButton: ,
      // drawer: ,
      // bottomNavigationBar: ,
    );
  }
}
