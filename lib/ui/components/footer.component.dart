import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imihirpaldhikar/ui/widgets/footer_link.widget.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      width: double.infinity,
      height: 250,
      margin: const EdgeInsets.only(
        bottom: 20,
        top: 60,
      ),
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 20,
      ),
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
                linkName: 'GitHub',
                linkURL: 'https://github.com/imihirpaldhikar',
                toolTipMsg: 'Connect with me on Github.',
              ),
              footerLink(
                linkIcon: FontAwesomeIcons.instagram,
                linkName: 'Instagram',
                linkURL: 'https://instagram.com/imihirpaldhikar',
                toolTipMsg: 'Connect with me on Instagram.',
              ),
              footerLink(
                linkIcon: FontAwesomeIcons.youtube,
                linkName: 'YouTube',
                linkURL:
                    'https://www.youtube.com/channel/UCGZKWMf5nOIhhUBUAdwW4Fg',
                toolTipMsg: 'Connect with me on YouTube.',
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              footerLink(
                linkIcon: FontAwesomeIcons.twitter,
                linkName: 'Twitter',
                linkURL: 'https://twitter.com/iMihirPaldhikar',
                toolTipMsg: 'Connect with me on Twitter.',
              ),
              footerLink(
                linkIcon: FontAwesomeIcons.linkedin,
                linkName: 'LinkedIn',
                linkURL: 'https://linkedin.com/in/imihirpaldhikar',
                toolTipMsg: 'Connect with me on LinkedIn.',
              ),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                'Made With  ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              FaIcon(
                FontAwesomeIcons.solidHeart,
                color: Colors.red,
                size: 15,
              ),
              Text(
                '  &  Flutter',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Copyright © 2021 Mihir Paldhikar',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
