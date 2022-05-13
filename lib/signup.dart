import 'package:flutter/material.dart';
import 'package:logtest/loginPage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children:<Widget> [
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 195.0, 0.0, 0.0),
                    child: Text(
                      'Sign UP',
                      style: TextStyle(
                          fontSize: 70.0,fontWeight: FontWeight.bold
                      ),

                    ) ,

                  ) ,
                  Container(
                    padding: EdgeInsets.fromLTRB(250, 195.0, 0.0, 0.0),
                    child: Text(
                      '.',
                      style: TextStyle(
                          fontSize: 80.0,fontWeight: FontWeight.bold, color: Colors.green
                      ),

                    ) ,

                  )
                ],

              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 25.0,left: 20.0,right: 20.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'EMAIL',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.grey
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green)
                          )
                      ),
                    ) ,
                    SizedBox(height: 30.0),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'First Name   ',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green)
                          )
                      ),
                      obscureText: true ,
                    ),

                    SizedBox(height: 30.0),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Last Name   ',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green)
                          )
                      ),
                      obscureText: true ,
                    ),
                    SizedBox(height: 30.0),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Password  ',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green)
                          )
                      ),
                      obscureText: true ,
                    ),
                    SizedBox(height: 40.0,),
                    Container(
                      height: 40.0,
                      child:Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.greenAccent,
                        color: Colors.green,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap:(){} ,
                          child: Center(
                            child: Text(
                              'SIGNUP',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'
                              ),
                            ),
                          ),
                        ),
                      ),

                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 40.0,
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 1.0

                            ),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular (20.0)

                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                          const  Center(
                              // child: ImageIcon(AssetImage('assets/66436-play-google-icons-computer-email-gmail.png')),
                            ),
                            TextButton(
                              onPressed: () {
                               Navigator.of(context).pushNamed('/login');
                               // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const LoginPage()),(route) => false );
                                },
                              child:const Text('Go Back',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat',
                                  color: Colors.black
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )

                  ],
                )),

          ]),
    );
  }
}
