import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:widgets_basic/component/my_button.dart';
import 'package:widgets_basic/component/my_textbutton.dart';
import 'package:widgets_basic/component/my_textfiled.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signInUser() async {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      print('It is okay');
    } else {
      print('Please input your email and password.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Form(
          child: Column(
            children: [
              const Spacer(),
              Text(
                "Hello, ready to get started ?",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Please sign in your email and password ?",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(height: 20),
              MyTextField(controller: emailController, hintText: 'Please input your email', LabelText: 'Email', obsecureText: false),
              SizedBox(height: 20),
              MyTextField(controller: passwordController, hintText: 'Please input your password', LabelText: 'Password', obsecureText: true),

              const SizedBox(height: 25),
              const MyTextButton(labelText: 'Forgot password?'),
              const SizedBox(height: 25),
              MyButton(onTap: signInUser, hintext: 'Sign in'),
              const SizedBox(height: 25,),
              const Row(
                children: [
                  Center(child: Text('Not a member?')),
                  MyTextButton(labelText: 'Register now')
                ],
              ),



              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}