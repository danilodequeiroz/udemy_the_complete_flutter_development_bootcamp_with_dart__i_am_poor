import 'package:flutter/widgets.dart';

const imageEmptyPockets = "images/empty_pockets.png";
const double thousand = 1000;

class LocalCustomImage extends Image {
  const LocalCustomImage(
      {super.key,
      image,
      double height = thousand,
      BoxFit? fit = BoxFit.scaleDown})
      : super(
          image: const AssetImage(imageEmptyPockets),
          height: height,
          fit: fit,
        );
}
