import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imihirpaldhikar_portfolio/constants/colors.constant.dart';

class TabletHome extends StatefulWidget {
  const TabletHome({Key? key}) : super(key: key);

  @override
  _TabletHomeState createState() => _TabletHomeState();
}

class _TabletHomeState extends State<TabletHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: AutoSizeText(
              'Mihir Paldhikar',
              style: TextStyle(
                color: ColorsConstants.accentColor,
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FloatingActionButton(
                  backgroundColor: ColorsConstants.secondaryColor,
                  onPressed: () {},
                  child: Icon(
                    FontAwesomeIcons.github,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                  backgroundColor: ColorsConstants.secondaryColor,
                  onPressed: () {},
                  child: Icon(
                    FontAwesomeIcons.twitter,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                  backgroundColor: ColorsConstants.secondaryColor,
                  onPressed: () {},
                  child: Icon(
                    FontAwesomeIcons.instagram,
                    color: Colors.redAccent,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                  backgroundColor: ColorsConstants.secondaryColor,
                  onPressed: () {},
                  child: Icon(
                    FontAwesomeIcons.linkedin,
                    color: Color(0xff0e76a8),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
