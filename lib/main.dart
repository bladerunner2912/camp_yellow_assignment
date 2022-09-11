import 'package:camp_yellow/commonWidgets/achievment_section_widget.dart';
import 'package:camp_yellow/commonWidgets/clan_discussion_section.dart';
import 'package:camp_yellow/commonWidgets/clan_member_section.dart';
import 'package:camp_yellow/commonWidgets/live_clan_activity_section.dart';
import 'package:camp_yellow/commonWidgets/past_featured_performance_section_widget.dart';
import 'package:camp_yellow/providers/clan_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import 'models/clan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ClanProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Yellow Camp Assignment',
        theme: ThemeData(
          backgroundColor: Colors.black,
          primaryColor: Colors.amber,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  late Clan clan;
  double dW = 0;
  double dH = 0;
  double tS = 0;
  Widget build(BuildContext context) {
    clan = Provider.of<ClanProvider>(context).clan;
    dW = MediaQuery.of(context).size.width;
    dH = MediaQuery.of(context).size.height;
    tS = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: dH,
          color: Colors.black,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
                horizontal: dW * 0.035, vertical: dW * 0.025),
            child: Column(children: [
              Container(
                alignment: Alignment.bottomCenter,
                width: dW,
                height: dW * 0.93,
                margin: EdgeInsets.symmetric(vertical: dW * 0.1),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).primaryColor, width: 1.33),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        clan.clanPic,
                      ),
                    )),
                child: Container(
                  width: dW,
                  height: dW * 0.3,
                  // height: dW * 0.2,
                  color: Colors.black54,
                  padding: EdgeInsets.symmetric(
                      horizontal: dW * 0.025, vertical: dW * 0.06),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Clan name: ${clan.clanName}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20 * tS,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '${clan.members.length} members, 5 online',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20 * tS,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ]),
                ),
              ),
              AchievementSection(dW: dW, tS: tS, clan: clan),
              PastPerformanceSection(
                dW: dW,
                dH: dH,
                tS: tS,
                performances: clan.performances,
              ),
              LiveClanActivitySection(
                  dW: dW, tS: tS, activities: clan.activites),
              ClanDiscussionSection(
                dW: dW,
                tS: tS,
                discussions: clan.discussion,
              ),
              ClanMembersSection(
                dW: dW,
                tS: tS,
                members: clan.members,
              )
            ]),
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(canvasColor: Colors.black),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedIconTheme:
                IconThemeData(size: dW * 0.1, color: Colors.white),
            unselectedIconTheme: IconThemeData(
              color: Colors.white,
              size: dW * 0.1,
            ),
            currentIndex: 2,
            iconSize: dW * 0.1,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                  ),
                  // activeIcon: Icon(
                  //   Icons.home_filled,
                  //
                  // ),
                  label: 'Home'),
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.star,
                  ),
                  activeIcon: Icon(
                    Icons.home_filled,
                  ),
                  label: 'Star'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/svg/podium.svg',
                    width: dW * 0.1,
                    color: Colors.white,
                  ),
                  label: 'Podium'),
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.people,
                  ),
                  activeIcon: Icon(
                    Icons.home_filled,
                  ),
                  label: 'People'),
              BottomNavigationBarItem(
                  icon: CircleAvatar(
                    backgroundImage: NetworkImage(
                      clan.clanPic,
                    ),
                  ),
                  label: 'My Profile'),
            ]),
      ),
    );
  }
}
