import 'package:flutter/material.dart';

void main() => runApp(LoginPageApp());

class LoginPageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to The Surfing App'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: LoginForm(),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _login() {
    String email = _emailController.text;
    String password = _passwordController.text;

    // Here you can implement your login logic,
    // like calling an authentication API or checking credentials.

    print('Email: $email');
    print('Password: $password');
  }
  

  @override
  Widget build(BuildContext context) {
    var padding = Padding;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image(
          image: NetworkImage(
              'https://cdn.pixabay.com/photo/2017/04/08/10/23/surfing-2212948_1280.jpg'), // Replace 'assets/logo.png' with the path to your logo image.
        ),
        SizedBox(height: 20.0),
        TextField(
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20.0),
        TextField(
          controller: _passwordController,
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20.0),
        TextButton(
          onPressed: _login,
          child: Text('Login'),
          style: TextButton.styleFrom(backgroundColor: Color(0xffffffff)),
        ),
        SizedBox(height: 10.0),
        TextButton(
          onPressed: _login,
          child: Text('sign in'),
        ),
        child : copyr
      ],
    );
  }
}

