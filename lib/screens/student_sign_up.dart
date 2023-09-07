import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schooligo_1/constants/image_strings.dart';
import '../controllers/signup_controller.dart';


class student_sign_up extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState> ();
  student_sign_up({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(SignUpController ());

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
                child: Text("Sign Up"),
              ),
              Form(
                  key: _formKey,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(30, 50, 30, 10),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(hintText: "First Name"),
                          controller: controller.fname,
                        ),
                        TextFormField(
                          decoration: InputDecoration(hintText: "Last Name"),
                          controller: controller.lname,
                        ),
                        TextFormField(
                          decoration: InputDecoration(hintText: "Phone Number"),
                          controller: controller.phnumber,
                        ),
                        TextFormField(
                          decoration: InputDecoration(hintText: "Email"),
                          controller: controller.email,
                        ),
                        TextFormField(
                          decoration: InputDecoration(hintText: "Password"),
                          controller: controller.password,
                        ),
                        TextFormField(
                          decoration: InputDecoration(hintText: "Confirm Password"),
                        ),
                        SizedBox(
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: ElevatedButton(
                              onPressed: (){
                                if(_formKey.currentState!.validate()){
                                  SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text);
                                }
                              },
                              child: Text("Sign Up"),
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







