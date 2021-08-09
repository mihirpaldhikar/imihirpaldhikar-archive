import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imihirpaldhikar_portfolio/components/footer.component.dart';
import 'package:imihirpaldhikar_portfolio/constants/colors.constant.dart';
import 'package:imihirpaldhikar_portfolio/functions/url_launcher.function.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({Key? key}) : super(key: key);

  @override
  _MobileHomeState createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: constraints.copyWith(
            minHeight: constraints.maxHeight,
            maxHeight: double.infinity,
          ),
          child: IntrinsicHeight(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 9,
                        ),
                        AutoSizeText(
                          'Mihir Paldhikar',
                          style: TextStyle(
                            color: ColorsConstants.accentColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: ColorsConstants.secondaryColor,
                              onPressed: () async {
                                launchURL(
                                  url: 'https://github.com/imihirpaldhikar',
                                );
                              },
                              child: Icon(
                                FontAwesomeIcons.github,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.04,
                            ),
                            FloatingActionButton(
                              backgroundColor: ColorsConstants.secondaryColor,
                              onPressed: () async {
                                launchURL(
                                  url: 'https://twitter.com/imihirpaldhikar',
                                );
                              },
                              child: Icon(
                                FontAwesomeIcons.twitter,
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.04,
                            ),
                            FloatingActionButton(
                              backgroundColor: ColorsConstants.secondaryColor,
                              onPressed: () async {
                                launchURL(
                                  url: 'https://instagram.com/imihirpaldhikar',
                                );
                              },
                              child: Icon(
                                FontAwesomeIcons.instagram,
                                color: Colors.redAccent,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.04,
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
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.4,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              color: ColorsConstants.accentColor,
                              width: 1,
                            ),
                          ),
                          child: Icon(
                            FontAwesomeIcons.arrowDown,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Footer(),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
