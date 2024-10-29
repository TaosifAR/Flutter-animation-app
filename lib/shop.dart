import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    var size = Get.size;
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SizedBox(
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Text.rich(TextSpan(children: [
              WidgetSpan(
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: size.width * .064,
                  ),
                  alignment: PlaceholderAlignment.middle),
              TextSpan(
                  text: "items in cart",
                  style: TextStyle(
                    fontSize: size.width * .045,
                    height: 0,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  )),
            ])),
            SizedBox(
              height: 10,
            ),
            Text.rich(TextSpan(children: [
              WidgetSpan(
                  child: Icon(
                    Icons.history_toggle_off,
                    color: Colors.white,
                    size: size.width * .064,
                  ),
                  alignment: PlaceholderAlignment.middle),
              TextSpan(
                  text: "purchase history",
                  style: TextStyle(
                    fontSize: size.width * .045,
                    height: 0,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  )),
            ])),
            SizedBox(
              height: 10,
            ),
            Text.rich(TextSpan(children: [
              WidgetSpan(
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: size.width * .064,
                  ),
                  alignment: PlaceholderAlignment.middle),
              TextSpan(
                  text: "items in cart",
                  style: TextStyle(
                    fontSize: size.width * .045,
                    height: 0,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  )),
            ])),
          ],
        ),
      ),
    );
  }
}
