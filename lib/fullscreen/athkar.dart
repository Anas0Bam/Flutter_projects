// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:duaa/fullscreen/dua.dart';
import 'package:duaa/my_flutter_app_icons.dart';

import 'package:duaa/screens/task.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'counter1.dart';
import 'time.dart';
import 'package:duaa/Custwid.dart';

class Athkar extends StatelessWidget {
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
            'أذكار',
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
          SafeArea(
            child: Row(
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
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Tasksscreen(),
                        ),
                      ),
                    ), //first page
                    SpeedDialChild(
                      child: Icon(MyFlutterApp.athkar_1),
                      backgroundColor: Colors.blue[200],
                      label: 'Duaa',
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Duaa(),
                        ),
                      ),
                    ), //duaa

                    SpeedDialChild(
                      child: Icon(MyFlutterApp.day_and_night_1),
                      backgroundColor: Colors.greenAccent[300],
                      label: 'Athkar',
                    ),
                  ],
                ),
              ],
            ),
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
                          color: Colors.transparent,
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
                                        boxc: Colors.amber.shade700,
                                        duaaTag: 'ذكر الصباح',
                                        fonts: 25,
                                        pic: 'images/sun.png',
                                        duatesi: 19,
                                        duaa:
                                            ' أَصْـبَحْنا وَأَصْـبَحَ المُـلْكُ لله وَالحَمدُ لله ، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُ ولهُ الحَمْـد، وهُوَ على كلّ شَيءٍ قدير ، رَبِّ أسْـأَلُـكَ خَـيرَ ما في هـذا اليوم وَخَـيرَ ما بَعْـدَه ، وَأَعـوذُ بِكَ مِنْ شَـرِّ ما في هـذا اليوم وَشَرِّ ما بَعْـدَه، رَبِّ أَعـوذُبِكَ مِنَ الْكَسَـلِ وَسـوءِ الْكِـبَر ، رَبِّ أَعـوذُ بِكَ مِنْ عَـذابٍ في النّـارِ وَعَـذابٍ في القَـبْر'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    ddd(
                                      context,
                                      textc: Colors.black,
                                      boxc: Colors.green.shade300,
                                      pic: 'images/ni.png',
                                      duaa:
                                          'أَمْسَيْـنا وَأَمْسـى المـلكُ لله وَالحَمدُ لله ، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُ ولهُ الحَمْـد، وهُوَ على كلّ شَيءٍ قدير ، رَبِّ أسْـأَلُـكَ خَـيرَ ما في هـذهِ اللَّـيْلَةِ وَخَـيرَ ما بَعْـدَهـا ، وَأَعـوذُ بِكَ مِنْ شَـرِّ ما في هـذهِ اللَّـيْلةِ وَشَرِّ ما بَعْـدَهـا ، رَبِّ أَعـوذُبِكَ مِنَ الْكَسَـلِ وَسـوءِ الْكِـبَر ، رَبِّ أَعـوذُ بِكَ مِنْ عَـذابٍ في النّـارِ وَعَـذابٍ في القَـبْر',
                                      duaaTag: 'ذكر المساء',
                                      fonts: 21,
                                      duatesi: 19,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    ddd(
                                      context,
                                      textc: Colors.black,
                                      boxc: Colors.teal.shade400,
                                      duaa:
                                          'الحمدُ للهِ الذي عافاني في جَسَدي وَرَدّ عَليّ روحي وَأَذِنَ لي بِذِكْرِه.',
                                      duaaTag: 'ذكر الإستيقاظ من النوم',
                                      pic: 'images/wa.png',
                                      fonts: 20.2,
                                      duatesi: 20,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    ddd(context,
                                        textc: Colors.black,
                                        boxc: Colors.indigoAccent.shade100,
                                        pic: 'images/sl.png',
                                        duaa:
                                            'باسمِكَ ربِّي وَضعتُ جَنبي وبِكَ أرفعُهُ، إن أمسَكْتَ نفسي فارحَمها، وإن أرسلتَها فاحفَظها بما تحفَظُ بِهِ عبادَكَ الصَّالحينَ',
                                        duaaTag: 'ذكر ماقبل النوم',
                                        duatesi: 20,
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
                                        boxc: Colors.blueGrey,
                                        duaa:
                                            'أشْهَدُ أن لا إله إلا الله وحْدَهُ لا شريكَ لهُ ، وأشْهَدُ أنَّ محمداً عَبدُهُ ورسُولُه. اللَّهُمَّ اجْعَلْني مِنَ التَّوَّابينَ واجْعَلْنِي من المُتَطَهِّرِينَ. سُبْحَانَكَ اللَّهُمَّ وبَحَمْدكَ أشْهدُ أنْ لا إلهَ إلا أنْتَ أَسْتَغْفِرُكَ وأتُوبُ إِلَيْكَ.',
                                        duaaTag: 'ذكر بعد الوضوء',
                                        pic: 'images/wo.png',
                                        duatesi: 20,
                                        fonts: 20.7),
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
                                            scale: 4.9,
                                            alignment: Alignment(0, -0.9),
                                            image: AssetImage(
                                              'images/sh.png',
                                            ),
                                          ),
                                        ),
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              onPrimary: Colors.black,
                                              primary: Colors.transparent,
                                              shadowColor: Colors.white10,
                                              elevation: 1,
                                              alignment: Alignment(-1, 1),
                                              minimumSize: Size(0, 150),
                                            ),
                                            onPressed: () {
                                              showDialog(
                                                context: context,
                                                builder: (context) => Dialog(
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  elevation: 0,
                                                  child: Container(
                                                    padding: EdgeInsets.only(
                                                        right: 20,
                                                        left: 20,
                                                        top: 30,
                                                        bottom: 20),
                                                    decoration: BoxDecoration(
                                                      color:
                                                          Colors.blue.shade200,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  50)),
                                                      image: DecorationImage(
                                                        fit: BoxFit.fitHeight,
                                                        opacity: 80,
                                                        image: AssetImage(
                                                          'images/pray2.png',
                                                        ),
                                                      ),
                                                    ),
                                                    height: 330,
                                                    width: 500,
                                                    child: Center(
                                                      child: Text(
                                                        'بِسْمِ اللَّهِ الَّذِي لَا يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِي الْأَرْضِ وَلَا فِي السَّمَاءِ وَهُوَ السَّمِيعُ الْعَلِيمُ (ثلاث مرَّات) \nأَعُوذُ بِكَلِمَاتِ اللهِ التَّامَّاتِ مِنْ شَرِّ مَا خَلَقَ (ثلاث مرَّات). \n قراءة سورة الإخلاص، وسورة الفلق، وسورة الناس ثلاث مرَّات إذا أصبح وأمسى.',
                                                        textDirection:
                                                            TextDirection.rtl,
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Baloo Bhaijaan 2',
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 19),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              'أذكار التحصين',
                                              style: TextStyle(
                                                fontFamily: 'Baloo Bhaijaan 2',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.7,
                                                color: Colors.white,
                                              ),
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    ddd(context,
                                        textc: Colors.black,
                                        boxc: Colors.red.shade300,
                                        duaa:
                                            'الْحَمْدُ للهِ الَّذِي أَطْعَمَنِي هَذَا, وَرَزَقَنِيهِ مِنْ غَيْرِ حَوْلٍ مِّنِّي وَلاَ قُوَّةٍ. الْحَمْدُ لِلَّهِ كَثِيرًا طَيِّبًا مُبَارَكًا فِيهِ غَيْرَ مَكْفِيٍّ وَلَا مُوَدَّعٍ وَلَا مُسْتَغْنًى عَنْهُ رَبَّنَا.',
                                        duaaTag: 'ذكر عند الفراغ من الطعام',
                                        pic: 'images/fo.png',
                                        duatesi: 20,
                                        fonts: 20.7),
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
