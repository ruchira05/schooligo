import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schooligo_1/constants/image_strings.dart';
import 'package:schooligo_1/controllers/signin_controller.dart';

import '../controllers/signup_controller.dart';

class sign_in extends StatelessWidget {
  sign_in({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState> ();

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignInController ());
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(20, 100, 20, 10),
          // color: Colors.pink,//temp colour
          child:Column(
            children: [
              const Image(image: AssetImage(logoStrPNG),),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Text("Sign In"),
              ),
              Form(
                  key: _formKey,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(30, 50, 30, 10),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(hintText: "Email"),
                          controller: controller.email,
                        ),
                        TextFormField(
                          decoration: InputDecoration(hintText: "Password"),
                          controller: controller.password,
                        ),
                        SizedBox(
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: ElevatedButton(
                              onPressed: (){
                                if(_formKey.currentState!.validate()){
                                  SignInController.instance.signUser(controller.email.text.trim(), controller.password.text);
                                }
                              },
                              child: Text("Sign In"),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}