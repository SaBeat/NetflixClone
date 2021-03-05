import 'dart:core';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/list_item.dart';
import 'package:netflix_clone/slider_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NetflixApp(),
    );
  }
}

class NetflixApp extends StatefulWidget {
  @override
  _NetflixAppState createState() => _NetflixAppState();
}

class _NetflixAppState extends State<NetflixApp> {
  List<String> movieCarousselUrl = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRbSLCEqIGEAzHkwd7SWUpIuJ4knEYcBx-wxg&usqp=CAU",
    "https://uhdwallpapers.org/uploads/converted/19/09/21/joker-4k-poster-1600x900_666674-mm-90.jpg",
    "https://financerewind.com/wp-content/uploads/2020/07/cursed-season-2-netflix-renewal-status-1200x675.png",
    "https://miro.medium.com/max/2800/0*6dysw-Riawp4PO6u",
  ];
  List<String> movieTitle = [
    "Star Wars the Jedi Return",
    "JOKER",
    "Cursed",
    "Kimetsu no yaiba : Mugen Train"
  ];
  List<String> movieImageUrl = [
    "https://lumiere-a.akamaihd.net/v1/images/p_mulan2020_20204_b005decc.jpeg?region=0,0,540,810",
    "https://upload.wikimedia.org/wikipedia/en/2/21/Kimetsu_no_Yaiba_Mugen_Ressha_Hen_Poster.jpg",
    "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSa4t8Yz7dxTAWBZtbNhmpEYepiV_Yw8KMRf69NyjtPqbPm-LPr",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROKKn9ftbhxcRQf0NSSW4YfXPex6eyY95FrhEfU7OoTiDYRpky",
    "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTkZO-tgLmMFndFVdrFSetlssgOYf4M_i1kSfZ62vJRuBCtShRc",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Color(0xff212121),
        centerTitle: true,
        title: Text(
          "Netflix",
          style: TextStyle(
            fontSize: 22,
            color: Colors.red,
          ),
        ),
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: Icon(Icons.menu),
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              accountName: Text(
                'Sabit',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                'sabitsadiqli@gmail.com',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.local_movies_outlined),
              title: Text('Movie'),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.local_movies_outlined),
              title: Text('Movie'),
            ),ListTile(
              onTap: (){},
              leading: Icon(Icons.local_movies_outlined),
              title: Text('Movie'),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.local_movies_outlined),
              title: Text('Movie'),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.local_movies_outlined),
              title: Text('Movie'),
            ),

          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Recent Movie & Series",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              CarouselSlider(
                items: [
                  sliderItem(movieCarousselUrl[0], movieTitle[0]),
                  sliderItem(movieCarousselUrl[1], movieTitle[1]),
                  sliderItem(movieCarousselUrl[2], movieTitle[2]),
                  sliderItem(movieCarousselUrl[3], movieTitle[3]),
                ],
                options: CarouselOptions(
                  height: 280,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                ),
              ),
              Text(
                'Recomedation',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 360,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    listItem(movieImageUrl[0], "Mulan"),
                    listItem(movieImageUrl[1], "Demon Slyaer Infinite Train"),
                    listItem(movieImageUrl[2], "Ragnarok"),
                    listItem(movieImageUrl[3], "The Letter for the King"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            // ignore: deprecated_member_use
            title: Text("Home"),
            icon: Icon(Icons.home),
            backgroundColor: Color(0xff212121),
          ),
          BottomNavigationBarItem(
            // ignore: deprecated_member_use
            title: Text("Download"),
            icon: Icon(Icons.file_download),
            backgroundColor: Color(0xff212121),
          ),
          BottomNavigationBarItem(
            // ignore: deprecated_member_use
            title: Text("Playlist"),
            icon: Icon(Icons.playlist_play),
            backgroundColor: Color(0xff212121),
          ),
          BottomNavigationBarItem(
            // ignore: deprecated_member_use
            title: Text("Account"),
            icon: Icon(Icons.person),
            backgroundColor: Color(0xff212121),
          ),
        ],
      ),
    );
  }
}
