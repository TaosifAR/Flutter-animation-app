import 'package:crazy_animation/Home.dart';
import 'package:crazy_animation/page.dart';
import 'package:crazy_animation/shop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main ()
{
  runApp( CrazyAnime());

}
class CrazyAnime extends StatelessWidget {
  const CrazyAnime({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Test(),
    );

  }
}
