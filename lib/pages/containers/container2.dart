import 'package:flutter/material.dart';
import 'package:outlay/utils/colors.dart';
import 'package:outlay/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container2 extends StatefulWidget {
  const Container2({Key? key}) : super(key: key);

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => MobileContainer2(context),
      desktop: (context) => DesktopContainer2(context),
      tablet: (context) => TabletContainer2(context),
    );
  }

  //============MOBILE=================
  Widget MobileContainer2(context) {
    return Container(
      height: h! / 1.2,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.kColorPrimary,
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(children: [
              Positioned(
                top: -75,
                left: 45,
                child: Container(
                  height: h! / 1.3,
                  width: w! / 1.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(dashboard),
                    ),
                  ),
                  // child: ,
                ),
              ),
            ]),
          ),
          Container(
            width: w,
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                companyLogo(fb),
                companyLogo(google),
                companyLogo(lnkdin),
                companyLogo(cocacola),
                companyLogo(samsung),
              ],
            ),
          )
        ],
      ),
    );
  }

  //============DESKTOP=================
  Widget DesktopContainer2(context) {
    return Container(
      height: 900,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.kColorPrimary,
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  top: -50,
                  right: -50,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(vector), fit: BoxFit.contain),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -50,
                  left: -50,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(vector1), fit: BoxFit.contain),
                    ),
                  ),
                ),
                Positioned(
                  top: h!*0.39,
                  left: 43,
                  right: 43,
                  bottom: 0,
                  child: Container(
                    height: h! / 1.2,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(dashboard),
                      ),
                    ),
                    // child: ,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companyLogo(fb),
                companyLogo(google),
                companyLogo(lnkdin),
                companyLogo(cocacola),
                companyLogo(samsung),
              ],
            ),
          )
        ],
      ),
    );
  }

  //============TABLET=================
  Widget TabletContainer2(context) {
    return Container(
      height: 700,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.kColorPrimary,
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  top: 150,
                  left: 23,
                  right: 23,
                  bottom: 0,
                  child: Container(
                    height: h! / 1.2,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(dashboard),
                      ),
                    ),
                    // child: ,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companyLogo(fb),
                companyLogo(google),
                companyLogo(lnkdin),
                companyLogo(cocacola),
                companyLogo(samsung),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget companyLogo(String image) {
    return Container(
      width: 160,
      height: 40,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.contain),
      ),
    );
  }
}
