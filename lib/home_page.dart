import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<List> radioLogos = [
    ['station_1.jpg', 'Coast Love Music', 'Accra'],
    ['station_2.jpg', '947 Ultimate', 'Accra'],
    ['station_3.jpeg', 'RCM.13', 'Tamale'],
    ['station_4.jpeg', 'Peace FM', 'Accra'],
    ['station_5.png', 'Best FM', 'Kumasi'],
    ['station_6.png', 'Jamaica FM', 'Kingston'],
    ['station_7.png', 'J shock FM', 'Lagos']
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 5.7,
            height: MediaQuery.of(context).size.height,
            color: Theme.of(context).cardColor,
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 16),
            child: ListView(
              shrinkWrap: true,
              children: [
                TextField(
                  style: Theme.of(context).textTheme.bodyText1,
                  textInputAction: TextInputAction.send,
                  keyboardType: TextInputType.text,
                  maxLines: 1,
                  enableInteractiveSelection: true,
                  decoration: InputDecoration(
                      labelText: 'Search',
                      alignLabelWithHint: true,
                      hintStyle:
                          Theme.of(context).inputDecorationTheme.hintStyle,
                      contentPadding: EdgeInsets.all(20.0),
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(222, 222, 222, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(222, 222, 222, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      disabledBorder:
                          Theme.of(context).inputDecorationTheme.disabledBorder,
                      errorBorder:
                          Theme.of(context).inputDecorationTheme.errorBorder,
                      focusedErrorBorder: Theme.of(context)
                          .inputDecorationTheme
                          .focusedErrorBorder,
                      fillColor:
                          Theme.of(context).inputDecorationTheme.fillColor,
                      filled: true,
                      labelStyle: Theme.of(context)
                          .inputDecorationTheme
                          .labelStyle
                          .copyWith(color: Color.fromRGBO(163, 163, 163, 1)),
                      errorStyle: Theme.of(context)
                          .textTheme
                          .bodyText2
                          .copyWith(color: Colors.red),
                      suffixIcon: Icon(
                        Icons.search,
                      )),
                ),
                SizedBox(height: 30),
                Text(
                  'Music',
                  textAlign: TextAlign.left,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Color.fromRGBO(163, 163, 163, 1)),
                ),
                SizedBox(height: 15),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    LineAwesomeIcons.music,
                    color: Theme.of(context).textTheme.bodyText1.color,
                  ),
                  title: Text(
                    'Songs',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                SizedBox(height: 15),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.album,
                    color: Theme.of(context).textTheme.bodyText1.color,
                  ),
                  title: Text(
                    'Albums',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    LineAwesomeIcons.microphone,
                    color: Theme.of(context).textTheme.bodyText1.color,
                  ),
                  title: Text(
                    'Artists',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                SizedBox(height: 15),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Zocial.podcast,
                    color: Theme.of(context).textTheme.bodyText1.color,
                  ),
                  title: Text(
                    'Podcasts',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                SizedBox(height: 15),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Entypo.radio,
                    color: Theme.of(context).textTheme.bodyText1.color,
                  ),
                  title: Text(
                    'Radio',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                SizedBox(height: 15),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.favorite_border,
                    color: Theme.of(context).textTheme.bodyText1.color,
                  ),
                  title: Text(
                    'Favourite',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                SizedBox(height: 35),
                Text(
                  'Your Playlists',
                  textAlign: TextAlign.left,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Color.fromRGBO(163, 163, 163, 1)),
                ),
                SizedBox(height: 25),
                Text(
                  'Unplugged',
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                SizedBox(height: 25),
                Text(
                  'Best of M.anifest',
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                SizedBox(height: 25),
                Text(
                  'Best of Meek Mill',
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: OutlineButton.icon(
                      padding: EdgeInsets.only(top: 16, bottom: 16),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(47, 124, 247, 1), width: 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {},
                      icon: Icon(Icons.add,
                          color: Color.fromRGBO(47, 124, 247, 1)),
                      label: Text(
                        'Create New',
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Color.fromRGBO(47, 124, 247, 1)),
                      )),
                ),
                SizedBox(height: 35),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    LineAwesomeIcons.cog,
                    color: Theme.of(context).textTheme.bodyText1.color,
                  ),
                  title: Text(
                    'Preference',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: ListView(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, right: 40, top: 40),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Material(
                            elevation: 1,
                            shadowColor:
                                Theme.of(context).scaffoldBackgroundColor,
                            borderRadius: BorderRadius.circular(35),
                            child: AnimatedContainer(
                              width: MediaQuery.of(context).size.width / 3,
                              height: 200,
                              curve: Curves.easeIn,
                              duration: Duration(milliseconds: 500),
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(35),
                                  image: DecorationImage(
                                      image: ExactAssetImage(
                                          'assets/feel_music.png'),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Material(
                          elevation: 2,
                          shadowColor:
                              Theme.of(context).scaffoldBackgroundColor,
                          borderRadius: BorderRadius.circular(35),
                          child: AnimatedContainer(
                            width: MediaQuery.of(context).size.width / 4,
                            height: 200,
                            curve: Curves.easeIn,
                            duration: Duration(milliseconds: 500),
                            decoration: BoxDecoration(
                                color: Theme.of(context).cardColor,
                                borderRadius: BorderRadius.circular(35)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            image: DecorationImage(
                                                image: ExactAssetImage(
                                                    'assets/person_1.jpg'),
                                                fit: BoxFit.cover))),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                              4 -
                                          120,
                                      child: ListTile(
                                        title: Text(
                                          'Etornam Sunu',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              .copyWith(
                                                  fontWeight: FontWeight.w500),
                                        ),
                                        subtitle: Text(
                                          'Premium',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2
                                              .copyWith(
                                                  color: Color.fromRGBO(
                                                      105, 73, 199, 1)),
                                        ),
                                        trailing: Icon(
                                          Icons.more_vert,
                                          color: Theme.of(context)
                                              .textTheme
                                              .subtitle2
                                              .color,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Wrap(
                                  children: [
                                    SizedBox(
                                      width: 130,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                          text: '120 ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                          children: [
                                            TextSpan(
                                                text: 'Tracks',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2
                                                    .copyWith(
                                                        color: Colors.grey))
                                          ]),
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                          text: '1.5K ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                          children: [
                                            TextSpan(
                                                text: 'Followers',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2
                                                    .copyWith(
                                                        color: Colors.grey))
                                          ]),
                                    )
                                  ],
                                ),
                                SizedBox(height: 20),
                                Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 130,
                                    ),
                                    Material(
                                      elevation: 2,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(90),
                                          side: BorderSide(
                                              width: 2, color: Colors.white)),
                                      color: Color.fromRGBO(251, 228, 206, 1),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Image.asset('assets/fire.png',
                                            width: 25, height: 25),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Material(
                                      elevation: 2,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(90),
                                          side: BorderSide(
                                              width: 2, color: Colors.white)),
                                      color: Color.fromRGBO(212, 207, 148, 1),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Image.asset('assets/medal.png',
                                            width: 25, height: 25),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Material(
                                      elevation: 2,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(90),
                                          side: BorderSide(
                                              width: 2, color: Colors.white)),
                                      color: Color.fromRGBO(249, 217, 227, 1),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Image.asset(
                                            'assets/guarantee.png',
                                            width: 25,
                                            height: 25),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 24.0, top: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Popular',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 24.0),
                                  child: Wrap(
                                    children: [
                                      SizedBox(
                                        width: 35,
                                        height: 35,
                                        child: OutlineButton(
                                          onPressed: () {},
                                          child: Icon(
                                            Icons.arrow_back_ios,
                                            size: 15,
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(6)),
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  222, 222, 222, 1)),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      SizedBox(
                                        width: 35,
                                        height: 35,
                                        child: OutlineButton(
                                          onPressed: () {},
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            size: 15,
                                            color:
                                                Color.fromRGBO(117, 87, 203, 1),
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(6)),
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  117, 87, 203, 1)),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 15),
                            Container(
                              height: 250,
                              child: ListView.builder(
                                  itemCount: radioLogos.length,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => SizedBox(
                                        width: 200,
                                        height: 200,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Stack(
                                              children: [
                                                Container(
                                                  width: 190,
                                                  height: 200,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                      image: DecorationImage(
                                                          image: ExactAssetImage(
                                                              'assets/${radioLogos[index][0]}'),
                                                          fit: BoxFit.cover)),
                                                ),
                                                Positioned(
                                                    top: 20,
                                                    right: 20,
                                                    child: Material(
                                                      color: Theme.of(context)
                                                          .scaffoldBackgroundColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5.0),
                                                        child: Wrap(
                                                          crossAxisAlignment:
                                                              WrapCrossAlignment
                                                                  .center,
                                                          alignment:
                                                              WrapAlignment
                                                                  .center,
                                                          children: [
                                                            Icon(
                                                              Icons.star,
                                                              size: 15,
                                                            ),
                                                            SizedBox(
                                                              width: 6,
                                                            ),
                                                            Text(
                                                                '4.${Random().nextInt(10)}')
                                                          ],
                                                        ),
                                                      ),
                                                    ))
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              radioLogos[index][1],
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1,
                                            ),
                                            Text(
                                              radioLogos[index][2],
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  .copyWith(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.normal),
                                            )
                                          ],
                                        ),
                                      )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24.0, right: 40, bottom: 50),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35)),
                          elevation: 2,
                          shadowColor:
                              Theme.of(context).scaffoldBackgroundColor,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Local Radio',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                          Text(
                                            'Tracks popular on Radio Furti 88.9 FM right now',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2
                                                .copyWith(
                                                    color: Colors.grey,
                                                    fontWeight:
                                                        FontWeight.normal),
                                          )
                                        ],
                                      ),
                                      OutlineButton(
                                        padding:
                                            EdgeInsets.fromLTRB(20, 16, 20, 16),
                                        borderSide: BorderSide(
                                            width: 1,
                                            color: Color.fromRGBO(
                                                222, 222, 222, 1)),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(6)),
                                        onPressed: () {},
                                        child: Row(
                                          children: [
                                            Text(
                                              'See All',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2,
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              size: 15,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 15),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Wrap(
                                              children: [
                                                Container(
                                                  width: 60,
                                                  height: 60,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      image: DecorationImage(
                                                          image: ExactAssetImage(
                                                              'assets/mani.jpeg'),
                                                          fit: BoxFit.cover)),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      'We No Dey Hear FT Kelvyn Boy',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText1
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                    ),
                                                    Text(
                                                      'M.ANIFEST',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText2
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              color:
                                                                  Colors.grey),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Wrap(
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.center,
                                              alignment:
                                                  WrapAlignment.spaceBetween,
                                              children: [
                                                Text('4:34',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subtitle2
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.grey)),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Icon(
                                                  Icons.star_border,
                                                  color: Colors.amberAccent,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Icon(
                                                  Icons.play_circle_filled,
                                                  color: Color.fromRGBO(
                                                      105, 73, 199, 1),
                                                ),
                                                SizedBox(
                                                  width: 30,
                                                ),
                                                Icon(
                                                  Icons.more_vert,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 15),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Wrap(
                                              children: [
                                                Container(
                                                  width: 60,
                                                  height: 60,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      image: DecorationImage(
                                                          image: ExactAssetImage(
                                                              'assets/sark.jpeg'),
                                                          fit: BoxFit.cover)),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      'Advice',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText1
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                    ),
                                                    Text(
                                                      'SAKORDIE',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText2
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              color:
                                                                  Colors.grey),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Wrap(
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.center,
                                              alignment:
                                                  WrapAlignment.spaceBetween,
                                              children: [
                                                Text('3:24',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subtitle2
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.grey)),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Icon(
                                                  Icons.star_border,
                                                  color: Colors.amberAccent,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Icon(
                                                  Icons.play_circle_filled,
                                                  color: Color.fromRGBO(
                                                      105, 73, 199, 1),
                                                ),
                                                SizedBox(
                                                  width: 30,
                                                ),
                                                Icon(
                                                  Icons.more_vert,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 15),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Wrap(
                                              children: [
                                                Container(
                                                  width: 60,
                                                  height: 60,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      image: DecorationImage(
                                                          image: ExactAssetImage(
                                                              'assets/meek.jpg'),
                                                          fit: BoxFit.cover)),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      'Litty ft Tory Lanez',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText1
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                    ),
                                                    Text(
                                                      'MEEK MILL',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText2
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              color:
                                                                  Colors.grey),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Wrap(
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.center,
                                              alignment:
                                                  WrapAlignment.spaceBetween,
                                              children: [
                                                Text('6:32',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subtitle2
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.grey)),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Icon(
                                                  Icons.star_border,
                                                  color: Colors.amberAccent,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Icon(
                                                  Icons.play_circle_filled,
                                                  color: Color.fromRGBO(
                                                      105, 73, 199, 1),
                                                ),
                                                SizedBox(
                                                  width: 30,
                                                ),
                                                Icon(
                                                  Icons.more_vert,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 15),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Wrap(
                                              children: [
                                                Container(
                                                  width: 60,
                                                  height: 60,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      image: DecorationImage(
                                                          image: ExactAssetImage(
                                                              'assets/ma.jpg'),
                                                          fit: BoxFit.cover)),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      'Big',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText1
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                    ),
                                                    Text(
                                                      'YOUNG MA',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText2
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              color:
                                                                  Colors.grey),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Wrap(
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.center,
                                              alignment:
                                                  WrapAlignment.spaceBetween,
                                              children: [
                                                Text('4:03',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subtitle2
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.grey)),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Icon(
                                                  Icons.star_border,
                                                  color: Colors.amberAccent,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Icon(
                                                  Icons.play_circle_filled,
                                                  color: Color.fromRGBO(
                                                      105, 73, 199, 1),
                                                ),
                                                SizedBox(
                                                  width: 30,
                                                ),
                                                Icon(
                                                  Icons.more_vert,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 15),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Wrap(
                                              children: [
                                                Container(
                                                  width: 60,
                                                  height: 60,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      image: DecorationImage(
                                                          image: ExactAssetImage(
                                                              'assets/future.jpg'),
                                                          fit: BoxFit.cover)),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      'Trapped In The Sun',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText1
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                    ),
                                                    Text(
                                                      'FUTURE',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText2
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              color:
                                                                  Colors.grey),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Wrap(
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.center,
                                              alignment:
                                                  WrapAlignment.spaceBetween,
                                              children: [
                                                Text('9:52',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subtitle2
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.grey)),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Icon(
                                                  Icons.star_border,
                                                  color: Colors.amberAccent,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Icon(
                                                  Icons.play_circle_filled,
                                                  color: Color.fromRGBO(
                                                      105, 73, 199, 1),
                                                ),
                                                SizedBox(
                                                  width: 30,
                                                ),
                                                Icon(
                                                  Icons.more_vert,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 15),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          shadowColor:
                              Theme.of(context).scaffoldBackgroundColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35)),
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Recommended for  You',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 15),
                                Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 25),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 110,
                                            height: 170,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .scaffoldBackgroundColor,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 55,
                                                  height: 55,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              90),
                                                      image: DecorationImage(
                                                          image: ExactAssetImage(
                                                              'assets/icon_8.png'),
                                                          fit: BoxFit.contain)),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text('Music',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText1),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 110,
                                            height: 170,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .scaffoldBackgroundColor,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 55,
                                                  height: 55,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              90),
                                                      image: DecorationImage(
                                                          image: ExactAssetImage(
                                                              'assets/icon_7.png'),
                                                          fit: BoxFit.contain)),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text('Sports',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText1),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 110,
                                            height: 170,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .scaffoldBackgroundColor,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 55,
                                                  height: 55,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              90),
                                                      image: DecorationImage(
                                                          image: ExactAssetImage(
                                                              'assets/icon_6.png'),
                                                          fit: BoxFit.contain)),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text('News',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText1),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 110,
                                            height: 170,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .scaffoldBackgroundColor,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 55,
                                                  height: 55,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              90),
                                                      image: DecorationImage(
                                                          image: ExactAssetImage(
                                                              'assets/icon_4.png'),
                                                          fit: BoxFit.contain)),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text('Movies',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText1),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 25),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 110,
                                            height: 170,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .scaffoldBackgroundColor,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 55,
                                                  height: 55,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              90),
                                                      image: DecorationImage(
                                                          image: ExactAssetImage(
                                                              'assets/icon_2.png'),
                                                          fit: BoxFit.contain)),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text('Chef',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText1),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 110,
                                            height: 170,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .scaffoldBackgroundColor,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 55,
                                                  height: 55,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              90),
                                                      image: DecorationImage(
                                                          image: ExactAssetImage(
                                                              'assets/icon_5.png'),
                                                          fit: BoxFit.contain)),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text('Podcasts',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText1),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 110,
                                            height: 170,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .scaffoldBackgroundColor,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 55,
                                                  height: 55,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              90),
                                                      image: DecorationImage(
                                                          image: ExactAssetImage(
                                                              'assets/icon_3.png'),
                                                          fit: BoxFit.contain)),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text('Charity',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText1),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 110,
                                            height: 170,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .scaffoldBackgroundColor,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 55,
                                                  height: 55,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              90),
                                                      image: DecorationImage(
                                                          image: ExactAssetImage(
                                                              'assets/icon_1.png'),
                                                          fit: BoxFit.contain)),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text('BBC',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText1),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 25),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
