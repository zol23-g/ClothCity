
 import 'package:flutter/material.dart';


class SideNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Material(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(height: 50,),
            Expanded(
              child: UserAccountsDrawerHeader(

                accountName: Text(
                  '',
                  style: TextStyle(
                      letterSpacing: 5.0,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.green
                  ),
                ),
                accountEmail: Text('',style: TextStyle(color: Colors.green),
                ),

                decoration: BoxDecoration(
                  color: Colors.white10,
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/cc.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // Container(
            //   child: Text(
            //     'City Cloth',
            //     style: TextStyle(
            //         letterSpacing: 5.0,
            //         fontSize: 30,
            //         fontWeight: FontWeight.bold,
            //         color: Colors.green,
            //
            //     ),
            //
            //   ),
            //
            // ),
            Container(
              height: 2,
              color: Colors.green,
              margin: EdgeInsets.symmetric(horizontal: 10),
            ),

            // buildMenuItem (
            //   text: 'Favorite',
            //   icon: Icons.favorite,
            //   onClicked:() => selectedItem(context,0),
            // ),
            buildMenuItem(
                text: 'Mens',
                icon: Icons.man,
                onClicked: () => selectedItem(context, 1)),
            // buildMenuItem(
            //     text: 'Share',
            //     icon: Icons.share,
            //     onClicked: () => selectedItem(context, 2)),
            buildMenuItem(
                text: 'Womens',
                icon: Icons.woman,
                onClicked: () => selectedItem(context, 3)),
            Divider(),

            // buildMenuItem(
            //     text: 'Jobs',
            //     icon: Icons.business_center,
            //     onClicked: () => selectedItem(context, 4)),
            // // buildMenuItem (
            // //   text: 'people',
            // //   icon: Icons.people,
            // //     onClicked: ()=>selectedItem(context,5)
            // // ),
            //
            // buildMenuItem(
            //     text: 'Freelance',
            //     icon: Icons.free_breakfast,
            //     onClicked: () => selectedItem(context, 6)),
            // buildMenuItem(
            //     text: 'Marketplaces',
            //     icon: Icons.shopping_basket,
            //     onClicked: () => selectedItem(context, 7)),
            // buildMenuItem(
            //     text: 'Affiliate',
            //     icon: Icons.monetization_on,
            //     onClicked: () => selectedItem(context, 8)),
            //
            // Divider(),

            buildMenuItem(
                text: 'Contact Us',
                icon: Icons.call,
                onClicked: () => selectedItem(context, 9)),
            buildMenuItem(
                text: 'About',
                icon: Icons.info,
                onClicked: () => selectedItem(context, 12)),
            buildMenuItem(
                text: 'General Settings',
                icon: Icons.settings,
                onClicked: () => selectedItem(context, 12)),
            buildMenuItem(
                text: 'Logout',
                icon: Icons.exit_to_app,
                onClicked: () => selectedItem(context, 10)),

            //         ListTile(
            //             leading: Icon(Icons.favorite),
            //             title: Text('Favorites'),
            //             onTap: () {
            //               Navigator.push(context, MaterialPageRoute(builder: (context)=>Jobs()),);
            //
            //             }
            //
            //           ),
            //
            //         ListTile(
            //           leading: Icon(Icons.people),
            //           title: Text('Friends'),
            //           onTap: () {
            //             Navigator.push(context, MaterialPageRoute(builder: (context)=>Marketplaces()),);
            //           }
            //
            //         ),
            //         ListTile(
            //           leading: Icon(Icons.share),
            //           title: Text('Share'),
            //           onTap: () =>print('Favorite'),
            //
            //         ),
            //         ListTile(
            //           leading: Icon(Icons.notifications),
            //           title: Text('Request'),
            //           onTap: () =>print('Favorite'),
            //           trailing: ClipOval(
            //             child: Container(
            //               color: Colors.redAccent[700],
            //               width: 20,
            //               height: 20,
            //               child: Center(
            //                 child: Text(
            //                     '23',
            //                   style: TextStyle(
            //                     color: Colors.white,
            //                     fontSize: 12,
            //                   ),
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ),
            //         Divider(
            //          // Separation Line
            //         ),
            //
            //         ListTile(
            //           leading: Icon(Icons.business_center),
            //           title: Text('Jobs'),
            //           onTap: () =>print('Favorite'),
            //
            //         ),
            //
            // ListTile(
            // leading: Icon(Icons.free_breakfast),
            // title: Text('Freelances'),
            // onTap: () =>print('Favorite'),
            // ),
            //
            //         ListTile(
            //           leading: Icon(Icons.shopping_basket),
            //           title: Text('Marketplaces'),
            //           onTap: () =>print('Favorite'),
            //         ),
            //
            //         ListTile(
            //           leading: Icon(Icons.monetization_on),
            //           title: Text('Affiliates'),
            //           onTap: () =>print('Favorite'),
            //         ),
            //
            //
            //         Divider(
            //
            //         ),
            //
            //         ListTile(
            //           leading: Icon(Icons.settings),
            //           title: Text('Settings'),
            //           onTap: () =>print('Favorite'),
            //
            //         ),
            //         ListTile(
            //           leading: Icon(Icons.description),
            //           title: Text('Policies'),
            //           onTap: () =>print('Favorite'),
            //
            //         ),
            //         Divider(
            //           //Separation line
            //         ),
            //         ListTile(
            //           leading: Icon(Icons.exit_to_app),
            //           title: Text('Logout'),
            //           onTap: () =>print('Favorite'),
            //
            //         ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    required VoidCallback onClicked,
  }) {
    final color = Colors.white;
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    switch (index) {

      case 9:
        // Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
        //   builder: (context) => Policies(),
        // ));
        break;

      case 10:
        // Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
        //   builder: (context) => Homepage(),
        // ));
        break;
      case 11:
        // Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
        //   builder: (context) => JobsFreelances(),
        // ));
        break;
      case 12:
        // Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
        //   builder: (context) => ChatPage(),
        // ));
        break;
    }
  }
}
