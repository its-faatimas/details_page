import 'package:details_page/pages/smartphone_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  _CatalogPageState createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  final List iconTextPressed = List.generate(1000, (index) {
    return {
      "icon": [
        'assets/icons/phone_android.svg',
        'assets/icons/watch.svg',
        'assets/icons/headset.svg',
        'assets/icons/tablet_mac.svg',
        'assets/icons/tablet_mac.svg',
        'assets/icons/tablet_mac.svg',
        'assets/icons/tablet_mac.svg',
      ],
      "title": [
        "Smartfonlar",
        'Smartwatch',
        'Quloqchinlar',
        'Planshetlar',
        'Xotira kartalari',
        'Planshetlar',
        'Planshetlar'
      ],
      "onPressed": ['']
    };
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        'Katalog',
        style: GoogleFonts.roboto(
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
          color: const Color(0xff0A0A0A),
        ),
      ),
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
    return ListView.builder(
        itemCount: 7,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Card(
              elevation: 0,
              margin: EdgeInsets.all(0),
              child: ListTile(
                  title: Text(iconTextPressed[index]['title'][index],
                      style: GoogleFonts.roboto(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff0A0A0A))),
                  leading: CircleAvatar(
                    radius: 24.r,
                    backgroundColor: Color(0xffF6F8FA),
                    child:
                        SvgPicture.asset(iconTextPressed[index]['icon'][index]),
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      CupertinoIcons.forward,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SmartphonePage()),
                      );
                    },
                  )));
        });
  }
}
