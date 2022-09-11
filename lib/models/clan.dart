class Clan {
  String clanName;
  String clanPic;
  int leagueRanking;
  int experience;
  int wins;
  List<Map<String, String>> performances;
  List<String> activites;
  List<Map<String, String>> discussion;
  List<Map<String, String>> members;

  Clan({
    required this.clanName,
    required this.leagueRanking,
    required this.experience,
    required this.wins,
    required this.performances,
    required this.activites,
    required this.discussion,
    required this.members,
    required this.clanPic,
  });
}
