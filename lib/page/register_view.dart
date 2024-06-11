import 'package:flutter/material.dart';
import 'package:flutter_app_test/component/textField.dart';
import 'package:flutter_app_test/component/textHeader.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Register',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RegisterPage(title: 'Register Page'),
    );
  }
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, required this.title});

  final String title;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  static const textStyleMain = TextStyle(
      color: Color.fromARGB(255, 50, 114, 82),
      fontFamily: 'Roboto',
      fontSize: 26,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.2);

  static const subTextStyleMain = TextStyle(
    color: Color.fromARGB(255, 74, 82, 78),
    fontFamily: 'Roboto',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.2,
  );

  final imageHeader = const Image(
    image: AssetImage('assets/background_img.jpg'),
    alignment: Alignment.center,
    fit: BoxFit.fitWidth,
  );

  bool agreeTerm = false;

  void _onAgreeTermChanged(bool? newValue) {
    if (newValue != null) {
      setState(() {
        agreeTerm = newValue;
      });
    }
  }

  void _signUpAction() {
    setState(() {});
  }

  final textStyleAlreadyExist =
      const TextStyle(fontFamily: 'Roboto', fontSize: 14, letterSpacing: 0.2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              imageHeader,
              TextHeader(
                  textHeader: 'Create Your Account',
                  styleHeader: textStyleMain),
              TextHeader(
                  textHeader: 'Create your account to start your journey',
                  styleHeader: subTextStyleMain),
              Padding(
                padding:
                    const EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
                child: CustomTextField(
                  hintText: 'Enter your full name',
                  labelText: 'Full Name',
                  isPassword: false,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
                child: CustomTextField(
                  hintText: 'Enter your email address',
                  labelText: 'Email',
                  isPassword: false,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
                child: CustomTextField(
                  hintText: 'Enter your password',
                  labelText: 'Password',
                  isPassword: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(children: <Widget>[
                  Checkbox(value: agreeTerm, onChanged: _onAgreeTermChanged),
                  const Text(
                      "I agree to the Term & Conditions and Privacy Policy")
                ]),
              ),
              TextButton(
                onPressed: _signUpAction,
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 50, 114, 82),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 6),
                ),
                child: const Text('Sign Up',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ),
              TextHeader(
                  textHeader: 'Already have account? Sign in',
                  styleHeader: textStyleAlreadyExist),
            ],
          ),
        ),
      ),
    );
  }
}
