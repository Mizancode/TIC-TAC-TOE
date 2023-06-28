import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tic_tac_toe_flutter/pages/googleSignInScreen.dart';
import '../widget/gridWidget.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GoogleSignIn googleSignIn=GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tic Tac Toe Game'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xfffccb90),
                Color(0xffd57eeb),
              ]
            )
          ),
        ),
        actions: [
          IconButton(onPressed: (){
            googleSignIn.signOut().then((value){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>GoogleSignInScreen()));
            }).catchError((e){

            });
          }, icon: Icon(Icons.logout))
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff84fab0),
              Color(0xff8fd3f4),
              Color(0xff8fd3f4),
            ]
          )
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 50.0,right: 50.0,top: 175.0),
          child: Column(
            children: [
              Container(
                height: 240,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 5/4,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                    ),
                    itemBuilder: (context,index){
                      return GridDesign(index);
                },
                    itemCount: 9,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(onPressed: (){
                setState(() {

                });
              }, child: Text('Restart',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.indigoAccent),
                shape: MaterialStatePropertyAll(StadiumBorder()),
              ),)
            ],
          ),
        ),
        key: UniqueKey(),
      ),
    );
  }
}