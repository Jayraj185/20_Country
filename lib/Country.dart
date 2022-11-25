import 'package:country/DataScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List sport = [
    "Hockey",
    "Football",
    "Kabaddi",
    "Archery",
    "Capoeira",
    "Hockey",
    "Table Tennis",
    "Cricket",
    "Football",
    "Cricket",
    "Football",
    "Rugby",
    "Hurling",
    "Golf",
    "Baseball",
    "Volleyball",
    "Buzkashi",
    "Rugby",
    "Horse Riding",
    "Football",
  ];
  List flag = [
    "assets/image/india.png",
    "assets/image/armenia.png",
    "assets/image/bangladesh.png",
    "assets/image/bhutan.png",
    "assets/image/brazil.png",
    "assets/image/pakistan.png",
    "assets/image/china.png",
    "assets/image/australia.png",
    "assets/image/netherlands.png",
    "assets/image/england.png",
    "assets/image/zimbabwe.png",
    "assets/image/new-zealand.png",
    "assets/image/ireland.png",
    "assets/image/scotland.png",
    "assets/image/united-states-of-america.png",
    "assets/image/sri-lanka.png",
    "assets/image/afghanistan.png",
    "assets/image/south-africa.png",
    "assets/image/namibia.png",
    "assets/image/united-arab-emirates.png",
  ];
  List c1 = [
    "India",
    "Armenia",
    "Bangladesh",
    "Bhutan",
    "Brazil",
    "Pakistan",
    "China",
    "Australia",
    "Netherlands",
    "England",
    "Zimbabwe",
    "New Zealand",
    "Ireland",
    "Scotland",
    "United States",
    "Sri Lanka",
    "Afghanistan",
    "South Africa",
    "Namibia",
    "UAE"
  ];
  List f1 = [
    "🇮🇳",
    "🇦🇲",
    "🇧🇩",
    "🇧🇹",
    "🇧🇷",
    "🇵🇰",
    "🇨🇳",
    "🇦🇺",
    "🇳🇱",
    "🏴󠁧󠁢󠁥󠁮󠁧󠁿",
    "🇿🇼",
    "🇳🇿",
    "🇮🇪",
    "🏴󠁧󠁢󠁳󠁣󠁴󠁿",
    "🇺🇸",
    "🇱🇰",
    "🇦🇫",
    "🇿🇦",
    "🇳🇦",
    "🇦🇪"
  ];
  List n1 = [
    "+91",
    "+374",
    "+880",
    "+975",
    "+55",
    "+92",
    "+86",
    "+61",
    "+31",
    "+44",
    "+263",
    "+64",
    "+353",
    "+44",
    "+1",
    "+94",
    "+93",
    "27",
    "+264",
    "+971"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("20 Country Name,  Flage & Code",),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: c1.asMap().entries.map((e) =>
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 90,
                            width: 50,
                            color: Colors.white10,
                            alignment: Alignment.center,
                            child: Text("•", style: TextStyle(fontSize: 70),),
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 130,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "${f1[e.key]}", style: TextStyle(fontSize: 35),),
                        ),
                        Expanded(
                          child: Container(
                            height: 90,
                            width: 240,
                            margin: EdgeInsets.all(3),
                            color: Colors.white10,
                            alignment: Alignment.centerLeft,
                            child: Text("   ${c1[e.key]}\n   ${n1[e.key]}",
                              style: TextStyle(color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>
                                Data(c1[e.key],flag[e.key],n1[e.key],sport[e.key]),));
                          },
                          child: Container(
                            height: 90,
                            width: 50,
                            color: Colors.white10,
                            alignment: Alignment.center,
                            child: Text(">", style: TextStyle(fontSize: 50),),
                          ),
                        ),
                      ],
                    ),
                ).toList(),
              ),
            )
        )
    );
  }
}
