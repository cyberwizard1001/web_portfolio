import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'colors.dart' as colors;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colors.scaffoldColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 60.0, right: 20.0),
                child: Center(
                  child: Column(children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: AutoSizeText(
                          'NIRMAL',
                          maxLines: 1,
                          minFontSize: 100,
                          presetFontSizes: const [225, 200, 175, 150, 125, 100],
                          maxFontSize: 250,
                          style: GoogleFonts.raleway(
                              color: colors.accentColor,
                              fontWeight: FontWeight.w700),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 0.0),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: AutoSizeText(
                            'KARTHIKEYAN',
                            maxLines: 1,
                            presetFontSizes: const [100, 75, 50],
                            style: GoogleFonts.raleway(
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 6
                                  ..color = colors.accentColor,
                                fontWeight: FontWeight.w800),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0,bottom: 70),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: AutoSizeText(
                            'DESIGNER, DEVELOPER AND COOKING ENTHUSIAST',
                            maxLines: 2,
                            presetFontSizes: const [25, 20, 15],
                            style: GoogleFonts.raleway(
                                color: colors.highlightColor,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        'button.svg',
                        height: 100,
                        width: 100,
                      ),
                    )
                  ]),
                ),
              ),
            ],
          ),
        ));
  }
}
