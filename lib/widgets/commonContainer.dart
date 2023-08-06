import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlay/utils/colors.dart';
import 'package:outlay/utils/constants.dart';

Widget CommonContainer(String s1, s2, s3, image, bool imageLeft) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(vertical: 30, horizontal: w! / 10),
    child: Row(
      children: [
        imageLeft
            ? Expanded(
                child: Container(
                  height: 530,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.contain),
                  ),
                ),
              )
            : Container(),
        Expanded(
          child: Column(
            crossAxisAlignment:
                imageLeft ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                s1.toUpperCase(),
                style: GoogleFonts.hindSiliguri(
                  color: Colors.grey[400],
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                s2,
                textAlign: imageLeft ? TextAlign.right : TextAlign.left,
                style: GoogleFonts.hindSiliguri(
                  color: Colors.black,
                  fontSize: w! / 20,
                  height: 1.1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                s3,
                textAlign: imageLeft ? TextAlign.right : TextAlign.left,
                style: GoogleFonts.hindSiliguri(
                  color: Colors.grey[400],
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward),
                label: Text(
                  "Learn More",
                  style:
                      GoogleFonts.hindSiliguri(color: AppColors.kColorPrimary),
                ),
              )
            ],
          ),
        ),
        !imageLeft
            ? Expanded(
                child: Container(
                  height: 530,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.contain),
                  ),
                ),
              )
            : Container(),
      ],
    ),
  );
}

Widget MobileCommonContainer(String s1, s2, s3, image) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(vertical: 30, horizontal: w! / 10),
    child: Column(
      children: [
        Container(
          height: h! * 0.45,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(image), fit: BoxFit.contain),
          ),
        ),
        Column(
          children: [
            Text(
              s1.toUpperCase(),
              style: GoogleFonts.hindSiliguri(
                color: Colors.grey[400],
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              s2,
              // textAlign: TextAlign.right:TextAlign.left,
              style: GoogleFonts.hindSiliguri(
                color: Colors.black,
                fontSize: w! / 20,
                height: 1.1,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              s3,
              // textAlign: imageLeft?TextAlign.right:TextAlign.left,
              style: GoogleFonts.hindSiliguri(
                color: Colors.grey[400],
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward),
              label: Text(
                "Learn More",
                style:
                    GoogleFonts.hindSiliguri(color: AppColors.kColorPrimary),
              ),
            )
          ],
        ),
      ],
    ),
  );
}
