import 'package:flutter/material.dart';
import 'package:login/HomeScreen.dart';
import 'package:login/InputField.dart';

class LoginScreen extends StatelessWidget{
  static const routeName = 'Login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(66, 103, 178, 1),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Image.asset('assets/images/facebook.png', width: 100, height: 50,),
              InputField('Email or phone'),
              SizedBox(
                height: 15,
              ),
              InputField('Password'),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                color: Color.fromRGBO(223,227,238, 0.3),
                child: MaterialButton(onPressed: (){
                  Navigator.pushNamed(context,HomeScreen.routeName);
                },
                  child: Text(
                    'LOG IN',
                    style: TextStyle(
                      color: Color.fromRGBO(247,247,247, 0.8),
                    ),
                  ),
                ),
              ),
              Spacer(),
              TextButton(onPressed: (){},
                  child: Text(
                      'Sign up for Facebook',
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(onPressed: (){},
                      child: Text(
                          'Forgot password?',
                        style: TextStyle(color: Colors.white),

                      ))

            ],
          ),
        ),
      ),
    );
  }
}
// color: Colors.blue[900],
// width: double.infinity,
// height: double.infinity,