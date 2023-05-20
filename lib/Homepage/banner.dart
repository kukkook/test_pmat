import 'package:flutter/material.dart';
import 'package:flutter_test_pmat/responsive.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class BannerPage extends StatefulWidget {
  @override
  _BannerState createState() => _BannerState();
}

class _BannerState extends State<BannerPage> {
  CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          // width: 1440,
          color: Colors.white,
          child: Center(
            child: Container(
                // width: Responsive.isDesktop(context)
                //     ? 1440
                //     : Responsive.isTablet(context)
                //         ? 768
                //         : 375,
                color: Colors.white,
                child: Stack(
                  children: [
                    Container(
                            child: CarouselSlider(
                                carouselController: _controller,
                                options: CarouselOptions(
                                  viewportFraction: 1.35,
                                  height: Responsive.isDesktop(context)?500:Responsive.isTablet(context)?300:180,
                                  autoPlay: true,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      _current = index;
                                    });
                                  },
                                ),
                                items: [
                                  Container(
                                    width: 1440,
                                    // color: Colors.amber,
                                    child: Image.asset(
                                      "assets/header/banner2.png",
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                  Container(
                                    width: 1440,
                                    // color: Colors.amber,
                                    child: Image.asset(
                                      "assets/header/service.png",
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                  Container(
                                    width: 1440,
                                    // color: Colors.amber,
                                    child: Image.asset(
                                      "assets/header/head.png",
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ]),
                          )
                        ],
                )),
          )),
    );
  }
}
