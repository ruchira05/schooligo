import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:schooligo_1/constants/colours.dart';
import 'package:schooligo_1/constants/image_strings.dart';
import 'package:schooligo_1/screens/sign_in.dart';
import 'package:schooligo_1/screens/student_sign_up.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.amber,
        body: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              SvgPicture.asset(loginImageSVG,height: height * 0.6,),
              const Column(
                children: [
                   Text('Welcome!',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900),),
                   SizedBox(height: 10,),
                   Text(' however errors will get properly logged to the console in debug.',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                   SizedBox(height: -0,),
                ],
              ),
              
              Row(
                children: [
                  Expanded(

                    //login button
                    child: OutlinedButton(
                        onPressed: (){
                          Get.to(() => sign_in());
                        },
                        style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(),
                          foregroundColor: Colors.black,
                          side: const BorderSide(color: Colors.black),
                          padding: const EdgeInsets.symmetric(vertical: 15)
                        ),
                        child: Text('Login'.toUpperCase(),style: const TextStyle(fontSize: 18,)
                        )
                      )
                  ),
                  const SizedBox(width: 15,),

                  //Signup button
                  Expanded(child: OutlinedButton(
                    onPressed: (){
                      Get.to(() => student_sign_up());
                    },
                    style: OutlinedButton.styleFrom(
                      elevation: 0,
                          shape: const RoundedRectangleBorder(),
                          backgroundColor: yellow,
                          foregroundColor: Colors.black,
                          side: const BorderSide(color: Colors.black),
                          padding: const EdgeInsets.symmetric(vertical: 15)
                        ),
                    child: Text('Signup'.toUpperCase(),
                    style: const TextStyle(fontSize: 18,)
                    )))
              ],
              )
              
            ],
          ),
        ),
      ),
    );
  }
}