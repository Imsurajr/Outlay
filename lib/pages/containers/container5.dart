import 'package:flutter/material.dart';
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
    return MobileCommonContainer(
        "Use anytime",
        "Use anytime when you need",
        "Tellus lacus morbi sagittis lacus in. Amet nisl \nat mauris enim accumsan nisi, tincidunt vel.\n Enim ipsum, amet quis ullamcorper eget ut.",
        illustration2,
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
    return TabletCommonContainer(
        "Use anytime",
        "Use anytime when you need",
        "Tellus lacus morbi sagittis lacus in. Amet nisl \nat mauris enim accumsan nisi, tincidunt vel.\n Enim ipsum, amet quis ullamcorper eget ut.",
        illustration2,
        false);
  }
}
