import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      //width: 100,
                      //height: 100,
                      child: Image.asset(
                          'assets/images/background.png'), //Declarar no pubspec
                      //Image.network('https://cdn.logo.com/hotlink-ok/logo-social.png')
                    ),
                    Container(height: 20),
                    TextField(
                      onChanged: (text) {
                        email = text;
                      },
                      keyboardType: TextInputType
                          .emailAddress, //para o teclado ser do tipo que e usado para email
                      decoration: InputDecoration(
                          labelText: 'Email', border: OutlineInputBorder()),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      onChanged: (text) {
                        password = text;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Password', border: OutlineInputBorder()),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                        onPressed: () {
                          if (email == 'marceloAMG' && password == '123') {
                            Navigator.of(context).pushReplacementNamed('/home');
                          }
                        },
                        child: Text('Entrar'))
                  ]),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //Veficar esse const
        body: Stack(
      children: [
        SizedBox(
          child: Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
          ),
        ),
        _body(),
      ],
    ));
  }
}
