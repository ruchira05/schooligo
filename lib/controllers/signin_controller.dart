import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../repository/authentication/authentication_repository.dart';

class SignInController extends GetxController{
  static SignInController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();

  void signUser (String email, String password) {
    AuthenticationRepository.instance.loginWithEmailAndPassword(email, password);
  }
  void signOut(){
    AuthenticationRepository.instance.logout();
  }
}