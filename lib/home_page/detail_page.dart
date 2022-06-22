import 'package:details_page/models/details_slider_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late double _width;
  late double _height;
  int _current = 0;
  final CarouselController _controller = CarouselController();

  double? screenWidth;

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: getAppBar(),
        body: SingleChildScrollView(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.height,
              ),
              child: getBody(),
            )));
  }

  AppBar getAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        'Batafsil',
        style: GoogleFonts.roboto(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: const Color(0xff0A0A0A),
        ),
      ),
      actions: [
        (SvgPicture.asset(
          'assets/icons/favorite_border.svg',
        )),
        const SizedBox(
          width: 20.0,
        ),
        (SvgPicture.asset('assets/icons/share.svg')),
        const SizedBox(
          width: 18.0,
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
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const DetailsSliderPage(),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Смартфон Apple iphone 13 Pro Max 512 GB Graphite',
              style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
              maxLines: 2,
            ),
            const SizedBox(
              height: 10,
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
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
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
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.green),
                  ),
                ),
                const SizedBox(
                  width: 34,
                ),
                const Text(
                  "26 689 520 so’m",
                  style: TextStyle(decoration: TextDecoration.lineThrough),
                )
              ],
            ),
            Row(children: [
              Text(
                "18 664 000 so’m",
                style: GoogleFonts.roboto(
                    fontSize: 24, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                width: 31,
              ),
              const CircleAvatar(
                radius: 7.5,
                backgroundColor: Colors.green,
              ),
              const SizedBox(
                width: 9,
              ),
              Text(
                'Omborda mavjud',
                style: GoogleFonts.lato(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ]),
            const SizedBox(
              height: 31.17,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/icons/korzinka.svg',
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 12.13,
                  ),
                  Text(
                    'Savatchaga',
                    style: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Text(
              'Цвет',
              style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                getColors(const Color(0xff576755), 'Alpine Green'),
                const SizedBox(
                  width: 6,
                ),
                getColors(const Color(0xffF2F3EE), 'Silver'),
                const SizedBox(
                  width: 6,
                ),
                getColors(const Color(0xff5D5C56), 'Graphite'),
                const SizedBox(
                  width: 6,
                ),
                getColors(const Color(0xffADC5DB), 'Sierra Blue'),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            getDeliveryTime(),
            SizedBox(
              height: 16,
            ),
            Text(
              'Описание',
              style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            SizedBox(height: 16),
            RichText(
                text: TextSpan(
                    text: """Смартфон Apple iPhone 13 Pro Max 512 GB Graphite
Apple iPhone 13 Pro Max оснащен передовыми технологиями, значительно расширяющими функциональные возможности девайса. На тыльной стороне девайса расположен инновационный""",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        height: 1.25,
                        fontWeight: FontWeight.w400,
                        color: Colors.black))),
            SizedBox(
              height: 16.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Основные характеристики',
                  style: GoogleFonts.roboto(
                      fontSize: 16,
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
              height: 15.0,
            ),
            Container(height: 36, color: Color(0xffF6F8FA)),
            SizedBox(height: 16),
            Text(
              'Вместе с этим товаром покупают',
              style:
                  GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    ]);
  }

  getColors(Color color, String text) {
    return Container(
      height: 61,
      width: 80,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
              color: Colors.grey.shade300, style: BorderStyle.solid, width: 1)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 12,
            backgroundColor: color,
          ),
          Text(
            text,
            style: GoogleFonts.lato(fontSize: 10, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }

  getDeliveryTime() {
    return Container(
      padding: const EdgeInsets.only(left: 8, top: 11, bottom: 11),
      // margin: EdgeInsets.only(left: 16, right: 16),
      height: 64,
      width: 343,
      decoration: BoxDecoration(
        color: const Color(0xffE1F5E9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: SvgPicture.asset('assets/icons/flag.svg'),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'O’zbekiston bo’ylab yetkazib berish:',
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff0D1136)),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '14 ish kuni',
                style:
                    GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ],
          )
        ],
      ),
    );
  }

  getBottomNavBar() {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/icons/dona_korzinka.svg'),
      ),

    ]);
  }
}

