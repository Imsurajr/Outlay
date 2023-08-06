import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlay/utils/constants.dart';
import 'package:outlay/widgets/commonContainer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container5 extends StatefulWidget {
  const Container5({Key? key}) : super(key: key);

  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => MobileContainer5(context),
      desktop: (context) => DesktopContainer5(context),
      tablet: (context) => TabletContainer5(context),
    );
  }

  //===============MOBILE=================
  Widget MobileContainer5(context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: w! / 7, vertical: 20),
      child: Column(
        children: [
          Container(
            height: w! / 1.1,
            width: w! / 1.1,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(illustrator), fit: BoxFit.contain),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Track your Expenses to Save Money",
            textAlign: TextAlign.center,
            style: GoogleFonts.hindSiliguri(
              fontSize: 20,
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
              fontSize: w! / 23,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 45,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_drop_down_circle_outlined),
                  label: Text("Try Free Demo"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "— Web, iOs and Android",
                style: GoogleFonts.hindSiliguri(
                  color: Colors.grey.shade400,
                  fontSize: w! / 25,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }

  //===============DESKTOP=================
  Widget DesktopContainer5(context) {
    return CommonContainer(
        "Use anytime",
        "Use anytime when you need",
        "Tellus lacus morbi sagittis lacus in. Amet nisl \nat mauris enim accumsan nisi, tincidunt vel.\n Enim ipsum, amet quis ullamcorper eget ut.",
        illustration2,
        false);
  }

  //==============TABLET=================
  Widget TabletContainer5(context) {
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
