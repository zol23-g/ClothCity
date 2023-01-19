import 'package:flutter/material.dart';
// import 'package:social_app/feeds/freelance.dart';
// import 'package:social_app/feeds/jobs.dart';
// import 'package:social_app/feeds/my_profile.dart';
// import 'package:social_app/feeds/search.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedItemIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 60,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.add_box,
            ),
            //backgroundColor: Colors.black87,
            elevation: 15,
            //color: Colors.black87,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
              )
            ],
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: <Widget>[
            buildNavBarItem(Icons.home, 0),
            buildNavBarItem(Icons.search, 1),
            buildNavBarItem(Icons.home, -1),
            buildNavBarItem(Icons.notifications, 2),
            buildNavBarItem(Icons.person, 3),
          ],
        ),
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
        onTap: () {
          setState(() {
            selectedItemIndex = index;
          });

          switch (index) {
            case 0:
              // {
              //   Navigator.of(context, rootNavigator: true)
              //       .push(MaterialPageRoute(
              //     builder: (context) => Jobs(),
              //   ));
              //}
              break;

            case 1:
              {

                // Navigator.of(context, rootNavigator: true)
                //     .push(MaterialPageRoute(
                //   builder: (context) => MyHomePage(),
                //
                // ));
              }
              break;
            case 3:
              {
                // Navigator.of(context, rootNavigator: true)
                //     .push(MaterialPageRoute(
                //   builder: (context) => MyProfilePage(),
                // ));
              }
              break;
            case -1:
              {
                // Navigator.of(context, rootNavigator: true)
                //     .push(MaterialPageRoute(
                //   builder: (context) => Freelance(),
                // ));
              }
              break;
          }
        },
        child: Container(
          width: MediaQuery.of(context).size.width / 5,
          height: 50,
          child: icon != null
              ? Icon(
                  icon,
                  size: 30,
                  color:
                      index == selectedItemIndex ? Colors.black : Colors.grey,
                )
              : Container(),
        ));
  }
}
