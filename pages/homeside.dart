import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:lugat_run/main.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import '../widgets/buttons.dart';
import '../widgets/texts.dart';

String feedbackSubject = '';
String feedbackMessage = '';


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
                height: 200,
                decoration: BoxDecoration(
                  color: HexColor("#E5E5E5"),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RegisterAppBar(),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: HomeSideHead(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 22, right: 34, bottom: 12, left: 34),
                child: Column(
                  children: [
                    RegisterBodyHead(headlineText: 'Deneyimlerinizi paylaşın', captionText: 'Hoşunuza giden deneyiminizi, karşılaştığınız hataları ya da eklenmesini istediğiniz özellikleri bize aktarabilirsiniz. Bu sayede deneyimlerinizi zenginleştirmeye devam edeceğiz.'),
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 34),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            labelText: 'Konu',
                            contentPadding: EdgeInsets.only(bottom: 8),
                            labelStyle: TextStyle(
                              color: HexColor("#999999"),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: HexColor("#D9D9D9"),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: HexColor("#000000"),
                              ),
                            ),
                          ),
                          onChanged: (value) {
                            print(value);
                            setState(() {
                              feedbackSubject = value;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            labelText: 'Mesaj',
                            contentPadding: EdgeInsets.only(bottom: 8),
                            labelStyle: TextStyle(
                              color: HexColor("#999999"),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: HexColor("#D9D9D9"),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: HexColor("#000000"),
                              ),
                            ),
                          ),
                          onChanged: (value) {
                            print(value);
                            setState(() {
                              feedbackMessage = value;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Center(
                          child: SizedBox(
                            width: 100,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                backgroundColor: HexColor("#000000"),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const FeedbackSuccessPage()),
                                );
                              },
                              child: Caption1Text("Gönder", "#FFFFFF"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FeedbackSuccessPage extends StatefulWidget {
  const FeedbackSuccessPage({Key? key}) : super(key: key);

  @override
  _FeedbackSuccessPageState createState() => _FeedbackSuccessPageState();
}

class _FeedbackSuccessPageState extends State<FeedbackSuccessPage> {
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
                height: 200,
                decoration: BoxDecoration(
                  color: HexColor("#E5E5E5"),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RegisterAppBar(),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: HomeSideHead(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 22, right: 34, bottom: 12, left: 34),
                child: Column(
                  children: [
                    RegisterBodyHead(headlineText: 'Geri bildiriminiz ekibimize ulaştı!', captionText: 'Topluluğumuzun gelişmesine katkı sağladığın için teşekkür ederiz. Bildiriminin bir kopyasını aşağıya bıraktık.'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BodyText("Konu", "#9D9D9D"),
                  ],
                ),
              ),
              Container(
                width: 358,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: HexColor("#D9D9D9"),
                      width: 1,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12, bottom: 8),
                        child: Flexible(
                          child: Text(
                            feedbackSubject,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 22, right: 34, left: 34),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BodyText("Mesaj", "#9D9D9D"),
                  ],
                ),
              ),
              Container(
                width: 358,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: HexColor("#D9D9D9"),
                      width: 1,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12, bottom: 8),
                          child: Text(
                            feedbackMessage,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 22),
                child: Center(
                  child: SizedBox(
                    width: 120,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: HexColor("#000000"),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const HomePage()),
                        );
                      },
                      child: Caption1Text("Ana sayfa", "#FFFFFF"),
                    ),
                  ),
                ),
              ),
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

class HomeSideHead extends StatelessWidget {
  const HomeSideHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Title1Text('Geri bildirim', '#000000'),
            Padding(
              padding: const EdgeInsets.only(top: 14),
              child: StepProgressIndicator(totalSteps: 1, currentStep: 1, selectedColor: HexColor('#000000'), roundedEdges: Radius.circular(30),),
            ),
          ],
        ),
      ),
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
