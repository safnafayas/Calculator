// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// class ParallaxPageView extends StatefulWidget {
//   @override
//   _ParallaxPageViewState createState() => _ParallaxPageViewState();
// }
//
// class _ParallaxPageViewState extends State<ParallaxPageView> {
//   final PageController _pageController = PageController();
//   final List<String> _imageUrls = [
//     'https://example.com/image1.jpg',
//     'https://example.com/image2.jpg',
//     'https://example.com/image3.jpg',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView.builder(
//         controller: _pageController,
//         itemCount: _imageUrls.length,
//         itemBuilder: (context, index) {
//           return ParallaxPage(imageUrl: _imageUrls[index], pageController: _pageController, pageIndex: index);
//         },
//       ),
//     );
//   }
// }
