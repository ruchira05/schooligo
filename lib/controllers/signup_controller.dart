import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:schooligo_1/repository/authentication/authentication_repository.dart';

class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();

  final fname = TextEditingController();
  final lname = TextEditingController();
  final phnumber = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  void registerUser (String email, String password) {
    AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
  }
}