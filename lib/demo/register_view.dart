import 'package:flutter/material.dart';

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

  final textMain = const Text(
    'Create Your Account',
    style: textStyleMain,
  );

  final subTextMain = const Text(
    'Create your account to start your journey',
    style: subTextStyleMain,
  );

  final textFieldFullName = const TextField(
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: 'Full Name',
          hintText: 'Enter your full name',
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder()));

  final textFieldEmail = const TextField(
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: 'Email',
          hintText: 'Enter your email',
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder()));

  final textFieldPass = const TextField(
    decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: 'Password',
        hintText: 'Enter your password',
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder()),
    obscureText: true,
    enableSuggestions: false,
    autocorrect: false,
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

  final textAlreadyExist = const Text(
    'Already have account? Sign in',
    style: TextStyle(fontFamily: 'Roboto', fontSize: 14, letterSpacing: 0.2),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: imageHeader),
      body: SingleChildScrollView(
        child: Container(
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                imageHeader,
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: textMain,
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: subTextMain,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0),
                  child: textFieldFullName,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
                  child: textFieldEmail,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
                  child: textFieldPass,
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
                  child: const Text('Sign Up',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 50, 114, 82),
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 6),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: textAlreadyExist,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
