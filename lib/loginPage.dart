import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children:<Widget> [
                Container(
                  padding: const EdgeInsets.fromLTRB(15.0, 130.0, 0.0, 0.0),
                  child: const Text(
                    'wallet',
                    style: TextStyle(
                        fontSize: 80.0,fontWeight: FontWeight.bold
                    ),

                  ) ,

                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(15.0, 195.0, 0.0, 0.0),
                  child: const Text(
                    'Manager',
                    style: TextStyle(
                        fontSize: 70.0,fontWeight: FontWeight.bold
                    ),

                  ) ,

                ) ,
                Container(
                  padding: const EdgeInsets.fromLTRB(290, 195.0, 0.0, 0.0),
                  child: const Text(
                    '.',
                    style: TextStyle(
                        fontSize: 80.0,fontWeight: FontWeight.bold, color: Colors.green
                    ),

                  ) ,

                )
              ],

            ),
            Container(
                padding:const EdgeInsets.only(top:65.0,left: 20.0,right: 20.0),
                child: Column(
                  children: <Widget>[
                    const  TextField(
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
                    const     SizedBox(height: 30.0),
                    const  TextField(
                      decoration: InputDecoration(
                          labelText: 'PASSWORD   ',
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
                    const  SizedBox(height: 5.0,),
                    Container(
                      alignment:const Alignment(1.0,0.0),
                      padding: const EdgeInsets.only(top:15.0,left: 20.0),
                      child: const InkWell(
                        child: Text('Forgot Password ?',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              decoration: TextDecoration.underline
                          ),
                        ),
                      ),
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
                          child: const Center(
                            child:Text(
                              'LOGIN',
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
                          children: const <Widget>[
                            Center(
                              // child: ImageIcon(AssetImage('assets/66436-play-google-icons-computer-email-gmail.png')),
                            ),
                            Center(
                              child: Text('Log in With Gmail',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )


                  ],
                )),
            const  SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'New here ?',
                  style: TextStyle(
                      fontFamily: 'Montserrat'
                  ),
                ),
                const  SizedBox(width: 5.0),
                TextButton(

                  onPressed: () {  Navigator.of(context).pushNamed('/signup'); },
                  child: const Text('Register',
                    style: TextStyle(
                        color: Colors.green,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline
                    ),),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
