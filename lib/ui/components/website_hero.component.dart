import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imihirpaldhikar/functions/url.function.dart';
import 'package:imihirpaldhikar/managers/responsive_page.manager.dart';
import 'package:imihirpaldhikar/ui/widgets/link_button.widget.dart';

class WebsiteHero extends StatefulWidget {
  const WebsiteHero({Key? key}) : super(key: key);

  @override
  _WebsiteHeroState createState() => _WebsiteHeroState();
}

class _WebsiteHeroState extends State<WebsiteHero> {
  double top = 0.0;
  bool isCollapsed = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        top = constraints.biggest.height;

        if (top == 56) {
          isCollapsed = true;
        } else {
          isCollapsed = false;
        }

        return ResponsivePageManager(
          mobile: FlexibleSpaceBar(
            titlePadding: const EdgeInsets.only(left: 0.0, right: 0.0),
            title: Visibility(
              visible: isCollapsed,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.primary,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    margin: const EdgeInsets.only(
                      left: 20,
                      right: 15,
                      top: 10,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Icon(
                        Icons.menu,
                        color: Theme.of(context).colorScheme.primary,
                        size: 25,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Mihir Paldhikar',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            background: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Theme.of(context).colorScheme.background,
              child: Stack(
                children: [
                  Positioned(
                    top: -10,
                    left: -10,
                    child: Opacity(
                      opacity: 0.2,
                      child: Blob.fromID(
                        id: const ['6-6-1481'],
                        styles: BlobStyles(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        size: 100,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -10,
                    right: -10,
                    child: Opacity(
                      opacity: 0.2,
                      child: Blob.fromID(
                        id: const ['6-6-953996'],
                        styles: BlobStyles(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        size: 100,
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.width / 20,
                    right: MediaQuery.of(context).size.width / 10,
                    child: Opacity(
                      opacity: 0.2,
                      child: Blob.fromID(
                        id: const ['6-6-76'],
                        styles: BlobStyles(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        size: MediaQuery.of(context).size.width / 2,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 4,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Image.asset(
                                      'assets/jpg/profile.jpg',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  AutoSizeText(
                                    'I am',
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      fontSize: 15,
                                    ),
                                  ),
                                  AutoSizeText(
                                    'Mihir Paldhikar',
                                    style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const AutoSizeText(
                                        'A ',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      AnimatedTextKit(
                                        totalRepeatCount: 10,
                                        animatedTexts: [
                                          TyperAnimatedText(
                                            'Programmer',
                                            textStyle: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                          TyperAnimatedText(
                                            'Youtuber',
                                            textStyle: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                          TyperAnimatedText(
                                            'Active Learner',
                                            textStyle: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                      right: 10,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            FloatingActionButton(
                                              tooltip: 'My GitHub Profile',
                                              onPressed: () {
                                                launchURL(
                                                    url: 'https://github'
                                                        '.com/imihirpaldhikar');
                                              },
                                              child: const FaIcon(
                                                FontAwesomeIcons.github,
                                              ),
                                            ),
                                            FloatingActionButton(
                                              tooltip: 'My Instagram Profile',
                                              onPressed: () {
                                                launchURL(
                                                    url: 'https://instagram'
                                                        '.com/imihirpaldhikar');
                                              },
                                              child: const FaIcon(
                                                FontAwesomeIcons.instagram,
                                              ),
                                            ),
                                            FloatingActionButton(
                                              tooltip: 'My Youtube Channel',
                                              onPressed: () {
                                                launchURL(
                                                    url:
                                                        'https://www.youtube.com/channel/UCGZKWMf5nOIhhUBUAdwW4Fg');
                                              },
                                              child: const FaIcon(
                                                FontAwesomeIcons.youtube,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            FloatingActionButton(
                                              tooltip: 'My Twitter Profile',
                                              onPressed: () {
                                                launchURL(
                                                    url: 'https://twitter'
                                                        '.com/iMihirPaldhikar');
                                              },
                                              child: const FaIcon(
                                                FontAwesomeIcons.twitter,
                                              ),
                                            ),
                                            FloatingActionButton(
                                              tooltip: 'My LinkedIn Profile',
                                              onPressed: () {
                                                launchURL(
                                                    url:
                                                        'https://www.linkedin.com/in/imihirpaldhikar/');
                                              },
                                              child: const FaIcon(
                                                FontAwesomeIcons.linkedin,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const LinkButton(
                                    isLinkActive: false,
                                    route: '/',
                                    title: 'My Resume',
                                    tooltip: 'Checkout My Resume',
                                    height: 40,
                                    width: 150,
                                    setMargin: false,
                                    padding: EdgeInsets.only(
                                      top: 10,
                                      bottom: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          tablet: Container(),
          desktop: FlexibleSpaceBar(
            title: Visibility(
              visible: isCollapsed,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Mihir Paldhikar',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            collapseMode: CollapseMode.parallax,
            background: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Theme.of(context).colorScheme.background,
              child: Stack(
                children: [
                  Positioned(
                    top: -100,
                    left: -100,
                    child: Opacity(
                      opacity: 0.2,
                      child: Blob.fromID(
                        id: const ['6-6-1481'],
                        styles: BlobStyles(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        size: 400,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -10,
                    right: -10,
                    child: Opacity(
                      opacity: 0.2,
                      child: Blob.fromID(
                        id: const ['6-6-953996'],
                        styles: BlobStyles(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        size: 100,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.width / 20,
                    right: MediaQuery.of(context).size.width / 10,
                    child: Opacity(
                      opacity: 0.2,
                      child: Blob.fromID(
                        id: const ['6-6-76'],
                        styles: BlobStyles(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        size: MediaQuery.of(context).size.width / 2.5,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 4,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    'I am',
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      fontSize: 30,
                                    ),
                                  ),
                                  AutoSizeText(
                                    'Mihir Paldhikar',
                                    style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontSize: 70,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const AutoSizeText(
                                        'A ',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      AnimatedTextKit(
                                        totalRepeatCount: 10,
                                        animatedTexts: [
                                          TyperAnimatedText(
                                            'Programmer',
                                            textStyle: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                          TyperAnimatedText(
                                            'Youtuber',
                                            textStyle: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                          TyperAnimatedText(
                                            'Active Learner',
                                            textStyle: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        tooltip: 'My GitHub Profile',
                                        onPressed: () {
                                          launchURL(
                                              url: 'https://github'
                                                  '.com/imihirpaldhikar');
                                        },
                                        child: const FaIcon(
                                          FontAwesomeIcons.github,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      FloatingActionButton(
                                        tooltip: 'My Instagram Profile',
                                        onPressed: () {
                                          launchURL(
                                              url: 'https://instagram'
                                                  '.com/imihirpaldhikar');
                                        },
                                        child: const FaIcon(
                                          FontAwesomeIcons.instagram,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      FloatingActionButton(
                                        tooltip: 'My Youtube Channel',
                                        onPressed: () {
                                          launchURL(
                                              url:
                                                  'https://www.youtube.com/channel/UCGZKWMf5nOIhhUBUAdwW4Fg');
                                        },
                                        child: const FaIcon(
                                          FontAwesomeIcons.youtube,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      FloatingActionButton(
                                        tooltip: 'My Twitter Profile',
                                        onPressed: () {
                                          launchURL(
                                              url: 'https://twitter'
                                                  '.com/iMihirPaldhikar');
                                        },
                                        child: const FaIcon(
                                          FontAwesomeIcons.twitter,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      FloatingActionButton(
                                        tooltip: 'My LinkedIn Profile',
                                        onPressed: () {
                                          launchURL(
                                              url:
                                                  'https://www.linkedin.com/in/imihirpaldhikar/');
                                        },
                                        child: const FaIcon(
                                          FontAwesomeIcons.linkedin,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const LinkButton(
                                    isLinkActive: false,
                                    route: '/',
                                    title: 'My Resume',
                                    tooltip: 'Checkout My Resume',
                                    height: 40,
                                    width: 150,
                                    setMargin: false,
                                    padding: EdgeInsets.only(
                                      top: 10,
                                      bottom: 10,
                                    ),
                                  ),
                                ],
                              ),
                              Image.asset(
                                'assets/jpg/hero.png',
                                width: MediaQuery.of(context).size.width / 3.4,
                                height: MediaQuery.of(context).size.width / 3.5,
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
