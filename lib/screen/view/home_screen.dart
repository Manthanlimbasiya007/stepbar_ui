import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:stepbar_ui/screen/provider/home_provider.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

HomeProvider? homeProvider;
HomeProvider? homeProviderTrue;

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {

    homeProvider = Provider.of(context,listen: false);
    homeProvider = Provider.of(context,listen: true);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Login Stepper",
              style:
              GoogleFonts.aBeeZee(color: Colors.white)),
        ),
        body: Stepper(
          currentStep: homeProvider!.i,
          onStepContinue: () => homeProvider!.onContinue(),
          onStepCancel: () => homeProvider!.onCancel(),
          steps: [
            Step(
              title:
              Text("SignUp", style: GoogleFonts.aBeeZee(letterSpacing: 1,color: Colors.black)),
              content: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.name,
                    style: GoogleFonts.aBeeZee(letterSpacing: 1,color: Colors.black),
                    decoration: InputDecoration(
                      labelText: "Full Name*",
                      labelStyle: GoogleFonts.aBeeZee(color: Colors.black,letterSpacing: 1),
                      prefixIcon: Icon(Icons.person_outline,color: Colors.black),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5),),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    style: GoogleFonts.aBeeZee(letterSpacing: 1,color: Colors.grey),
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.red,
                    decoration: InputDecoration(
                      labelText: "Email*",
                      labelStyle: GoogleFonts.aBeeZee(color: Colors.black,letterSpacing: 1),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5),),
                      prefixIcon: Icon(Icons.email_outlined,color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    style: GoogleFonts.aBeeZee(letterSpacing: 1,color: Colors.grey),
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.red,
                    decoration: InputDecoration(
                      labelText: "Password*",
                      labelStyle: GoogleFonts.aBeeZee(color: Colors.black,letterSpacing: 1),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5),),
                      prefixIcon: Icon(Icons.lock_outline,color: Colors.black),
                    ),
                  ),

                  SizedBox(height: 10,),
                  TextField(
                    style: GoogleFonts.aBeeZee(letterSpacing: 1,color: Colors.grey),
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.red,
                    decoration: InputDecoration(
                      labelText: "Confirm Password*",
                      labelStyle: GoogleFonts.aBeeZee(color: Colors.black,letterSpacing: 1),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5),),
                      prefixIcon: Icon(Icons.lock_person_outlined,color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title:
              Text("Login", style: GoogleFonts.aBeeZee(letterSpacing: 1,color: Colors.black)),
              content: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.name,
                    style: GoogleFonts.aBeeZee(letterSpacing: 1,color: Colors.black),
                    decoration: InputDecoration(
                      labelText: "User Name*",
                      labelStyle: GoogleFonts.aBeeZee(color: Colors.red,letterSpacing: 1),
                      prefixIcon: Icon(Icons.person_outline,color: Colors.red),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5),),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    style: GoogleFonts.aBeeZee(letterSpacing: 1,color: Colors.black),
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.red,
                    decoration: InputDecoration(
                      labelText: "Password*",
                      labelStyle: GoogleFonts.aBeeZee(color: Colors.black,letterSpacing: 1),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5),),
                      prefixIcon: Icon(Icons.lock_outline,color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title:
              Text("Home", style: GoogleFonts.aBeeZee(letterSpacing: 1,color: Colors.black)),
              content: Text("Login Successful",style: GoogleFonts.aBeeZee(color: Colors.red,letterSpacing: 1)),
            ),
          ],
        ),
      ),
    );
  }
}