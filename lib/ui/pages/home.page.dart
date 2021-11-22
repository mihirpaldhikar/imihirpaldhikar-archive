import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:imihirpaldhikar/functions/url.function.dart';
import 'package:imihirpaldhikar/managers/links.manager.dart';
import 'package:imihirpaldhikar/managers/responsive_page.manager.dart';
import 'package:imihirpaldhikar/models/youtube.model.dart';
import 'package:imihirpaldhikar/service/youtube.service.dart';
import 'package:imihirpaldhikar/ui/components/footer.component.dart';
import 'package:imihirpaldhikar/ui/components/website_hero.component.dart';
import 'package:imihirpaldhikar/ui/widgets/image_card.widget.dart';
import 'package:imihirpaldhikar/ui/widgets/link_button.widget.dart';
import 'package:imihirpaldhikar/ui/widgets/outline_card.widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _youtubeService = YouTubeService();
  late Future<YoutubeModel?> _youtubeData;
  bool _isQuotaExceeded = false;

  @override
  void initState() {
    super.initState();
    _youtubeData = _getYoutubeVideos();
  }

  Future<YoutubeModel?> _getYoutubeVideos() async {
    final youtubeModel = await _youtubeService.getLatestVideos();
    if (youtubeModel == null) {
      setState(() {
        _isQuotaExceeded = true;
      });
      return null;
    }
    setState(() {
      _isQuotaExceeded = false;
    });
    return youtubeModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            top: 30,
          ),
          children: LinksManager(context).getLinks(
            currentRoute: ModalRoute.of(context)?.settings.name,
          ),
        ),
      ),
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                automaticallyImplyLeading: false,
                titleSpacing: 0,
                expandedHeight: MediaQuery.of(context).size.height,
                floating: false,
                pinned: true,
                elevation: 0,
                actions: MediaQuery.of(context).size.width <= 600
                    ? [
                        const Visibility(
                          visible: true,
                          child: SizedBox(),
                        ),
                      ]
                    : LinksManager(context).getLinks(
                        currentRoute: ModalRoute.of(context)?.settings.name,
                      ),
                flexibleSpace: const WebsiteHero(),
              )
            ];
          },
          body: ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: ResponsivePageManager(
              mobile: _mobile(),
              tablet: Container(),
              desktop: _desktop(),
            ),
          ),
        ),
      ),
    );
  }

  _mobile() {
    return ListView(
      padding: const EdgeInsets.only(
        top: 50,
        left: 10,
        right: 10,
      ),
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 5,
            right: 5,
          ),
          child: SizedBox(
            child: OutlineCard(
              content: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Who am I?',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AutoSizeText(
                    'Hey there! \nI am Mihir Paldhikar. \n'
                    'Currently completing my Undergraduate '
                    'in Computer Science. I love to create new '
                    'projects and contribute to the open-source '
                    'projects. I am always learning about the new '
                    'stuff related to the computer, science as well '
                    'as IT World. I started programming 5 Years Ago when I was in my 9th Grade. '
                    'At first I created an Android App by learning from YouTube tutorials. The '
                    'app was a simple Flashlight app. As it was my very first attempt with the '
                    'programming in general my app got crashed and '
                    'did\'t work! obviously.',
                    minFontSize: 15,
                    maxLines: 30,
                    softWrap: true,
                    maxFontSize: 20,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 50,
            left: 5,
            right: 5,
          ),
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              child: OutlineCard(
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Technologies I Know',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AutoSizeText(
                      'Currently, I am Learning JetPack Compose, Flutter. For most of my projects, '
                      'I use either JetPack Compose or Flutter. I have created a Project called '
                      'Bookology (Available on Google Play Store) with Flutter.\n'
                      'You can read more about my projects in the Project Section.',
                      minFontSize: 15,
                      maxLines: 10,
                      softWrap: true,
                      maxFontSize: 20,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const LinkButton(
                      isLinkActive: true,
                      route: '/',
                      title: 'My Projects',
                      tooltip: 'Checkout My Projects',
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
              ),
            ),
          ),
        ),
        Visibility(
          visible: !_isQuotaExceeded,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 50,
              left: 5,
              right: 5,
            ),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                child: OutlineCard(
                  content: FutureBuilder<YoutubeModel?>(
                    initialData: null,
                    future: _youtubeData,
                    builder: (BuildContext context,
                        AsyncSnapshot<YoutubeModel?> youtube) {
                      if (youtube.connectionState == ConnectionState.done) {
                        if (youtube.hasError) {
                          return const Text(
                            'An Error Occurred while loading '
                            'videos',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          );
                        }
                        if (youtube.hasData) {
                          return Column(
                            children: [
                              Text(
                                'My Latest Youtube Videos',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              SizedBox(
                                height: youtube.data!.items!.length <= 1
                                    ? 250
                                    : 600,
                                child: ListView.builder(
                                  itemCount: youtube.data!.items!.length,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      borderRadius: BorderRadius.circular(30),
                                      onTap: () {
                                        launchURL(
                                          url: 'https://www'
                                              '.youtube'
                                              '.com/watch?v=${youtube.data!.items![index].id!.videoId}',
                                        );
                                      },
                                      child: ImageCard(
                                        height: 250,
                                        alignment: Alignment.bottomLeft,
                                        backgroundImage: youtube
                                            .data!
                                            .items![index]
                                            .snippet!
                                            .thumbnails!
                                            .high!
                                            .url!,
                                        content: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            AutoSizeText(
                                              youtube.data!.items![index]
                                                  .snippet!.title!,
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),
                                              maxLines: 3,
                                              minFontSize: 15,
                                            ),
                                            const SizedBox(
                                              height: 30,
                                            ),
                                            LinkButton(
                                              isLinkActive: false,
                                              isRoute: false,
                                              route: 'https://www'
                                                  '.youtube'
                                                  '.com/watch?v=${youtube.data!.items![index].id!.videoId}',
                                              title: 'Watch',
                                              tooltip: 'Watch',
                                              height: 40,
                                              width: 150,
                                              setMargin: false,
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                                bottom: 10,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          );
                        }
                      }
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
        const Footer()
      ],
    );
  }

  _desktop() {
    return ListView(
      padding: const EdgeInsets.only(
        top: 50,
        left: 100,
        right: 100,
      ),
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.19,
            right: MediaQuery.of(context).size.width * 0.19,
          ),
          child: SizedBox(
            child: OutlineCard(
              content: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Who am I?',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AutoSizeText(
                    'Hey there! \nI am Mihir Paldhikar. \n'
                    'Currently completing my Undergraduate '
                    'in Computer Science. I love to create new '
                    'projects and contribute to the open-source '
                    'projects. I am always learning about the new '
                    'stuff related to the computer, science as well '
                    'as IT World. I started programming 5 Years Ago when I was in my 9th Grade. '
                    'At first I created an Android App by learning from YouTube tutorials. The '
                    'app was a simple Flashlight app. As it was my very first attempt with the '
                    'programming in general my app got crashed and '
                    'did\'t work! obviously.',
                    minFontSize: 15,
                    maxLines: 10,
                    softWrap: true,
                    maxFontSize: 20,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 100,
            left: MediaQuery.of(context).size.width * 0.19,
            right: MediaQuery.of(context).size.width * 0.19,
          ),
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              child: OutlineCard(
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Technologies I Know',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AutoSizeText(
                      'Currently, I am Learning JetPack Compose, Flutter. For most of my projects, '
                      'I use either JetPack Compose or Flutter. I have created a Project called '
                      'Bookology (Available on Google Play Store) with Flutter.\n'
                      'You can read more about my projects in the Project Section.',
                      minFontSize: 15,
                      maxLines: 10,
                      softWrap: true,
                      maxFontSize: 20,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const LinkButton(
                      isLinkActive: true,
                      route: '/',
                      title: 'My Projects',
                      tooltip: 'Checkout My Projects',
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
              ),
            ),
          ),
        ),
        Visibility(
          visible: !_isQuotaExceeded,
          child: Padding(
            padding: EdgeInsets.only(
              top: 100,
              left: MediaQuery.of(context).size.width * 0.19,
              right: MediaQuery.of(context).size.width * 0.19,
            ),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                child: OutlineCard(
                  content: FutureBuilder<YoutubeModel?>(
                    initialData: null,
                    future: _youtubeData,
                    builder: (BuildContext context,
                        AsyncSnapshot<YoutubeModel?> youtube) {
                      if (youtube.connectionState == ConnectionState.done) {
                        if (youtube.hasError) {
                          return const Text(
                            'An Error Occurred while loading '
                            'videos',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          );
                        }
                        if (youtube.hasData) {
                          return Column(
                            children: [
                              Text(
                                'My Latest Youtube Videos',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              SizedBox(
                                height: youtube.data!.items!.length <= 1
                                    ? 350
                                    : 600,
                                child: ListView.builder(
                                  itemCount: youtube.data!.items!.length,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      borderRadius: BorderRadius.circular(30),
                                      onTap: () {
                                        launchURL(
                                          url: 'https://www'
                                              '.youtube'
                                              '.com/watch?v=${youtube.data!.items![index].id!.videoId}',
                                        );
                                      },
                                      child: ImageCard(
                                        height: 300,
                                        alignment: Alignment.bottomLeft,
                                        backgroundImage: youtube
                                            .data!
                                            .items![index]
                                            .snippet!
                                            .thumbnails!
                                            .high!
                                            .url!,
                                        content: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            AutoSizeText(
                                              youtube.data!.items![index]
                                                  .snippet!.title!,
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),
                                              maxLines: 3,
                                              minFontSize: 15,
                                            ),
                                            const SizedBox(
                                              height: 30,
                                            ),
                                            LinkButton(
                                              isLinkActive: false,
                                              isRoute: false,
                                              route: 'https://www'
                                                  '.youtube'
                                                  '.com/watch?v=${youtube.data!.items![index].id!.videoId}',
                                              title: 'Watch',
                                              tooltip: 'Watch',
                                              height: 40,
                                              width: 150,
                                              setMargin: false,
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                                bottom: 10,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          );
                        }
                      }
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
        const Footer()
      ],
    );
  }
}
