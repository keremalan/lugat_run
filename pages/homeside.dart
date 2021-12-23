import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:lugat_run/main.dart';
import '../widgets/buttons.dart';
import '../widgets/texts.dart';


class HomeSide extends StatefulWidget {
  const HomeSide({Key? key}) : super(key: key);

  @override
  _HomeSideState createState() => _HomeSideState();
}

class _HomeSideState extends State<HomeSide> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: HexColor('#FFFFFF'),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: HexColor('#D9D9D9'),
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LugatAppBar(),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => FeedbackPage()),
                  );
                },
                child: const HomeSideItem(
                    itemTitle: "Geri bildirim",
                    itemDesc: 'Yaşadığınız deneyimi zengileştirebilmemiz için bize ulaşın.',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => HelpPage()),
                  );
                },
                child: const HomeSideItem(
                    itemTitle: 'Yardım',
                    itemDesc: 'Sıkça sorular sorulara ve iletişim kanallarına göz atın.',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => ReportPage()),
                  );
                },
                child: const HomeSideItem(
                    itemTitle: 'İhlal bildirimi',
                    itemDesc: 'İhlallere acil müdahele bildirim kanalı.',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => RoadMapPage()),
                  );
                },
                child: const HomeSideItem(
                    itemTitle: 'Yol haritası',
                    itemDesc: 'Lügatın geleceğini inceleyin ve söz sahibi olun.',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Feedback Page

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: HexColor('#FFFFFF'),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: HexColor('#D9D9D9'),
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LugatAppBar(),
                  ],
                ),
              ),
              Title2Text('Feedback', '#000000'),
            ],
          ),
        ),
      ),
    );
  }
}

class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: HexColor('#FFFFFF'),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: HexColor('#D9D9D9'),
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LugatAppBar(),
                  ],
                ),
              ),
              Title2Text('HelpPage', '#000000'),
            ],
          ),
        ),
      ),
    );
  }
}

class ReportPage extends StatefulWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: HexColor('#FFFFFF'),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: HexColor('#D9D9D9'),
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LugatAppBar(),
                  ],
                ),
              ),
              Title2Text('Report Page', '#000000'),
            ],
          ),
        ),
      ),
    );
  }
}

class RoadMapPage extends StatefulWidget {
  const RoadMapPage({Key? key}) : super(key: key);

  @override
  _RoadMapPageState createState() => _RoadMapPageState();
}

class _RoadMapPageState extends State<RoadMapPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: HexColor('#FFFFFF'),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: HexColor('#D9D9D9'),
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LugatAppBar(),
                  ],
                ),
              ),
              Title2Text('RoadMap Page', '#000000'),
            ],
          ),
        ),
      ),
    );
  }
}



// Widgets

class HomeSideItem extends StatelessWidget {
  const HomeSideItem({Key? key,
    required this.itemTitle,
    required this.itemDesc,
  }) : super(key: key);
  final String itemTitle;
  final String itemDesc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 9, bottom: 9, left: 9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BodyText('$itemTitle', '#000000'),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Caption2Text('$itemDesc', '#909090'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class RegisterAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(600);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: HexColor("#E5E5E5"),
      elevation: 0,
      centerTitle: false,
      title: const Padding(
        padding: EdgeInsets.only(left: 0),
        child: Text(
          "Lügat",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}


class RegisterBodyHead extends StatelessWidget {
  const RegisterBodyHead({
    Key? key,
    required this.headlineText,
    required this.captionText,
  }) : super(key: key);

  final String headlineText;
  final String captionText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadlineText("$headlineText", "#000000"),
        Padding(
          padding: const EdgeInsets.only(top: 6, bottom: 27),
          child: Caption1Text("$captionText", "#4D4D4D"),
        ),
      ],
    );
  }
}

class RegisterHead extends StatelessWidget {
  const RegisterHead({
    Key? key,
    required this.titleText,
    required this.subheadText,
  }) : super(key: key);

  final String titleText;
  final String subheadText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Title1Text("$titleText", "#000000"),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18),
          child: SubheadText("$subheadText", "#000000"),
        ),
      ],
    );
  }
}
