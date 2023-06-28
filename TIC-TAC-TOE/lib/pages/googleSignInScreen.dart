import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'homeScreen.dart';
class GoogleSignInScreen extends StatelessWidget{
  final GoogleSignIn googleSignIn=new GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffffef2),
      appBar: AppBar(
        title: Text('Google Sign In'),
      ),
      body: Container(
         width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                width: 2,
                    color: Colors.black
            )
            ),
            child: GestureDetector(
              onTap: (){
               googleSignIn.signIn().then((value){
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
               }).catchError((e){

               });
              },
                child: Image.network('https://images.theconversation.com/files/93616/original/image-20150902-6700-t2axrz.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1000&fit=clip')),
          ),
        ),
      ),
    );
  }
}