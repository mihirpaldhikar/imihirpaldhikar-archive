import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imihirpaldhikar_portfolio/constants/colors.constant.dart';
import 'package:imihirpaldhikar_portfolio/constants/strings.constant.dart';
import 'package:imihirpaldhikar_portfolio/widgets/footer_link.wodget.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsConstants.secondaryColor,
      width: double.infinity,
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              footerLink(
                linkIcon: FontAwesomeIcons.github,
                linkName: StringConstants.github,
                linkURL: 'https://github.com/imihirpaldhikar/protium',
                toolTipMsg: 'Connect with me on Github.',
              ),
              footerLink(
                linkIcon: FontAwesomeIcons.instagram,
                linkName: StringConstants.instagram,
                linkURL: 'https://instagram.com/imihirpaldhikar',
                toolTipMsg: 'Connect with me on Instagram.',
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('${StringConstants.madeWith}  '),
              Icon(
                FontAwesomeIcons.solidHeart,
                color: Colors.red,
                size: 15,
              ),
              Text('  &  ${StringConstants.flutter}')
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(StringConstants.copyRightText),
        ],
      ),
    );
  }
}
