import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlay/utils/constants.dart';
import 'package:outlay/widgets/commonContainer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container4 extends StatefulWidget {
  const Container4({Key? key}) : super(key: key);

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => MobileContainer4(context),
      desktop: (context) => DesktopContainer4(context),
      tablet: (context) => TabletContainer4(context),
    );
  }

  //===============MOBILE=================
  Widget MobileContainer4(context) {
    return MobileCommonContainer(
        "free some cost",
        "Save cost \nfor you and family",
        "Tellus lacus morbi sagittis lacus in. Amet \nnisl at mauris enim accumsan nisi, tincidunt vel. \n Enimipsum, amet quis ullamcorper eget ut.",
        illustration1,);
  }

  //===============DESKTOP=================
  Widget DesktopContainer4(context) {
    return CommonContainer(
        "free some cost",
        "Save cost \nfor you and family",
        "Tellus lacus morbi sagittis lacus in. Amet \nnisl at mauris enim accumsan nisi, tincidunt vel. \n Enimipsum, amet quis ullamcorper eget ut.",
        illustration1,
        true);
  }

  //==============TABLET=================
  Widget TabletContainer4(context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 7, vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Track your \nExpenses to \nSave Money",
                  style: GoogleFonts.hindSiliguri(
                    fontSize: w! / 18,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Helps you to organize your income and expenses",
                  style: GoogleFonts.hindSiliguri(
                    color: Colors.grey.shade400,
                    fontSize: w! / 40,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 45,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_drop_down_circle_outlined),
                            label: Text("Try Free Demo"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "— Web, iOs and Android",
                          style: GoogleFonts.hindSiliguri(
                            color: Colors.grey.shade400,
                            fontSize: w! / 40,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: h! / 2,
              width: h! / 2,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(illustrator), fit: BoxFit.contain),
              ),
            ),
          )
        ],
      ),
    );
  }
}
