import 'package:flutter/material.dart';
import 'package:outlay/pages/containers/container1.dart';
import 'package:outlay/widgets/navbar.dart';

import '../utils/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                  NavBar(),
                Container1(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
