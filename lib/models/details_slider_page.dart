import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsSliderPage extends StatefulWidget {
  const DetailsSliderPage({Key? key}) : super(key: key);

  @override
  State<DetailsSliderPage> createState() => _DetailsSliderPageState();
}

class _DetailsSliderPageState extends State<DetailsSliderPage> {
  late double _width;
  late double _height;
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final imageList = [
    'https://unsplash.com/photos/8l9VxXI28tY.jpg',
    'https://unsplash.com/photos/-haAxbjiHds.jpg',
    'https://unsplash.com/photos/JYGnB9gTCls.jpg'
  ];

  double? screenWidth;

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery
        .of(context)
        .size
        .width;
    _height = MediaQuery
        .of(context)
        .size
        .width;
    return Column(children: [
      SizedBox(
        child: CarouselSlider.builder(
          carouselController: _controller,
          itemCount: 15,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) =>
              Container(
                color: Colors.yellow,
                height: 373,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                margin: const EdgeInsets.symmetric(horizontal: 6.92),
                child: Text(itemIndex.toString()),
              ),
          options: CarouselOptions(
            height: 280,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: false,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              12,
                  (index) =>
                  GestureDetector(
                    onTap: () {
                      _controller.animateToPage(index);
                      setState(() {
                        _current = index;
                      });
                    },
                    child: Row(
                      children: [
                        Icon(CupertinoIcons.back),
                        Container(
                          width: 64.0,
                          height: 64.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              color: (Theme
                                  .of(context)
                                  .brightness ==
                                  Brightness.dark
                                  ? Colors.white
                                  : Colors.black)
                                  .withOpacity(_current == index ? 0.9 : 0.4)),
                        ),
                        Icon(CupertinoIcons.forward),
                      ],
                    ),
                  )),
        ),
      )
    ]);
  }

}
