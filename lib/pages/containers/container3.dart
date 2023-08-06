import 'package:flutter/material.dart';
import 'package:outlay/utils/constants.dart';
import 'package:outlay/widgets/commonContainer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container3 extends StatefulWidget {
  const Container3({Key? key}) : super(key: key);

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => MobileContainer3(context),
      desktop: (context) => DesktopContainer3(context),
      tablet: (context) => TabletContainer3(context),
    );
  }

  //===============MOBILE=================
  Widget MobileContainer3(context) {
    return MobileCommonContainer(
        "Alwalys online",
        "Real-time support with cloud",
        "Tellus lacus morbi sagittis lacus in. \nAmet nisl at mauris enim accumsan nisi, tincidunt\n vel. Enim ipsum, amet quis ullamcorper eget ut.",
        illustration3);
  }

  //===============DESKTOP=================
  Widget DesktopContainer3(context) {
    return CommonContainer(
        "Alwalys online",
        "Real-time support with cloud",
        "Tellus lacus morbi sagittis lacus in. \nAmet nisl at mauris enim accumsan nisi, tincidunt\n vel. Enim ipsum, amet quis ullamcorper eget ut.",
        illustration3,
        false);
  }

  //==============TABLET=================
  Widget TabletContainer3(context) {
    return TabletCommonContainer(
        "Alwalys online",
        "Real-time support with cloud",
        "Tellus lacus morbi sagittis lacus in. \nAmet nisl at mauris enim accumsan nisi, tincidunt\n vel. Enim ipsum, amet quis ullamcorper eget ut.",
        illustration3,
        false);
  }
}
