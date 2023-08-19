import 'package:flutter/material.dart';
import 'package:i_am_poor/local_custom_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return iamPoorApp();
  }

  Widget iamPoorApp() {
    String title = "I am poor";
    return MaterialApp(
      title: title,
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: asImageWithFractionalSizedBox(),
        ),
      ),
    );
  }
}

const double widthFactor = 1;
const double heightFactor = 0.5;

Widget asImage() {
  return const LocalCustomImage();
}

Widget asImageInContainerWithFractionalSizedBox() {
  return FractionallySizedBox(
    widthFactor: widthFactor,
    heightFactor: heightFactor,
    child: Container(
      color: Colors.yellow,
      child: const LocalCustomImage(),
    ),
  );
}

Widget asImageWithFractionalSizedBox() {
  return const FractionallySizedBox(
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: LocalCustomImage());
}
