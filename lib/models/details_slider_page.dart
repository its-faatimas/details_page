import 'package:carousel_slider/carousel_slider.dart';
import 'package:details_page/models/data.dart';
import 'package:details_page/models/list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsSliderPage extends StatefulWidget {
  const DetailsSliderPage({Key? key}) : super(key: key);

  @override
  State<DetailsSliderPage> createState() => _DetailsSliderPageState();
}

class _DetailsSliderPageState extends State<DetailsSliderPage> {
  
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final _pageController = PageController();

 


  @override
  Widget build(BuildContext context) {
  
    return Column(children: [
     
      _showTop(),
      ListWidget(controller: _pageController, current: _current),
  
    ]);
  }

  SizedBox _showTop() => SizedBox(
        height: 400.h,
        child: PageView.builder(
          controller: _pageController,
          itemCount: imageList.length,
          onPageChanged: (i) => setState(() => _current = i),
          itemBuilder: (context, index) {
            String link = imageList[index];
            return Image.network(link, fit: BoxFit.cover);
          },
        ),
      );
}
