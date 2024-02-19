// ignore_for_file: use_key_in_widget_constructors

//packages
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:responsiveness/updater.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = './home.dart';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    int playing = -1;

    //lists
    final filter = [
      'Music',
      'Podcasts & shows',
    ];
    final playlists = [
      'Liked Songs',
      'dead mans music',
      'AUSTIN',
      'Amira',
      '3awdet Eldab3',
      'Eldab3',
    ];
    final imgs = [
      './assets/1.jpeg',
      './assets/2.jpeg',
      './assets/3.jpeg',
      './assets/4.jpeg',
      './assets/5.jpeg',
      './assets/6.jpeg',
    ];
    final imgs2 = [
      './assets/21.jpeg',
      './assets/22.jpeg',
      './assets/last.jpg',
    ];
    final imgs3 = [
      './assets/31.jpeg',
      './assets/32.jpeg',
      './assets/last.jpg',
    ];
    final minitxt = [
      'Eldab3, BTS, Jung Kook, Latto, Essam Sasa',
      'Eldab3, Wegz, Ash, Afroto, Marwan Moussa',
      'Eldab3, Wegz, Ash, Afroto, Marwan Moussa',
    ];
    final minitxt2 = [
      'EP • Afroto',
      'Album • Cairokee',
      'Album • Adele',
    ];
    final minititle = [
      'Belad',
      'Roma',
      'Bye',
    ];

    return Scaffold(
      extendBody: true,
      backgroundColor: const Color.fromARGB(255, 20, 20, 20),
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: mq.size.width * 0.05),
        child: Stack(
          children: <Widget>[
            ListView(
              padding: EdgeInsets.only(top: mq.size.height * 0.03),
              children: <Widget>[
                //header
                LayoutBuilder(
                  builder: (ctx, constraints) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: constraints.maxWidth * 0.45,
                          child: const FittedBox(
                            child: Text(
                              'Good evening',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Spotify',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: constraints.maxWidth * 0.355,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(
                                color: Colors.white,
                                size: constraints.maxWidth * 0.07,
                                FontAwesomeIcons.bell,
                              ),
                              Icon(
                                FontAwesomeIcons.clock,
                                color: Colors.white,
                                size: constraints.maxWidth * 0.07,
                              ),
                              Icon(
                                color: Colors.white,
                                Icons.settings_outlined,
                                size: constraints.maxWidth * 0.085,
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),

                SizedBox(height: mq.size.height * 0.035),

                //filterbar
                SizedBox(
                  height: mq.size.height * 0.05,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: mq.size.width * 0.05),
                        margin: EdgeInsets.only(right: mq.size.width * 0.0225),
                        decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(10000),
                        ),
                        child: Center(
                          child: Text(
                            filter[index],
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    },
                    itemCount: filter.length,
                  ),
                ),

                SizedBox(height: mq.size.height * 0.03),

                //playlists
                Consumer<Updater>(
                  builder: (context, updater, _) => SizedBox(
                    height: mq.size.height * 0.25,
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 3,
                        crossAxisSpacing: mq.size.width * 0.03,
                        mainAxisSpacing: mq.size.height * 0.0125,
                      ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => updater.setSelected(index),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(7),
                            child: Container(
                              color: Colors.white10,
                              child: Row(
                                children: <Widget>[
                                  Image.asset(
                                    imgs[index],
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width: mq.size.width * 0.025),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: mq.size.width * 0.225,
                                        child: Text(
                                          playlists[index],
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontFamily: 'Spotify',
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  updater.selected == index
                                      ? const SizedBox(
                                          child: Text(
                                            '...',
                                            style: TextStyle(
                                              fontSize: 5,
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        )
                                      : SizedBox(width: mq.size.width * 0.02),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: playlists.length,
                    ),
                  ),
                ),

                SizedBox(height: mq.size.height * 0.035),

                //header2
                LayoutBuilder(
                  builder: (ctx, constraints) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: constraints.maxWidth * 0.475,
                          child: const FittedBox(
                            child: Text(
                              'Popular albums',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Spotify',
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),

                SizedBox(height: mq.size.height * 0.02),

                //filter2
                SizedBox(
                  height: mq.size.height * 0.28,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: mq.size.width * 0.375,
                        margin: EdgeInsets.only(right: mq.size.width * 0.045),
                        child: Column(
                          children: <Widget>[
                            Image.asset(imgs3[index], fit: BoxFit.cover),
                            SizedBox(height: mq.size.height * 0.015),
                            SizedBox(
                              width: mq.size.width * 0.375,
                              child: Text(
                                maxLines: 2,
                                minititle[index],
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Spotify',
                                  color: Color.fromARGB(222, 255, 255, 255),
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(height: mq.size.height * 0.005),
                            SizedBox(
                              width: mq.size.width * 0.375,
                              child: Text(
                                maxLines: 2,
                                minitxt2[index],
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Spotify',
                                  color: Colors.white54,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: imgs3.length,
                  ),
                ),

                //header3
                LayoutBuilder(
                  builder: (ctx, constraints) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: constraints.maxWidth * 0.65,
                          child: const FittedBox(
                            child: Text(
                              'More of what you like',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Spotify',
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),

                SizedBox(height: mq.size.height * 0.02),

                //filter3
                SizedBox(
                  height: mq.size.height * 0.5,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: mq.size.width * 0.375,
                        margin: EdgeInsets.only(right: mq.size.width * 0.045),
                        child: Column(
                          children: <Widget>[
                            Image.asset(imgs2[index], fit: BoxFit.cover),
                            SizedBox(height: mq.size.height * 0.015),
                            SizedBox(
                              width: mq.size.width * 0.375,
                              child: Text(
                                maxLines: 2,
                                minitxt[index],
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Spotify',
                                  color: Colors.white54,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: imgs2.length,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
