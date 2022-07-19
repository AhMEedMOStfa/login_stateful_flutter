// ignore_for_file: unnecessary_new
import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';
class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with ValidationMixin{
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            const SizedBox(
              height: 20,
            ),
            passwordField(),
            const SizedBox(
              height: 20,
            ),
            submitButton(),
          ],
        ),
      ),
    );
  }

  //3 build method
  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email_address',
        hintText: 'you@example.com',
      ),
      validator: validateEmail,
      onSaved: (email) => print('email : $email'),
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Enter Passsword',
        hintText: 'Password',
      ),
      validator: validatePassword,
            onSaved: (password) => print('password : $password'),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {
        if (formKey.currentState?.validate()==true) {
          formKey.currentState?.save();
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text('Submit'),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.black),
      ),
    );
  }
}
