import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmartphonePage extends StatefulWidget {
  const SmartphonePage({Key? key}) : super(key: key);

  @override
  _SmartphonePageState createState() => _SmartphonePageState();
}

class _SmartphonePageState extends State<SmartphonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      centerTitle: false,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        'Smartfonlar',
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
            'assets/icons/filter.svg',
          ),
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

  getBody() {
    return GridView.count(
  primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  crossAxisCount: 2,
  scrollDirection: Axis.vertical,
  children: <Widget>[
   getItemList(),
    
 
  ],
);
  }
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
