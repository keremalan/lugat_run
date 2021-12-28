import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:lugat_run/main.dart';
import '../widgets/buttons.dart';
import '../widgets/texts.dart';
import '../widgets/cards.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:sizer/sizer.dart';

String userName = '';
String userEmail = '';
String userPhone = '';
String userPassword = '';
String userPasswordCheck = '';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  void didUpdateWidget(RegisterPage oldWidget) {
    super.didUpdateWidget(oldWidget);
  }
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                height: 25.6.h,
                decoration: BoxDecoration(
                  color: HexColor("#E5E5E5"),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RegisterAppBar(),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 34),
                      child: RegisterHead(
                          titleText: 'Hesap oluştur',
                          subheadText: 'Bilgilerinizi girin.'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 12, right: 34, bottom: 12, left: 34),
                      child: StepProgressIndicator(
                        totalSteps: 3,
                        currentStep: 1,
                        selectedColor: HexColor("#000000"),
                        roundedEdges: Radius.circular(6),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 22, right: 34, bottom: 22, left: 34),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const RegisterBodyHead(
                      headlineText: 'Kişisel bilgileriniz',
                      captionText:
                          'Hesabınızı oluşturabilmemiz için bilgilerinizi girin',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'İsminizi boş bırakmamalısınız';
                          } return null;
                        },
                        maxLines: 1,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          labelText: 'İsminiz',
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
                            userName = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'E-Postanız boş bırakılmamalı';
                          }
                          return null;
                        },
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          labelText: 'E-Postanız',
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
                            userEmail = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Telefon numaranız boş bırakılmamalı';
                          }
                          return null;
                        },
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          labelText: 'Telefon numaranız',
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
                            userPhone = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Şifre alanı boş bırakılmamalı';
                          }
                          return null;
                        },
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          labelText: 'Şifreniz',
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
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            userPassword = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty || userPassword != userPasswordCheck) {
                            return 'Şifre ile şifre onayı eşleşmedi!';
                          }
                          return null;
                        },
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          labelText: 'Şifrenizi onaylayın',
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
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            userPasswordCheck = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Center(
                        child: SizedBox(
                          width: 120,
                          child: ElevatedButton(
                            style: OutlinedButton.styleFrom(
                              backgroundColor: HexColor("#000000"),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Form işlenior')),
                                );
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const RegisterPageStep2()),
                                );
                              }

                            },
                            child: Caption1Text("Devam", "#FFFFFF"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterPageStep2 extends StatefulWidget {
  const RegisterPageStep2({Key? key}) : super(key: key);

  @override
  _RegisterPageStep2State createState() => _RegisterPageStep2State();
}

class _RegisterPageStep2State extends State<RegisterPageStep2> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 25.6.h,
              decoration: BoxDecoration(
                color: HexColor("#E5E5E5"),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RegisterAppBar(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 34),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const RegisterHead(
                          titleText: 'Hesap oluştur',
                          subheadText: 'Onay mesajınızı alın.',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12, bottom: 12),
                          child: StepProgressIndicator(
                            totalSteps: 3,
                            currentStep: 2,
                            selectedColor: HexColor("#000000"),
                            roundedEdges: Radius.circular(6),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 22, right: 34, bottom: 22, left: 34),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const RegisterBodyHead(
                            headlineText: 'Bir gönderim yolu seçin',
                            captionText:
                                'Kodunuz seçtiğiniz yol üzerinden size gönderilecektir.',
                          ),
                          Caption2Text("E-Postanız", "#9D9D9D"),
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
                                  Text(
                                    userEmail,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  FilledButton(
                                      80.0, "#FFFFFF", "#000000", "Gönder"),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Caption2Text("Telefon numaranız", "#9D9D9D"),
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
                                  Text(
                                    userPhone,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  FilledButton(
                                      80.0, "#FFFFFF", "#000000", "Gönder"),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12),
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
                                              const RegisterPageStep3()),
                                    );
                                  },
                                  child: Caption1Text("Devam", "#FFFFFF"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RegisterPageStep3 extends StatefulWidget {
  const RegisterPageStep3({Key? key}) : super(key: key);

  @override
  _RegisterPageStep3State createState() => _RegisterPageStep3State();
}

class _RegisterPageStep3State extends State<RegisterPageStep3> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                height: 25.6.h,
                decoration: BoxDecoration(
                  color: HexColor("#E5E5E5"),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RegisterAppBar(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 34),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const RegisterHead(
                            titleText: 'Hesap oluştur',
                            subheadText: 'Onay kodunuzu girin.',
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12, bottom: 12),
                            child: StepProgressIndicator(
                              totalSteps: 3,
                              currentStep: 3,
                              selectedColor: HexColor("#000000"),
                              roundedEdges: Radius.circular(6),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 22, right: 34, bottom: 22, left: 34),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const RegisterBodyHead(
                      headlineText: 'Kaydınızı tamamlayın',
                      captionText:
                          'Kodunuzu girdiğinizde tamamla butonu aktif hale gelir. Kaydınızı tamamladığınızda kullanıcı sözleşmesini okudunuz kabul edilir ve hesabınız oluşturulur.',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Onay kodu boş bırakılmamalıdır';
                          }
                          return null;
                        },
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          labelText: 'Onay kodunuzu girin',
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
                            userPasswordCheck = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 22),
                      child: Center(
                        child: SizedBox(
                          width: 120,
                          child: ElevatedButton(
                            style: OutlinedButton.styleFrom(
                              backgroundColor: HexColor("#000000"),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                               ScaffoldMessenger.of(context).showSnackBar(
                                 const SnackBar(content: Text('bişiler')),
                               );
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                     builder: (context) =>
                                     const RegisterPageStep4()),
                               );
                              }
                            },
                            child: Caption1Text("Tamamla", "#FFFFFF"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterPageStep4 extends StatefulWidget {
  const RegisterPageStep4({Key? key}) : super(key: key);

  @override
  _RegisterPageStep4State createState() => _RegisterPageStep4State();
}

class _RegisterPageStep4State extends State<RegisterPageStep4> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 25.6.h,
              decoration: BoxDecoration(
                color: HexColor("#E5E5E5"),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RegisterAppBar(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 34),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const RegisterHead(
                            titleText: 'Hesap oluştur',
                            subheadText: 'Onay mesajınızı girin.'),
                        Padding(
                          padding: const EdgeInsets.only(top: 12, bottom: 12),
                          child: StepProgressIndicator(
                            totalSteps: 3,
                            currentStep: 3,
                            selectedColor: HexColor("#000000"),
                            roundedEdges: Radius.circular(6),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 22, right: 34, bottom: 22, left: 34),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const RegisterBodyHead(
                      headlineText: 'Kaydınız tamamlandı',
                      captionText:
                          'Topluluğa katkı sunabilir ve sunulan katkılar için oy kullanabilirsiniz.'),
                  Center(
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
                                builder: (context) => Lugat_Run()),
                          );
                        },
                        child: Caption1Text("Tamamla", "#FFFFFF"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widgets

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
          child: BodyText("$subheadText", "#000000"),
        ),
      ],
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
