import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pruebasnav/auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   String? errorMessage = '';
   bool isLoin = true;

   final TextEditingController _controllerEmail = TextEditingController();
   final TextEditingController _controllerPassword = TextEditingController();

   Future<void> signInWithEmailAndPassword() async {
     try {
      await Auth().signInWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );

     } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
     }
     }

 Future<void> createUserWithEmailAndPassword() async {
     try {
      await Auth().createUserWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );

     } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
     }
     }

     Widget _title(){
    return const Text('');
  }

     Widget _entryField(
    String title,
    TextEditingController controller,
    ) {
      return TextField(
        controller:  controller,
        decoration: InputDecoration(
          labelText: title,
        ),
      );
    }
  
     Widget _errorMessage(){
      return Text(errorMessage == '' ? '' : '$errorMessage');
     }

     Widget _submitButton() {
      return ElevatedButton(
        
        onPressed: 
        
        isLoin ? signInWithEmailAndPassword : createUserWithEmailAndPassword,
         child: Text(isLoin ? 'Iniciar Sesion' : 'Registerar'),
         
         );
     }

     Widget _loginOrRegisterButton(){
      return TextButton(
        onPressed: () {
          setState(() {
            isLoin = !isLoin;
          });
        },
        child: Text(isLoin ? 'Registerar' : 'Iniciar Sesion'),
      );
     }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding:  const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
                  'assets/login-logo/login-logo.png'),
                  
            _entryField('email', _controllerEmail),
            _entryField('password', _controllerPassword),
            _errorMessage(),
            _submitButton(),
            _loginOrRegisterButton(),
          ],
        ),
      ),
    );
  }
}