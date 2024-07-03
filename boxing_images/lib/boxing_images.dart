library boxing_images;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';

class BoxingImages extends StatefulWidget {
  const BoxingImages({super.key});

  @override
  State<BoxingImages> createState() => _BoxingImagesState();
}

class _BoxingImagesState extends State<BoxingImages> {
  List<String> imgUrls = [
    "https://images.unsplash.com/photo-1631132329534-0e7e1b94d494",
    "https://images.unsplash.com/photo-1601588462477-e76b16de79f3",
    "https://images.unsplash.com/photo-1618517048289-4646902edaf5"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider.builder(
            itemCount: imgUrls.length,
            itemBuilder: (context, index, pageViewIndex) {
              return Container(
                child: Image.network(imgUrls.elementAt(index)),
              );
            },
            options: CarouselOptions(autoPlay: true)));
  }
}
