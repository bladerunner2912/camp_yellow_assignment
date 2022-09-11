import 'package:flutter/material.dart';

import '../models/clan.dart';
import 'custom_section_heading.dart';
import 'custom_divider_widget.dart';

class AchievementSection extends StatelessWidget {
  final double dW;
  final double tS;
  final Clan clan;

  const AchievementSection(
      {super.key, required this.dW, required this.tS, required this.clan});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: dW * 0.02),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomDivider(dW),
        SectionHeadings(
          heading: 'Achievements',
          tS: tS,
          dW: dW,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: dW * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Current League',
                    style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.w500,
                        fontSize: 24 * tS),
                  ),
                  Image.asset('assets/images/shield.png'),
                ],
              ),
              SizedBox(
                height: dW * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('League Ranking',
                      style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.w500,
                          fontSize: 24 * tS)),
                  Text(
                    '${clan.leagueRanking}th',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 36 * tS,
                        color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
              SizedBox(
                height: dW * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Experience',
                      style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.w500,
                          fontSize: 24 * tS)),
                  Text(
                    '${clan.experience}xp',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 28 * tS,
                        color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
              SizedBox(
                height: dW * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('# wins',
                      style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.w500,
                          fontSize: 24 * tS)),
                  Text(
                    '${clan.wins}',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 28 * tS,
                        color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: dW * 0.084,
        ),
      ]),
    );
  }
}

// SizedBox(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       // ignore: prefer_const_literals_to_create_immutables
//                       children: [
//                         Text(
//                           'Current League',
//                           style: TextStyle(
//                               color: Colors.pink,
//                               fontWeight: FontWeight.w500,
//                               fontSize: 24 * tS),
//                         ),
//                         SizedBox(
//                           height: dW * 0.12,
//                         ),
//                         Text(
//                           'League Ranking',
//                           style: TextStyle(
//                               color: Colors.pink,
//                               fontWeight: FontWeight.w500,
//                               fontSize: 24 * tS),
//                         ),
//                         SizedBox(
//                           height: dW * 0.12,
//                         ),
//                         Text(
//                           'Experience',
//                           style: TextStyle(
//                               color: Colors.pink,
//                               fontWeight: FontWeight.w500,
//                               fontSize: 24 * tS),
//                         ),
//                         SizedBox(
//                           height: dW * 0.12,
//                         ),
//                         Text(
//                           '# in world',
//                           style: TextStyle(
//                               color: Colors.pink,
//                               fontWeight: FontWeight.w500,
//                               fontSize: 24 * tS),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     // ignore: prefer_const_literals_to_create_immutables
//                     child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Image.asset('assets/images/shield.png'),
//                           SizedBox(
//                             height: dW * 0.12,
//                           ),
//                           Text(
//                             '11th',
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 32 * tS,
//                                 color: Theme.of(context).primaryColor),
//                           ),
//                           SizedBox(
//                             height: dW * 0.12,
//                           ),
//                           Text(
//                             '2000 xp',
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 26 * tS,
//                                 color: Theme.of(context).primaryColor),
//                           ),
//                           SizedBox(
//                             height: dW * 0.12,
//                           ),
//                           Text(
//                             '3',
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 26 * tS,
//                                 color: Theme.of(context).primaryColor),
//                           ),
//                         ]),
//                   )
