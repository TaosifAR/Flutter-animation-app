import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});



  @override
  Widget build(BuildContext context) {
    RxBool clicked= false.obs;
    var size = Get.size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                onTap: (){
                  clicked.value= !clicked.value;
                },
                child: Text("expand",style: TextStyle(
                  fontSize: 31,
                  fontWeight: FontWeight.w900,
                ),),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: size.height*.7,
              width: size.width,

              child: Align(
                alignment: Alignment.center,
                child:  Obx(() => Stack(
                  children: [


                    Positioned(
                      right: 10,
                      left: 10,
                      top: 10,
                      bottom: 10,

                      child: Container(
                        width: clicked.value? size.height*0.38: size.width* 0.4,
                        height:  clicked.value? size.height*0.38: size.width* 0.4,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: clicked.value ? BorderRadius.circular(60): BorderRadius.circular(1000),
                        ),
                      ),
                    ),
                    Positioned(
                   right: 20,
                      left: 20,
                      top: 20,
                      bottom: 20,
                      child: Container(
                        width: clicked.value? size.width*0.12: size.width* 0.4,
                        height: clicked.value? size.width*.12: size.width* 0.4,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(1000),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 30,
                      left: 30,
                      top: 30,
                      bottom: 30,

                      child: Container(
                        width: size.width* 0.15,
                        height: size.width*0.15,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(1000),
                        ),
                      ),
                    ),

                  ],
                ),)
              ),
            )
          ],
        ),
      ),

    );
  }
}
