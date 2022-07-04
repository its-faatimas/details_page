import 'package:details_page/models/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListWidget extends StatefulWidget {
  final PageController controller;
  final int current;
  const ListWidget({Key? key, required this.controller, required this.current})
      : super(key: key);

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  final PageController _pageController = PageController();
  int _currentImage = 0;
  int _currentPage = 0;

  late PageController _topController;
  late int _pageIndex;
  @override
  void initState() {
    super.initState();
    _topController = widget.controller;
    _pageIndex = widget.current;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          IconButton(
            icon: const Icon(CupertinoIcons.back),
            onPressed: () {
              if (_currentPage >= 0) {
                _pageController.jumpToPage(_currentPage - 1);
              }
            },
          ),
          Expanded(
            child: PageView(
              onPageChanged: (v) => _currentPage = v,
              controller: _pageController,
              children: [
                _imageList(0),
                _imageList(4),
                _imageList(7),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(CupertinoIcons.forward),
            onPressed: () {
              if (_currentPage < 2) {
                _pageController.jumpToPage(_currentPage + 1);
              }
            },
          ),
        ],
      ),
    );
  }

  Row _imageList(int from) => Row(
        children: [
          Expanded(child: _image(from)),
          Expanded(child: _image(from + 1)),
          Expanded(child: _image(from + 2)),
          Expanded(child: _image(from + 3)),
        ],
      );

  Widget _image(int index) => InkWell(
        onTap: () => setState(() {
          _pageIndex = index;
          _topController.animateToPage(index,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn);
        }),
        child: Container(
          height: 64,
          width: 64,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                  color: _pageIndex == index
                      ? Colors.deepOrange
                      : Colors.transparent),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageList[index]),
              )),
        ),
      );
}
