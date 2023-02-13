import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:malavika_app/app/modules/home/controllers/home_controller.dart';
import 'package:malavika_app/app/modules/home/views/home_view.dart';

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
            bottom: 400,
            child: Container(
              width: 500,
              height: 500,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 84, 174, 247),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            left: 50,
            top: 100,
            child: Container(
              width: 125,
              height: 125,
              decoration: const BoxDecoration(
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
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 84, 174, 247),
                ),
              ),
            ),),
            Positioned(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 280,
                  ),
                  Container(
                    
                    width: 350,
                    height:250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(
                    color: Colors.grey,
                    blurRadius: 15.0,
                    offset: Offset(
                      1.0, 
                      5.0, 
                    ),
                  )
                ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                      child: Row(
                       
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical:8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              
                              children:  [
                                Row(
                                  children: const [
                                    Text('LOGIN',
                                    style: TextStyle(
                                      fontFamily: 'Open Sans',
                                      fontSize: 50,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 84, 174, 247),
                                    ),),SizedBox(
                                  width: 110,
                                ),

                                  ],
                                ),
                                
                                const SizedBox(
                                  width: 250,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Email(Required)',
                                    ),
                                  ),
                                ),
                                const Divider(
                                  height: 5,
                                    
                               ),
                                const SizedBox(  
                                  width: 250,
                                  child: TextField(  
                                    decoration: InputDecoration(
                                      hintText: 'Password(Required)', 
                                    ),
                                  ),
                                ),
                                const Divider(
                                  height: 12,
                                  
                               ),
                               Row(
                                 children: const [
                                   Text('Forgot Password?',
                                    style: TextStyle(
                                      fontFamily: 'Open Sans',
                                      fontSize: 15,
                                      
                                      color: Colors.black,
                                    ),),
                                    SizedBox(
                                  width: 120,
                                ),
                                 ],
                               ),
                              ],
                            ),
                            
                          ),
                        ],
                      ),
                    )
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text('or Login With'),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 200,
                    height: 35,
                    decoration: BoxDecoration(color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        IconButton(onPressed: () {}, icon: const Icon(Icons.facebook_rounded),
                        color: Colors.white,),
                        const Text('Login with Facebook',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Open Sans'
                        ),),

                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 200,
                    height: 35,
                    decoration: BoxDecoration(color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Row(
                        children: const [
                          Image(image: AssetImage('assets/google_g.png'),
                          height: 25,),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Sign in with Google',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Open Sans'
                          ),),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
              
            ),
          ),
          Positioned(
            right: 50,
            
            child: Column(
              children: [
                SizedBox(
                  height: 488,
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 84, 174, 247),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(onPressed: () {
                    Get.to(() => HomeView(),);
                    Get.put(HomeController());
                    
                  },
                  icon: const Icon(Icons.arrow_forward_ios),
                  color: Colors.white,),
                ),
                const SizedBox(height: 220,),
                const Text('REGISTER',
                style: TextStyle(
                  color: Color.fromARGB(255, 84, 174, 247),
                  fontFamily: 'Open Sans',
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),)
              ],
            ),
          ),
            
        ],
      )
    );
  }
}
