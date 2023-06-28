import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe_flutter/pages/googleSignInScreen.dart';
import 'package:tic_tac_toe_flutter/pages/homeScreen.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyMain());
}
class MyMain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.white
          ),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontFamily: GoogleFonts.poppins().fontFamily,
            fontWeight: FontWeight.bold
          ),
          centerTitle: true
        )
      ),
      initialRoute:'/homeScreen',
      routes: {
        '/homeScreen':(context)=>HomeScreen(),
        '/googleSignIn':(context)=>GoogleSignInScreen()
      },
    );
  }
}