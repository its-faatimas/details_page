import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool isChecked = false;
  bool isChecked2 = false;
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    //   Color getColor(Set<MaterialState> states) {
    //     const Set<MaterialState> interactiveStates = <MaterialState>{
    //       MaterialState.pressed,
    //       MaterialState.hovered,
    //       MaterialState.focused,
    //     };
    //     if (states.any(interactiveStates.contains)) {
    //       return Colors.green;
    //     }
    //     return Colors.white;
    //   }

    return Scaffold(
      appBar: getAppBar(),
      body: getExpansionTile(),
    );
  }

  getExpansionTile() {
    return SingleChildScrollView(
        child: Card(
            child: Column(
      children: <Widget>[
        ExpansionTile(
          title: getText('Brands'),
          children: <Widget>[
            getCheckbox(),
          ],
        ),
        ExpansionTile(
          title: getText('Quality'),
          children: <Widget>[
            getCheckbox(),
          ],
          onExpansionChanged: (bool expanded) {
            setState(() => _customTileExpanded = expanded);
          },
        ),
        ExpansionTile(
          title: getText('Brands'),
          children: <Widget>[
            getCheckbox(),
          ],
        ),
      ],
    )));
  }

  getCheckbox() {
    return Card(
        elevation: 0,
        margin: EdgeInsets.only(
          left: 27,
        ),
        color: Colors.white,
        child: Column(
          children: [
            CheckboxListTile(
              selected: false,
              activeColor: Colors.transparent,
              side: BorderSide(color: Colors.green.shade900),
              title: Text('All'),
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: Colors.green,
              //    activeColor: MaterialStateProperty.resolveWith(getColor),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('All'),
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: Colors.white,
              //    activeColor: MaterialStateProperty.resolveWith(getColor),
              value: isChecked2,
              onChanged: (bool? value) {
                setState(() {
                  isChecked2 = value!;
                });
              },
            ),
          ],
        ));
  }

  getText(String title) {
    return Text(
      title,
      style: GoogleFonts.mulish(
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      centerTitle: false,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            CupertinoIcons.arrow_left,
            color: Colors.black,
          )),
      title: Text(
        'Filter',
        style: GoogleFonts.roboto(
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
          color: const Color(0xff0A0A0A),
        ),
      ),
    );
  }
}
