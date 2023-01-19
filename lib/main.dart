import 'package:e_shop/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'NavBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      //home: const MyHomePage(title: 'City Cloth'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key, required this.title
  });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  PageController pageController = PageController();

  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.animateToPage(index,
        duration: Duration(
            milliseconds: 500
        ), curve: (Curves.easeIn));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: SideNav(),
        appBar: AppBar(
            title: Text(widget.title),
            centerTitle: true,
            backgroundColor: Colors.green),
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 8, bottom: 2),
              height: 60,


              //color: Colors.green.withOpacity(0.3),
              decoration: BoxDecoration(
               color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5),
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // Stack(
                  //   children: [
                  //     CircleAvatar(
                  //       radius: 25,
                  //       backgroundImage: AssetImage('assets/images/cc.jpg'),
                  //     ),
                  //     Positioned(
                  //         bottom: -4,
                  //         right: 0,
                  //         child: Text('City Cloth')
                  //     )
                  //   ],
                  // ),
                 // buildStoryAvatar('https://cdn-images.farfetch-contents.com/15/95/78/34/15957834_30928142_1000.jpg'),
                 //  buildStoryAvatar(
                 //      'https://www.slazzer.com/static/images/home-page/banner-transparent-bg.jpg'),
                  //buildStoryAvatar('https://scontent.fbjr1-1.fna.fbcdn.net/v/t39.30808-6/272073404_1101017787417522_632501998064920156_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=paA7ygPqbCoAX8fYLXs&_nc_ht=scontent.fbjr1-1.fna&oh=00_AT-cty2EsoPSuNbzTBqjOyOFd36lxhZtDENnv0EAxw7wcg&oe=6211D4AE'),
                  // buildStoryAvatar(
                  //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhSc4Fl5gK1zsMnRV4-vhib15RaxTH23NQ66SxBJR4CzdBfNJka-b_OeqlPB-WCxwHEvQ&usqp=CAU'),
                  // buildStoryAvatar(
                  //     'https://dvqlxo2m2q99q.cloudfront.net/000_clients/657152/file/657152pEn0xkRJ.jpg'),
                  // buildStoryAvatar(
                  //     'https://i2.wp.com/photos.smugmug.com/Africa/Ethiopia/Gonder/i-QcW4NQ4/0/XL/IMG_3483-XL.jpg'),
                  // buildStoryAvatar(
                  //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHFKUPfroxQSG-70_kiEo4OTsAqVNg-O-6DQ&usqp=CAU'),
                  // buildStoryAvatar(
                  //     'https://i.pinimg.com/170x/c2/b8/43/c2b84333359296a77f75960479558452--ethiopian-beauty-singer.jpg'),
                  // buildStoryAvatar(
                  //     'https://i.pinimg.com/170x/c2/b8/43/c2b84333359296a77f75960479558452--ethiopian-beauty-singer.jpg'),
                  // buildStoryAvatar(
                  //     'https://www.slazzer.com/static/images/home-page/banner-transparent-bg.jpg'),
                  // buildStoryAvatar(
                  //     'https://www.slazzer.com/static/images/home-page/banner-transparent-bg.jpg'),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                        fontSize: 20,
                      ),
                      foregroundColor: Colors.black,

                    ),
                    onPressed: (){},
                    child: const Text('Suits'),
                  ),

                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                        fontSize: 20,
                      ),
                      foregroundColor: Colors.black,

                    ),
                    onPressed: (){},
                    child: const Text('Shoes'),
                  ),

                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                        fontSize: 20,
                      ),
                      foregroundColor: Colors.black,

                    ),
                    onPressed: (){},
                    child: const Text('Shirts'),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                        fontSize: 20,
                      ),
                      foregroundColor: Colors.black,

                    ),
                    onPressed: (){},
                    child: const Text('Dress'),
                  ),TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                        fontSize: 20,
                      ),
                      foregroundColor: Colors.black,

                    ),
                    onPressed: (){},
                    child: const Text('Belts'),
                  ),

                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                        fontSize: 20,
                      ),
                      foregroundColor: Colors.black,

                    ),
                    onPressed: (){},
                    child: const Text('Watchs'),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                        fontSize: 20,
                      ),
                      foregroundColor: Colors.black,

                    ),
                    onPressed: (){},
                    child: const Text('Disabled'),
                  ),

                ],
              ),
            ),
            Container(
              height: 2,
              color: Colors.grey[300],
              margin: EdgeInsets.symmetric(horizontal: 30),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(top: 8),
                children: [
                  Container(
                    child: Text(''
                        'Welcome to Cloth City !',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                       fontSize: 30,
                        //fontFamily:
                      ),
                       textAlign: TextAlign.center,),
                  ),
                   //SizedBox(height: 5,),

                  // Container(
                  //   child: Lottie.asset('assets/welcome.json'),
                  // ),

                  Container(
                    child: Text(''
                        'The Best In The City'
                      ,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        //fontFamily:'AnticSlab-Regular',
                      color: Colors.grey),
                      textAlign: TextAlign.center,),
                  ),
                  SizedBox(height: 5,),
                  buildPostSection('https://cdn-images.farfetch-contents.com/15/95/78/34/15957834_30928142_1000.jpg','Jordan \n Air Jordan 1 Retro High "University Blue" sneakers'),
                  buildPostSection(
                      'https://cdn-images.farfetch-contents.com/18/82/90/67/18829067_40862973_1000.jpg','Elevent\nsingle-breasted tapered suit'),
                  buildPostSection(
                      'https://cdn-images.farfetch-contents.com/17/94/60/64/17946064_38005858_1000.jpg','Giambattista Valli\npleated A-line dress'),
                  buildPostSection(
                      'https://cdn-images.farfetch-contents.com/15/28/33/71/15283371_27721500_1000.jpg','FERRAGAMO\nGancini reversible belt'),


                  Container(
                    child: Text(''
                        'Buy best quality brands with Discount\n 15-25 % off',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          //fontFamily:
                          color: Colors.grey),
                      textAlign: TextAlign.center,),
                  ),
                  SizedBox(height: 5,),


                  // THE HORIZONTAL SCROLL

                  Container(

                    margin: EdgeInsets.only(top: 8, bottom: 10,),
                    height: 250,
                   // width: 400,
                    decoration: BoxDecoration(
                     // color: Colors.green.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,

                      children: [


                        // Stack(
                        //
                        //   children: [
                        //     CircleAvatar(
                        //       radius: 100,
                        //       backgroundImage: AssetImage('assets/images/cc.jpg'),
                        //     ),
                        //     SizedBox(width: 50,),
                        //     // Positioned(
                        //     //     bottom: -4,
                        //     //     right: 0,
                        //     //     child: Text('City Cloth')
                        //     // )
                        //   ],
                        // ),
                        // // buildStoryAvatar('https://cdn-images.farfetch-contents.com/15/95/78/34/15957834_30928142_1000.jpg'),
                        // //  buildStoryAvatar(
                        // //      'https://www.slazzer.com/static/images/home-page/banner-transparent-bg.jpg'),
                        // //buildStoryAvatar('https://scontent.fbjr1-1.fna.fbcdn.net/v/t39.30808-6/272073404_1101017787417522_632501998064920156_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=paA7ygPqbCoAX8fYLXs&_nc_ht=scontent.fbjr1-1.fna&oh=00_AT-cty2EsoPSuNbzTBqjOyOFd36lxhZtDENnv0EAxw7wcg&oe=6211D4AE'),
                        // // buildStoryAvatar(
                        // //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhSc4Fl5gK1zsMnRV4-vhib15RaxTH23NQ66SxBJR4CzdBfNJka-b_OeqlPB-WCxwHEvQ&usqp=CAU'),
                        // // buildStoryAvatar(
                        // //     'https://dvqlxo2m2q99q.cloudfront.net/000_clients/657152/file/657152pEn0xkRJ.jpg'),
                        // // buildStoryAvatar(
                        // //     'https://i2.wp.com/photos.smugmug.com/Africa/Ethiopia/Gonder/i-QcW4NQ4/0/XL/IMG_3483-XL.jpg'),
                        // // buildStoryAvatar(
                        // //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHFKUPfroxQSG-70_kiEo4OTsAqVNg-O-6DQ&usqp=CAU'),
                        // // buildStoryAvatar(
                        // //     'https://i.pinimg.com/170x/c2/b8/43/c2b84333359296a77f75960479558452--ethiopian-beauty-singer.jpg'),
                        // // buildStoryAvatar(
                        // //     'https://i.pinimg.com/170x/c2/b8/43/c2b84333359296a77f75960479558452--ethiopian-beauty-singer.jpg'),
                        // // buildStoryAvatar(
                        // //     'https://www.slazzer.com/static/images/home-page/banner-transparent-bg.jpg'),
                        // // buildStoryAvatar(
                        // //     'https://www.slazzer.com/static/images/home-page/banner-transparent-bg.jpg'),
                        // SizedBox(width: 50,),


                        buildPostSection2('https://cdn-images.farfetch-contents.com/18/88/80/24/18888024_41394141_1000.jpg',''),
                        SizedBox(width: 15,),
                        buildPostSection2(
                            'https://cdn-images.farfetch-contents.com/18/88/80/24/18888024_41394141_1000.jpg','My vibe'),
                        SizedBox(width: 15,),
                        buildPostSection2(
                            'https://cdn-images.farfetch-contents.com/18/88/80/24/18888024_41394141_1000.jpg','My vibe'),
                        SizedBox(width: 15,),
                        buildPostSection2(
                            'https://cdn-images.farfetch-contents.com/18/88/80/24/18888024_41394141_1000.jpg','My vibe'),

                      ],
                    ),
                  ),





                  buildPostSection(
                      'https://cdn-images.farfetch-contents.com/18/88/80/24/18888024_41394141_1000.jpg','Rolex\n1995 pre-owned Cosmograph Daytona 40mm'),
                  buildPostSection(
                      'https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c2hvZXN8ZW58MHx8MHx8&w=1000&q=80','Vans Authentic Off The Wall Womens Size 7 Shoes Red White Low Skater Sneakers'),
                  buildPostSection('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjOxTlINthcrCg2KTau-1Eq5ZMe5Vrx3TSAERwuBiKjohaPHTiSpPoto-rSlqPrSbor-I&usqp=CAU', 'Boom!'),
                  buildPostSection('', ''),


                ],


              ),
            ),


          ],
        ),
      ),
    );
  }

  Container buildStoryAvatar(String url) {
    return Container(
      margin: EdgeInsets.only(left: 18),
      height: 60,
      width: 60,
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.green
      ),
      child: CircleAvatar(
        radius: 18,
        backgroundImage: NetworkImage(url),

      ),

    );
  }



  Container buildPostSection(String? urlPost, String? caption) {
    if(urlPost!=null && caption!=null) {


      return Container(
        margin: EdgeInsets.only(bottom: 8),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.green.withOpacity(0.2),
          borderRadius: BorderRadius.circular(30),
        ),


        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
//          buildPostFirstRow('https://www.slazzer.com/static/images/home-page/banner-transparent-bg.jpg'),
            buildPostFirstRow(urlPost),

            SizedBox(
              height: 10,
            ),


            Text(
              '$caption',
              style: TextStyle(fontSize: 18),
            ),

            SizedBox(
              height: 15,
            ),

            buildPostPicture(urlPost),

            SizedBox(
              height: 5,
            ),
            Text(
              '450 ETB',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800]),
            ),

            SizedBox(
              height: 8,
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Positioned(
            //       bottom: 10,
            //       right: 170,
            //       child: TextButton.icon(
            //         // <-- TextButton
            //         onPressed: () {},
            //         icon: Icon(
            //           Icons.favorite_outline,
            //           size: 24.0,
            //         ),
            //         label: Text('Like'),
            //       ),
            //     ),
            //     Positioned(
            //       bottom: 10,
            //       right: 120,
            //       child: TextButton.icon(
            //         // <-- TextButton
            //         onPressed: () {},
            //         icon: Icon(
            //           Icons.comment,
            //           size: 24.0,
            //         ),
            //
            //         label: Text('Comment'),
            //       ),
            //     ),
            //
            //     Positioned(
            //       bottom: 10,
            //       right: 70,
            //       child: TextButton.icon(
            //         // <-- TextButton
            //
            //         onPressed: () {},
            //         icon: Icon(
            //           Icons.send_rounded,
            //           size: 24.0,
            //         ),
            //         label: Text('share'),
            //       ),
            //     ),
            //     // Positioned(
            //     //     bottom: 10,
            //     //     right: 20,
            //     //     child: IconButton(icon:Icon(Icons.bookmark_border,size: 25,),
            //     //       onPressed: (
            //     //
            //     //           ){
            //     //         print('You Clicked Saved !');
            //     //       },
            //     //
            //     //       color: Colors.black87.withOpacity(0.9),
            //     //       //onPressed:(){},
            //     //     )
            //     // ),
            //   ],
            // ),

          ],

        ),


      );
    }else{
      return Container(child: Text('$caption'));

    }

  }



  Container buildPostSection2(String? urlPost, String? caption) {
    if(urlPost!=null && caption!=null) {


      return Container(
        margin: EdgeInsets.only(bottom: 8),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.green.withOpacity(0.2),
          borderRadius: BorderRadius.circular(30),
        ),


        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
//          buildPostFirstRow('https://www.slazzer.com/static/images/home-page/banner-transparent-bg.jpg'),
            buildPostFirstRow(urlPost),

            SizedBox(
              height: 10,
            ),


            Text(
              '$caption',
              style: TextStyle(fontSize: 18),
            ),

            SizedBox(
              height: 15,
            ),

            buildPostPicture2(urlPost),
            //
            // SizedBox(
            //   height: 5,
            // ),
            Text(
              '6250 ETB',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800]),
            ),

            // SizedBox(
            //   height: 8,
            // ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Positioned(
            //       bottom: 10,
            //       right: 170,
            //       child: TextButton.icon(
            //         // <-- TextButton
            //         onPressed: () {},
            //         icon: Icon(
            //           Icons.favorite_outline,
            //           size: 24.0,
            //         ),
            //         label: Text('Like'),
            //       ),
            //     ),
            //     Positioned(
            //       bottom: 10,
            //       right: 120,
            //       child: TextButton.icon(
            //         // <-- TextButton
            //         onPressed: () {},
            //         icon: Icon(
            //           Icons.comment,
            //           size: 24.0,
            //         ),
            //
            //         label: Text('Comment'),
            //       ),
            //     ),
            //
            //     Positioned(
            //       bottom: 10,
            //       right: 70,
            //       child: TextButton.icon(
            //         // <-- TextButton
            //
            //         onPressed: () {},
            //         icon: Icon(
            //           Icons.send_rounded,
            //           size: 24.0,
            //         ),
            //         label: Text('share'),
            //       ),
            //     ),
            //     // Positioned(
            //     //     bottom: 10,
            //     //     right: 20,
            //     //     child: IconButton(icon:Icon(Icons.bookmark_border,size: 25,),
            //     //       onPressed: (
            //     //
            //     //           ){
            //     //         print('You Clicked Saved !');
            //     //       },
            //     //
            //     //       color: Colors.black87.withOpacity(0.9),
            //     //       //onPressed:(){},
            //     //     )
            //     // ),
            //   ],
            // ),

          ],

        ),


      );
    }else{
      return Container(child: Text('$caption'));

    }

  }







  Row buildPostFirstRow(String urlProfilePhoto) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () {
              //   runApp(Profile());
              //   Navigator.of(context).push(MaterialPageRoute(
              //       builder: (BuildContext context) =>
              //           ProfilePage(url: urlProfilePhoto)));
              //
      },
              child: Hero(
                tag: urlProfilePhoto,
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(urlProfilePhoto),
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "City Cloth",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "The best in the city",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500]),
                ),
              ],
            )
          ],
        ),
        Icon(Icons.more_vert)
      ],
    );
  }


  Stack buildPostPicture(String urlPost) {

    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery
              .of(context)
              .size
              .width - 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 20,
                  offset: Offset(0, 10),
                ),
              ],
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(urlPost))),
        ),


      ],
    );

  }



  Stack buildPostPicture2(String urlPost) {

    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery
              .of(context)
              .size
              .width - 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.red.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 20,
                  offset: Offset(0, 10),
                ),
              ],
              image: DecorationImage(
                  //fit: BoxFit.cover, image: NetworkImage(urlPost))),
                  fit: BoxFit.cover, image: NetworkImage(urlPost))),
        ),


      ],
    );

  }





}
