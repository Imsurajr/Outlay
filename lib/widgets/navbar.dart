import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlay/utils/colors.dart';
import 'package:outlay/utils/constants.dart';
import 'package:outlay/utils/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder (
      mobile: (context) => MobileNavBar(context),
      desktop: (context) => DesktopNavBar(context),
      tablet: (context) => TabletBar(context),
    );
  }

  Widget MobileNavBar(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 25,
      ),
      height: MediaQuery.of(context).size.height * 0.08,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu),
          navLogo(),
        ],
      ),
    );
  }


  Widget DesktopNavBar(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton('Features'),
              navButton('About us'),
              navButton('Pricing'),
              navButton('Feedback'),
            ],
          ),
          Container(
            height: 45,
            child: ElevatedButton(
              style: borderedButtonStyle,
              onPressed: () {},
              child: Text('Request a Demo', style: GoogleFonts.hindSiliguri(color: AppColors.kColorPrimary),),
            ),
          ),
        ],
      ),
    );
  }

  Widget TabletBar(BuildContext context){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton('Features'),
              navButton('About us'),
              navButton('Pricing'),
              navButton('Feedback'),
            ],
          ),
          Container(
            height: 45,
            child: ElevatedButton(
              style: borderedButtonStyle,
              onPressed: () {},
              child: Text('Request a Demo', style: GoogleFonts.hindSiliguri(color: AppColors.kColorPrimary),),
            ),
          ),
        ],
      ),
    );
  }

  Widget navButton(String text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: GoogleFonts.hindSiliguri(color: Colors.black, fontSize: 18),
        ),
      ),
    );
  }

  Widget navLogo() {
    return Container(
      width: MediaQuery.of(context).size.width*0.1,
      height: MediaQuery.of(context).size.height*0.1,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(logo),
        ),
      ),
    );
  }
}
