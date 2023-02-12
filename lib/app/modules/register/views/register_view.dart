import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Positioned(
            left: 70,
            bottom: 300,
            child: Container(
              width: 500,
              height: 500,
              decoration: new BoxDecoration(
                color: Color.fromARGB(255, 84, 174, 247),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            left: 50,
            top: 40,
            child: Container(
              width: 125,
              height: 125,
              decoration: new BoxDecoration(
                color: Color(0xff1971b8),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            width: 700,
            height: 600,
            bottom: -450,
            right: 130,
            child: ClipOval(
              child: Container(
                decoration: new BoxDecoration(
                  color: Color.fromARGB(255, 84, 174, 247),
                ),
              ),
            ),),
            Positioned(
            child: Center(
              child: Container(
                width: 350,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: const [
                          Text('LOGIN',
                          style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 63,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 84, 174, 247),
                          ),),
                          
                        ],
                      ),
                    ),
                  ],
                )
              ),
            ),
          ),
            
        ],
      )
    );
  }
}
