import 'package:flutter/material.dart';
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
    return
      TabletCommonContainer(
          "free some cost",
          "Save cost \nfor you and family",
          "Tellus lacus morbi sagittis lacus in. Amet \nnisl at mauris enim accumsan nisi, tincidunt vel. \n Enimipsum, amet quis ullamcorper eget ut.",
          illustration1,
          true);
  }
}
