// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:duaa/fullscreen/time.dart';
import 'package:duaa/my_flutter_app_icons.dart';
import 'package:duaa/screens/task.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:duaa/Custwid.dart';
import 'athkar.dart';
import 'counter1.dart';

class Duaa extends StatelessWidget {
  const Duaa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'images/back1.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'أدعية',
            style: TextStyle(
                fontFamily: 'Baloo Bhaijaan 2',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.transparent,
        persistentFooterButtons: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => counter1(),
                  ),
                ),
                child: Icon(MyFlutterApp.counter),
                backgroundColor: Colors.orange,
              ),
              SpeedDial(
                animatedIcon: AnimatedIcons.menu_close,
                backgroundColor: Colors.orange,
                overlayColor: Colors.black,
                overlayOpacity: 0.3,
                children: [
                  SpeedDialChild(
                    child: Icon(MyFlutterApp.task),
                    backgroundColor: Colors.yellow[300],
                    label: 'Tasks',
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Tasksscreen())),
                  ), //first page
                  SpeedDialChild(
                    child: Icon(MyFlutterApp.athkar_1),
                    backgroundColor: Colors.blue[200],
                    label: 'Duaa',
                  ), //duaa

                  SpeedDialChild(
                    child: Icon(MyFlutterApp.day_and_night_1),
                    backgroundColor: Colors.greenAccent[300],
                    label: 'Athkar',
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Athkar(),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
        body: Column(
          children: [
            Row(
              children: [
                newtimedesign(),
                Expanded(child: SizedBox()),
                timeday(context),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: ListView(
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    ddd(context,
                                        textc: Colors.black,
                                        boxc: Colors.blue.shade300,
                                        duatesi: 20,
                                        duaaTag: 'دعاء السفر',
                                        fonts: 25,
                                        pic: 'images/aaa.png',
                                        duaa:
                                            ' “اللهمَّ إنَّا نسألُكَ في سَفَرِنَا هذَا البِرَّ والتَّقْوَى، ومِن العَمَلِ مَا تَرْضَى، اللهمَّ هَوِّنْ عَلَيْنَا سَفَرِنَا هذَا وَاطْوِ عَنَّا بُعْدَه، اللَّهُمَّ أَنْتَ الصَّاحِبُ فِي السَّفَرِ، وَالْخَلِيفَةُ فِي الأَهْلِ، اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ وَعَثَاءِ السَّفَرِ وَكَآبَةِ الْمَنْظَر وَسُوءِ الْمُنْقَلَبِ فِي الْمَالِ وَالأَهْلِ“ '),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    ddd(context,
                                        textc: Colors.black,
                                        boxc: Colors.green.shade300,
                                        pic: 'images/sick.png',
                                        duatesi: 20,
                                        duaa:
                                            'بسمِ اللهِ ثلاثًا، وقُلْ سبْعَ مرَّاتٍ: أعوذُ باللهِ وقدرتِه مِن شرِّ ما أجِدُ وأُحاذِرُ',
                                        duaaTag: 'الشفاءالعاجل من المرض',
                                        fonts: 20),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    ddd(context,
                                        textc: Colors.black,
                                        boxc: Colors.teal.shade400,
                                        duatesi: 20,
                                        duaa:
                                            'اللهم لا سهل الا ما جعلته سهلا وانت تجعل الحزن اذا شئت سهلا',
                                        duaaTag: 'دعاء تيسير الأمور',
                                        pic: 'images/struggle.png',
                                        fonts: 20.7),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    ddd(context,
                                        textc: Colors.black,
                                        boxc: Colors.green.shade500,
                                        duatesi: 20,
                                        pic: 'images/sss.png',
                                        duaa:
                                            'اللهم ارزقني رزقًا واسعًا حلالًا طيبًا من غير كدٍّ، واستجب دعائي من غير رد، وأعوذ بك من الفقر والدّين، اللهم يا رازق السائلين، يا راحم المساكين، ويا ذا القوة المتين، ويا خير الناصرين، يا ولي المؤمنين، يا غيّاث المستغيثين، إياك نعبد وإيّاك نستعين',
                                        duaaTag: 'دعاء الرزق',
                                        fonts: 20.7),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    ddd(context,
                                        textc: Colors.black,
                                        duatesi: 20,
                                        boxc: Colors.red.shade300,
                                        duaa:
                                            'يا رحمن يا رحيم يا علي يا كبير، اللهم إني أسألك محبة أكتفي بها من الدنيا،\n اللهم حبب فيّ جميع خلقك، اللهم اجعلني من المقبولين يا رب العالمين',
                                        duaaTag: 'دعاء تسخير القلوب',
                                        pic: 'images/happy.png',
                                        fonts: 20.7),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    ddd(context,
                                        textc: Colors.black,
                                        boxc: Colors.deepPurpleAccent.shade100,
                                        duatesi: 18,
                                        pic: 'images/su.png',
                                        duaa:
                                            'اللَّهُمَّ أَنْتَ المَلِكُ لا إلَهَ إلَّا أَنْتَ أَنْتَ رَبِّي، وَأَنَا عَبْدُكَ، ظَلَمْتُ نَفْسِي، وَاعْتَرَفْتُ بذَنْبِي، فَاغْفِرْ لي ذُنُوبِي جَمِيعًا، إنَّه لا يَغْفِرُ الذُّنُوبَ إلَّا أَنْتَ، وَاهْدِنِي لأَحْسَنِ الأخْلَاقِ لا يَهْدِي لأَحْسَنِهَا إلَّا أَنْتَ، وَاصْرِفْ عَنِّي سَيِّئَهَا لا يَصْرِفُ عَنِّي سَيِّئَهَا إلَّا أَنْتَ، لَبَّيْكَ وَسَعْدَيْكَ وَالْخَيْرُ كُلُّهُ في يَدَيْكَ، وَالشَّرُّ ليسَ إلَيْكَ، أَنَا بكَ وإلَيْكَ، تَبَارَكْتَ وَتَعَالَيْتَ، أَسْتَغْفِرُكَ وَأَتُوبُ إلَيْك',
                                        duaaTag: 'دعاء التوبة',
                                        fonts: 20.7),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white10,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          image: DecorationImage(
                                            fit: BoxFit.scaleDown,
                                            image: AssetImage(
                                              'images/jobss.png',
                                            ),
                                            scale: 4.5,
                                            alignment: Alignment(0, -0.9),
                                          ),
                                        ),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              onPrimary: Colors.black,
                                              primary: Colors.transparent,
                                              shadowColor: Colors.white10,
                                              elevation: 1,
                                              alignment: Alignment(-1, 1),
                                              minimumSize: Size(00, 150)),
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder: (context) => Dialog(
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      elevation: 0,
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 20,
                                                                left: 20,
                                                                top: 10,
                                                                bottom: 10),
                                                        decoration:
                                                            BoxDecoration(
                                                                color: Colors
                                                                    .orange
                                                                    .shade200,
                                                                borderRadius: BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            50)),
                                                                image:
                                                                    DecorationImage(
                                                                  fit: BoxFit
                                                                      .fitHeight,
                                                                  opacity: 80,
                                                                  image:
                                                                      AssetImage(
                                                                    'images/pray2.png',
                                                                  ),
                                                                )),
                                                        height: 360,
                                                        width: 500,
                                                        child: Center(
                                                            child: Text(
                                                          'اللَّهُمَّ إنِّي أَسْتَخِيرُكَ بِعِلْمِكَ، وَأَسْتَقْدِرُكَ بِقُدْرَتِكَ، وَأَسْأَلُكَ مِنْ فَضْلِكَ الْعَظِيمِ فَإِنَّكَ تَقْدِرُ وَلا أَقْدِرُ، وَتَعْلَمُ وَلا أَعْلَمُ، وَأَنْتَ عَلامُ الْغُيُوبِ.. اللَّهُمَّ إنْ كُنْتَ تَعْلَمُ أَنَّ هَذَا الأَمْرَ (اذكر حاجتك) خَيْرٌ لِي فِي دِينِي وَمَعَاشِي وَعَاقِبَةِ أَمْرِي؛ فَاقْدُرْهُ لِي وَيَسِّرْهُ لِي ثُمَّ بَارِكْ لِي فِيهِ.. اللَّهُمَّ وَإِنْ كُنْتَ تَعْلَمُ أَنَّ هَذَا الأَمْرَ (اذكر حاجتك) شَرٌّ لِي فِي دِينِي وَمَعَاشِي وَعَاقِبَةِ أَمْرِي فَاصْرِفْهُ عَنِّي وَاصْرِفْنِي عَنْهُ وَاقْدُرْ لِي الْخَيْرَ حَيْثُ كَانَ ثُمَّ ارْضِنِي بِهِ ',
                                                          textDirection:
                                                              TextDirection.rtl,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Baloo Bhaijaan 2',
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 19),
                                                        )),
                                                      ),
                                                    ));
                                          },
                                          child: Text(
                                            'دعاء الإستخارة',
                                            style: TextStyle(
                                              fontFamily: 'Baloo Bhaijaan 2',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.7,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white10,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          image: DecorationImage(
                                            fit: BoxFit.scaleDown,
                                            image: AssetImage(
                                              'images/ho.png',
                                            ),
                                            scale: 4.5,
                                            alignment: Alignment(0, -0.9),
                                          ),
                                        ),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              onPrimary: Colors.black,
                                              primary: Colors.transparent,
                                              shadowColor: Colors.white10,
                                              elevation: 1,
                                              alignment: Alignment(-1, 1),
                                              minimumSize: Size(00, 150)),
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder: (context) => Dialog(
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      elevation: 0,
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 20,
                                                                left: 20,
                                                                top: 10,
                                                                bottom: 10),
                                                        decoration:
                                                            BoxDecoration(
                                                                color: Colors
                                                                    .cyan
                                                                    .shade400,
                                                                borderRadius: BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            50)),
                                                                image:
                                                                    DecorationImage(
                                                                  fit: BoxFit
                                                                      .fitHeight,
                                                                  opacity: 80,
                                                                  image:
                                                                      AssetImage(
                                                                    'images/pray2.png',
                                                                  ),
                                                                )),
                                                        height: 360,
                                                        width: 500,
                                                        child: Center(
                                                            child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              'عند دخول المنزل: بسم الله ولجنا وبسم الله خرجنا وعلى ربنا توكلنا. \n  عند الخروج من المنزل: بسمِ اللهِ, توكلتُ على اللهِ, اللهمَّ إني أعوذ بك من أن أضِلَّ أو أُضلُّ, أو أَزِلَّ أو أُزَلُّ, أو أَظْلمَّ أو أُظْلمُّ, أو أَجْهـلَّ أو يُجْهلُّ عليّ, أو أن أبغي أو يُبغى عليَّ.',
                                                              textDirection:
                                                                  TextDirection
                                                                      .rtl,
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Baloo Bhaijaan 2',
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 22),
                                                            ),
                                                          ],
                                                        )),
                                                      ),
                                                    ));
                                          },
                                          child: Text(
                                            'الدخول والخروج من المنزل',
                                            style: TextStyle(
                                              fontFamily: 'Baloo Bhaijaan 2',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.5,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          )
                        ],
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
