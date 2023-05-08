import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Sign In"),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.all(20),
        child: const Column(children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Username',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: InputDecoration(
              hintText: 'Password',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.pinkAccent),
              ),
              onPressed: null,
              child: Text(
                "Sign In",
                style: TextStyle(color: Colors.white),
              ))
        ]),
      ),
    );
  }
}

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
        child: Text("Sign Up"),
      )),
      body: Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.all(20),
        child: const Column(children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Username',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: InputDecoration(
              hintText: 'Password',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: InputDecoration(
              hintText: 'Confirm Password',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.pinkAccent),
              ),
              onPressed: null,
              child: Text(
                "Sign Up",
                style: TextStyle(color: Colors.white),
              ))
        ]),
      ),
    );
  }
}
