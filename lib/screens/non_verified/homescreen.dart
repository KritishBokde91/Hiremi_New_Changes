import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pre_dashboard/widgets/non_verified/custom_drawer.dart';

import '../../widgets/non_verified/headline.dart';
import '../../widgets/non_verified/hiremifeatured.dart';
import '../notification_setting_screens/notificationscreen.dart';
import '../../widgets/non_verified/buildpageindicator.dart';
import '../../widgets/non_verified/flexiappbar.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final ScrollController _scrollController = ScrollController();
  bool _isAppBarExpanded = true;
  int currentIndex = 0;
  static const List<Color> askExpertGradient = [
    Color(0xFF9CCAFF),
    Colors.white,
    Color(0xFFCCE4FF),
  ];
  static const List<Color> internshipGradient = [
    Color(0xFF8DDDB8),
    Colors.white,
    Color(0xFFCCEEDE),
  ];
  static const List<Color> statusGradient = [
    Color(0xFFFFAAAA),
    Colors.white,
    Color(0xFFFFD6D6),
  ];
  static const List<Color> freshersGradient = [
    Color(0xFFFFBB8E),
    Colors.white,
    Color(0xFFFFE1D1),
  ];
  static const List<Color> hiremi360Gradient = [
    Color(0xFFFFDB8E),
    Colors.white,
    Color(0xFFFFEED1),
  ];
  static const List<Color> experienceGradient = [
    Color(0xFFC4A6FF),
    Colors.white,
    Color(0xFFE6D9FF),
  ];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_handleScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _handleScroll() {
    final isExpanded = _scrollController.offset <= 30;
    if (_isAppBarExpanded != isExpanded) {
      setState(() {
        _isAppBarExpanded = isExpanded;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final cardTitleSize = size.width * 0.035;
    final cardSubtitleSize = size.width * 0.026;
    List<Widget> cards = [
      Hiremifeatured(
          title: 'Ask Expert',
          subtitle: 'Ask Anything Get\nExpert Guidance',
          imagePath: 'assets/images/askExpert.png',
          gradientColors: askExpertGradient,
          onTap: () {},
          titleSize: cardTitleSize,
          subtitleSize: cardSubtitleSize),
      Hiremifeatured(
          title: 'Internship',
          subtitle: 'Gain Practical\nExperience',
          imagePath: 'assets/images/internship.png',
          gradientColors: internshipGradient,
          onTap: () {},
          titleSize: cardTitleSize,
          subtitleSize: cardSubtitleSize),
      Hiremifeatured(
          title: 'Status',
          subtitle: 'Apply\nMentorship\n& more',
          imagePath: 'assets/images/statusb.png',
          gradientColors: statusGradient,
          onTap: () {},
          titleSize: cardTitleSize,
          subtitleSize: cardSubtitleSize),
      Hiremifeatured(
          title: 'Freshers',
          subtitle: 'Gain\nPractical\nExperience',
          imagePath: 'assets/images/askExpert.png',
          gradientColors: freshersGradient,
          onTap: () {},
          titleSize: cardTitleSize,
          subtitleSize: cardSubtitleSize),
      Hiremifeatured(
          title: 'Hiremi 360',
          subtitle: 'Gain\nPractical\nExperience',
          imagePath: 'assets/images/hiremi360.png',
          gradientColors: hiremi360Gradient,
          onTap: () {},
          titleSize: cardTitleSize,
          subtitleSize: cardSubtitleSize),
      Hiremifeatured(
          title: 'Experience',
          subtitle: 'Explore diverse careers',
          imagePath: 'assets/images/experience.png',
          gradientColors: experienceGradient,
          onTap: () {},
          titleSize: cardTitleSize,
          subtitleSize: cardSubtitleSize),
    ];
    CarouselSliderController controller = CarouselSliderController();
    return Scaffold(
      extendBody: true,
      drawer: const CustomDrawer(),
      body: CustomScrollView(
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(_isAppBarExpanded ? 40 : 0))),
            title: Image.asset(
              'assets/images/logo2.png',
              height: 50,
            ),
            centerTitle: true,
            floating: false,
            pinned: true,
            expandedHeight: size.height * 0.26,
            backgroundColor: const Color(0xFF0F3CC9),
            iconTheme: const IconThemeData(
              color: Colors.white,
              size: 36,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Notificationscreen(),
                        ));
                  },
                  icon: Stack(
                    children: [
                      const Icon(
                        Icons.notifications_outlined,
                        color: Colors.white,
                        size: 28,
                      ),
                      Positioned(
                        top: size.height * 0.001,
                        right: size.width * 0.008,
                        child: Container(
                          height: size.height * 0.015,
                          width: size.width * 0.033,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.5),
                              color: const Color(0xFFDBE4FF)),
                          child: Center(
                              child: Text(
                                '3',
                                style:
                                TextStyle(fontSize: size.width * 0.023, fontWeight: FontWeight.bold, color: const Color(0xFF0F3CC9)),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
            flexibleSpace: const Flexiappbar(),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              CarouselSlider.builder(
                  carouselController: controller,
                  itemCount: 4,
                  itemBuilder: (context, index, realIndex) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Image.asset('assets/images/carouselImage.png'),
                    );
                  },
                  options: CarouselOptions(
                    height: 140,
                    viewportFraction: 0.95,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    4, // Number of slides
                    (index) =>
                        Buildpageindicator(isActive: currentIndex == index)),
              ),
              const Headline(
                  name: "Hiremi's Featured",
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ]),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: cards[index],
              ),
              childCount: cards.length,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.8),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Headline(
                  name: "Jobs for You",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5, // Number of items
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Card(
                          color: const Color(0xFFD1E4FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: SizedBox(
                            width: 260,
                            height: 190,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/logo.png',
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
