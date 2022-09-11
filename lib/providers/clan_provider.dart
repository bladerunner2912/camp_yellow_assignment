import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../models/clan.dart';

class ClanProvider with ChangeNotifier {
  final Clan _clan = Clan(
      clanPic:
          'https://mmoculture.com/wp-content/uploads/2016/10/Soul-Reverse-Zero-image.jpg',
      clanName: 'Lorem Ipsum',
      experience: 2000,
      activites: [
        'Live Trading Championship',
        'Treasure Hunt',
        'Character Synopsis',
        'Exchange heros'
      ],
      discussion: [
        {'chatName': 'General Thread', 'messages': '15 Unread Message '},
        {
          'chatName': '[live]Anyone ethnu for trading league asdad asdadeadsa',
          'messages': '15 Unread Message '
        },
        {
          'chatName': '[live]Anyone ethnu for trading league asdad asdadeadsa',
          'messages': '15 Unread Message '
        },
      ],
      leagueRanking: 11,
      members: [
        {
          'memberPic':
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpd0GlVG-1v62miKh5BAKd6lkPSyuaJrprhw&usqp=CAU',
          'memberName': 'Lorem  Ipsum',
          'memberPosition': 'Clan Head',
        },
        {
          'memberPic':
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPO0lAaqweJovTtogSK_gWSChhWush-S0PZw&usqp=CAU',
          'memberName': 'Lorem  Ipsum',
          'memberPosition': 'Debating Sensi',
        },
        {
          'memberPic': '',
          'memberName': 'Lorem  Ipsum',
          'memberPosition': 'Clan Head',
        },
        {
          'memberPic': '',
          'memberName': 'Lorem  Ipsum',
          'memberPosition': 'Debating Sensi',
        },
        {
          'memberPic': '',
          'memberName': 'Lorem  Ipsum',
          'memberPosition': 'Clan Head',
        },
        {
          'memberPic': '',
          'memberName': 'Lorem  Ipsum',
          'memberPosition': 'Debating Sensi',
        },
        {
          'memberPic': '',
          'memberName': 'Lorem  Ipsum',
          'memberPosition': 'Clan Head',
        },
        {
          'memberPic': '',
          'memberName': 'Lorem  Ipsum',
          'memberPosition': 'Debating Sensi',
        },
        {
          'memberPic': '',
          'memberName': 'Lorem  Ipsum',
          'memberPosition': 'Clan Head',
        },
        {
          'memberPic': '',
          'memberName': 'Lorem  Ipsum',
          'memberPosition': 'Debating Sensi',
        },
        {
          'memberPic': '',
          'memberName': 'Lorem  Ipsum',
          'memberPosition': 'Clan Head',
        },
        {
          'memberPic': '',
          'memberName': 'Lorem  Ipsum',
          'memberPosition': 'Debating Sensi',
        },
        {
          'memberPic': '',
          'memberName': 'Lorem  Ipsum',
          'memberPosition': 'Clan Head',
        },
        {
          'memberPic': '',
          'memberName': 'Lorem  Ipsum',
          'memberPosition': 'Debating Sensi',
        },
      ],
      performances: [
        {
          'articlePic':
              'https://www.comingsoon.net/assets/uploads/2021/06/cowboy-bebop-e1623175068614.jpg',
          'articleHeading': 'Priya Has Got it All',
        },
        {
          'articlePic':
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk8_eLmopVugd57Tkg0NbzwfUKAci0bcJ3Rw&usqp=CAU',
          'articleHeading': 'Priya is making the moves',
        },
        {
          'articlePic':
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0uuCoO96ofr0uUsnS8TTcvViRN1dTMwwN7w&usqp=CAU',
          'articleHeading': 'The accesion of Saul Goodman',
        },
      ],
      wins: 3);

  Clan get clan {
    return _clan;
  }
}
