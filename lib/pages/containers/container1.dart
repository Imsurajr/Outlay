import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlay/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container1 extends StatefulWidget {
  const Container1({Key? key}) : super(key: key);

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => MobileContainer1(context),
      desktop: (context) => DesktopContainer1(context),
      tablet: (context) => TabletContainer1(context),
    );
  }


  //============MOBILE=================
  Widget MobileContainer1(context){
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
          SizedBox(height: 20,),
          Text(
            "Track your Expenses to Save Money",
            textAlign: TextAlign.center,
            style: GoogleFonts.hindSiliguri(
              fontSize: 20 ,
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
              fontSize:  w! / 23,
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

  //============DESKTOP=================
  Widget DesktopContainer1(context) {
    return
      Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 7, vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Track your \nExpenses to \nSave Money",
                  style: GoogleFonts.hindSiliguri(
                    fontSize: w! / 20,
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
                    fontSize: w! / 80,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
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
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "— Web, iOs and Android",
                      style: GoogleFonts.hindSiliguri(
                        color: Colors.grey.shade400,
                        fontSize: w! / 80,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: h! / 2,
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

  //============TABLET=================
  Widget TabletContainer1(context){
    return
      Container(
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
                      SizedBox(height: 10,),
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
