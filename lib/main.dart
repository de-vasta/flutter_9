import 'dart:math';
import 'package:flutter/material.dart';

Color textColor(Color bgColor) =>
    bgColor.computeLuminance() > 0.5 ? Colors.black : Colors.white;

Color randColor() =>
    Colors.primaries[Random().nextInt(Colors.primaries.length)]
        [Random().nextInt(9) * 100] ??
    Colors.primaries[Random().nextInt(Colors.primaries.length)];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(),
        darkTheme: ThemeData.dark(),
        home: const MyHomePage(title: 'Lab work #9'),
        debugShowCheckedModeBanner: false,
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  final Color appBarColor = const Color(0xFFA85CF9);
  final Color color1 = const Color(0xff6D67E4);
  final Color color2 = const Color(0xffF2F7A1);
  final Color color3 = const Color(0xffCF4647);
  final Color color4 = const Color(0xff2a363b);

  @override
  State<MyHomePage> createState() =>
      // ignore: no_logic_in_create_state
      _MyHomePageState(appBarColor, color1, color2, color3, color4);
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState(this.currAppBarColor, this.currColor1, this.currColor2,
      this.currColor3, this.currColor4) {
    _k = min(_g, _h);
    _e = min(_b, _d);
  }

  final double _borderRadius = 10;
  final EdgeInsets _padding = const EdgeInsets.all(16);

  final double _d = 100, _f = 100, _i = 100;
  final double _b = 200;
  final double _g = 350;
  final double _h = 550, _m = 550;
  final double _n = 5, _p = 5, _r = 5, _s = 5;
  double _e = 0, _k = 0;

  final Color color1Darken = const Color(0xff544fb1);
  final Color color2Darken = const Color(0xffc0c37f);
  final Color color3Darken = const Color(0xff9c3435);
  final Color color4Lighten = const Color(0xff455961);

  Color currAppBarColor;
  Color currColor1;
  Color currColor2;
  Color currColor3;
  Color currColor4;

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.title,
          style: TextStyle(color: textColor(currAppBarColor)),
        ),
        backgroundColor: currAppBarColor,
        actions: [
          GestureDetector(
              child: IconButton(
                  onPressed: () =>
                      setState(() => currAppBarColor = randColor()),
                  icon: Icon(Icons.shuffle, color: widget.color4)))
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10, bottom: _e),
        child: Row(
          children: [
            Column(
              children: [
                MouseRegion(
                  onHover: (event) => setState(() => currColor1 = color1Darken),
                  onExit: (event) => setState(() => currColor1 = widget.color1),
                  child: Container(
                    decoration: BoxDecoration(
                      color: currColor1,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(_borderRadius)),
                    ),
                    width: _g,
                    margin: EdgeInsets.only(left: _f),
                    padding: _padding,
                    child: Text(
                        "Ще не вмерла України ні слава, ні воля.\nЩе нам, браття-українці, усміхнеться доля.",
                        style: TextStyle(
                            fontSize: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.fontSize,
                            color: textColor(currColor1))),
                  ),
                ),
                MouseRegion(
                  onHover: (event) => setState(() => currColor2 = color2Darken),
                  onExit: (event) => setState(() => currColor2 = widget.color2),
                  child: Container(
                    decoration: BoxDecoration(
                        color: currColor2,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(_borderRadius),
                        )),
                    margin: EdgeInsets.only(left: _k),
                    padding: EdgeInsets.only(
                        left: _n, top: _r, right: _p, bottom: _s),
                    width: _m,
                    child: Text("Душу й тіло ми положим за нашу свободу,",
                        style: TextStyle(
                            fontSize: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.fontSize,
                            color: textColor(currColor2))),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                MouseRegion(
                  onHover: (event) => setState(() => currColor3 = color3Darken),
                  onExit: (event) => setState(() => currColor3 = widget.color3),
                  child: Container(
                    decoration: BoxDecoration(
                        color: currColor3,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(_borderRadius),
                        )),
                    margin: EdgeInsets.only(right: _i),
                    alignment: Alignment.center,
                    height: _b,
                    width: _h,
                    padding: _padding,
                    child: Text(
                        "Згинуть наші вороженьки, як роса на сонці, \nЗапануєм і ми, браття, у своїй сторонці.",
                        style: TextStyle(
                            fontSize: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.fontSize,
                            color: textColor(currColor3))),
                  ),
                ),
                MouseRegion(
                  onHover: (event) =>
                      setState(() => currColor4 = color4Lighten),
                  onExit: (event) => setState(() => currColor4 = widget.color4),
                  child: Container(
                    decoration: BoxDecoration(
                        color: currColor4,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(_borderRadius),
                        )),
                    alignment: Alignment.center,
                    height: _d,
                    padding: _padding,
                    child: Text("І покажем, що ми, браття, козацького роду.",
                        style: TextStyle(
                            fontSize: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.fontSize,
                            color: textColor(currColor4))),
                  ),
                ),
              ],
            ),
          ],
        ),
      ));
}
