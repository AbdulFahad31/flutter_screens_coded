import 'package:fluttabd/screens/home_page.dart';
import 'package:fluttabd/screens/otp_page.dart';
import 'package:flutter/material.dart';

class ForgotPwd extends StatefulWidget {
  const ForgotPwd({super.key});

  @override
  State<ForgotPwd> createState() => _ForgotPwdState();
}

class _ForgotPwdState extends State<ForgotPwd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => HomePage())
              );
          }, 
          icon: Icon(Icons.arrow_back_ios)),
      ),

      body: SafeArea(
        child:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/amico.png",
                    width: 300,
                  ),
                ),
                SizedBox(height: 25,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Forgot Password ?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 1,
                    ),
                  ),
                ),
                const SizedBox(height: 17),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Don’t worry! It happens. Please enter the email address associated with your account.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(height: 42),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email/Mobile Number",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    prefixIcon: Icon(Icons.sync),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      )
                    )
                  ),
                  //keyboardType: TextInputType,
                ),
                SizedBox(height: 158,),
                SizedBox(
                  width: double.infinity,
                  height: 47,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => OtpPage()
                          )
                        );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: Colors.black,
                    ),
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    ),
                )

              ],
            ),
            ),
        ) ),
    );
  }
}