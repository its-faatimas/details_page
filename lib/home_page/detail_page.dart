import 'package:details_page/models/details_slider_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: ScreenUtil.defaultSize.height,
            ),
            child: getBody(),
          )),
      // bottomNavigationBar: getBottomNavBar(),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        'Batafsil',
        style: GoogleFonts.roboto(
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
          color: const Color(0xff0A0A0A),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/favorite_border.svg',
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/share.svg'),
          iconSize: 20,
        ),
      ],
      leading: IconButton(
        icon: const Icon(
          CupertinoIcons.arrow_left,
          color: Color(0xff0A0A0A),
        ),
        onPressed: () {},
      ),
    );
  }

  Column getBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetailsSliderPage(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Смартфон Apple iphone 13 Pro Max 512 GB Graphite',
                    style: GoogleFonts.roboto(
                        fontSize: 20.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      RatingBar.builder(
                        itemSize: 15,
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0.sp),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Fikrlar(34)',
                          style: GoogleFonts.lato(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.green),
                        ),
                      ),
                      Spacer(),
                      const Text(
                        "26 689 520",
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough),
                      ),
                      SizedBox(width: 2),
                      Text("so'm"),
                    ],
                  ),
                  Row(children: [
                    Text(
                      "18 664 000 so’m",
                      style: GoogleFonts.roboto(
                          fontSize: 24.sp, fontWeight: FontWeight.w700),
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: 7.5.sm,
                      backgroundColor: Colors.green,
                    ),
                    SizedBox(
                      width: 9.w,
                    ),
                    Text(
                      'Omborda mavjud',
                      style: GoogleFonts.lato(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ]),
                  SizedBox(
                    height: 32.h,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0.sp),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/korzinka.svg',
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 12.sp,
                        ),
                        Text(
                          'Savatchaga',
                          style: GoogleFonts.lato(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.0.h,
                  ),
                  Text(
                    'Цвет',
                    style: GoogleFonts.roboto(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        getColors(const Color(0xff576755), 'Alpine Green'),
                        SizedBox(
                          width: 6.w,
                        ),
                        getColors(const Color(0xffF2F3EE), 'Silver'),
                        SizedBox(
                          width: 6.w,
                        ),
                        getColors(const Color(0xff5D5C56), 'Graphite'),
                        SizedBox(
                          width: 6.w,
                        ),
                        getColors(const Color(0xffADC5DB), 'Sierra Blue'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  // getDeliveryTime(),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    'Описание',
                    style: GoogleFonts.roboto(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  SizedBox(height: 16.h),
                  RichText(
                      text: TextSpan(
                          text:
                              """Смартфон Apple iPhone 13 Pro Max 512 GB Graphite
Apple iPhone 13 Pro Max оснащен передовыми технологиями, значительно расширяющими функциональные возможности девайса. На тыльной стороне девайса расположен инновационный""",
                          style: GoogleFonts.roboto(
                              fontSize: 14.sp,
                              height: 1.25.h,
                              fontWeight: FontWeight.w400,
                              color: Colors.black))),
                  SizedBox(
                    height: 16.0.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Основные характеристики',
                        style: GoogleFonts.roboto(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      IconButton(
                        icon: Icon(CupertinoIcons.forward),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0.h,
                  ),
                  //       Container(height: 36.h, color: Color(0xffF6F8FA)),
                  //       SizedBox(height: 16.h),
                  //     ],
                  //   ),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 16.sp),
                  //   child: Text(
                  //     'Вместе с этим товаром покупают',
                  //     style: GoogleFonts.roboto(
                  //         fontSize: 16.sp, fontWeight: FontWeight.w700),
                  //   ),
                  // ),
                  // SizedBox(height: 18.h),
                  // getItemList(),
                  // SizedBox(height: 16.h),
                  Container(height: 36.h, color: Color(0xffF6F8FA)),
                  // SizedBox(height: 16.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.sp),
                    child: Text(
                      'Похожие товары (16)',
                      style: GoogleFonts.roboto(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 18.h),
                  getItemList(),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  getColors(Color color, String text) {
    return Container(
      height: 62.h,
      width: 80.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.sp),
          border: Border.all(
              color: Colors.grey.shade300,
              style: BorderStyle.solid,
              width: 1.w)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 12.sp,
            backgroundColor: color,
          ),
          Text(
            text,
            style:
                GoogleFonts.lato(fontSize: 10.sp, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }

  // getDeliveryTime() {
  //   return Container(
  //     padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 11.sp),
  //     // margin: EdgeInsets.only(left: 16, right: 16),
  //     height: 64.h,
  //     decoration: BoxDecoration(
  //       color: const Color(0xffE1F5E9),
  //       borderRadius: BorderRadius.circular(12.sp),
  //     ),
  //     child: Row(
  //       children: [
  //         CircleAvatar(
  //           backgroundColor: Colors.white,
  //           child: SvgPicture.asset('assets/icons/flag.svg'),
  //         ),
  //         SizedBox(
  //           width: 12.w,
  //         ),
  //         Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Text(
  //               'O’zbekiston bo’ylab yetkazib berish:',
  //               style: GoogleFonts.roboto(
  //                   fontSize: 14.sp,
  //                   fontWeight: FontWeight.w700,
  //                   color: Color(0xff0D1136)),
  //             ),
  //             SizedBox(
  //               height: 5.h,
  //             ),
  //             Text(
  //               '14 ish kuni',
  //               style: GoogleFonts.lato(
  //                   fontSize: 15.sp, fontWeight: FontWeight.w500),
  //             ),
  //           ],
  //         )
  //       ],
  //     ),
  //   );
  // }

  // getBottomNavBar() {
  //   return SafeArea(
  //     child: Container(
  //       padding: EdgeInsets.symmetric(vertical: 12.sp, horizontal: 16.sp),
  //       decoration: BoxDecoration(color: Colors.green),
  //       height: 48.h,
  //       child: Row(
  //         children: [
  //           SvgPicture.asset(
  //             'assets/icons/dona_korzinka.svg',
  //             color: Colors.white,
  //             height: 16.h,
  //             width: 12.w,
  //           ),
  //           SizedBox(width: 8.w),
  //           Text(
  //             '0 Dona',
  //             style: GoogleFonts.roboto(
  //                 fontSize: 12.sp,
  //                 fontWeight: FontWeight.w700,
  //                 color: Colors.white),
  //           ),
  //           Spacer(),
  //           Text(
  //             '12 023 000 so’m',
  //             style: GoogleFonts.roboto(
  //                 fontSize: 18.sp,
  //                 fontWeight: FontWeight.w400,
  //                 color: Colors.white),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

  getItems() {
    return Container(
        // padding: EdgeInsets.only(left: 12, right: 16),
        height: 278.h,
        width: 180.w,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color: Color(0xffEFF3F8),
                width: 0.45.w,
                style: BorderStyle.solid)),
        child: Column(
          children: [
            Container(
              height: 152.h,
              width: 152.w,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image:
                          NetworkImage('http://source.unsplash.com/random/1'),
                      fit: BoxFit.cover)),
              child: Stack(
                children: [
                  Positioned(
                    top: 8.24,
                    left: 12,
                    child: Container(
                      alignment: Alignment.center,
                      width: 38.w,
                      height: 24.h,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(6.r)),
                      child: Text(
                        '-20%',
                        style: GoogleFonts.lato(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            Padding(
                padding: EdgeInsets.only(left: 12, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Защитное стекло Whitestone Dome glass для',
                        style: GoogleFonts.roboto(
                            fontSize: 11.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                        maxLines: 2,
                        textAlign: TextAlign.start),
                    SizedBox(height: 6.h),
                    Text(
                      '12 023 000 so’m',
                      style: GoogleFonts.roboto(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      children: [
                        RatingBar.builder(
                          itemSize: 15,
                          initialRating: 0.5,
                          minRating: 0.5,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 1,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0.sp),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {},
                        ),
                        SizedBox(width: 6.w),
                        Text(
                          '(34)',
                          style: GoogleFonts.lato(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(child: SizedBox(height: 8.h)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "12 023 000 so’m",
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 10.sp),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(144.w, 30.h),
                        primary: Color(0xffF6F8FA),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0.sp),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/korzinka.svg',
                            height: 14.h,
                            width: 14.w,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 13.w,
                          ),
                          Expanded(
                            child: Text(
                              'Savatchaga',
                              style: GoogleFonts.lato(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))
          ],
        ));
  }

  getItemList() {
    return SizedBox(
        height: 295.h,
        
        child: ListView.builder(
          itemBuilder: (context, index) {
            return getItems();
          },
          itemCount: 10,
          padding: EdgeInsets.symmetric(horizontal: 16.sp),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
        ));
  }
}
