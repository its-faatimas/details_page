import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  ListWidget({Key? key}) : super(key: key);

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        children: [
          IconButton(onPressed: (){

          }, icon: Icon(Icons.arrow_back)),
          Expanded(
            child: PageView(
              controller: _pageController,
              children: [
                _imageList(),
                _imageList(),
                _imageList(),
              ],
            ),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward)),
        ],
      ),
    );
  }

  _imageList() => Row(
    children: [
      Expanded(child: _image()),
      Expanded(child: _image()),
      Expanded(child: _image()),
      Expanded(child: _image()),
    ],
  );

  Widget _image() => Container(
    height: 64,
    width: 64,
    margin: const EdgeInsets.symmetric(horizontal: 8),
    decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(6),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage('https://source.unsplash.com/random/5'),
        )),
  );
}