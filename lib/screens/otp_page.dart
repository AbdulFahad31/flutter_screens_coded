import 'package:fluttabd/screens/forgot_pwd.dart';
import 'package:fluttabd/screens/reset_pwd.dart';
import 'package:flutter/material.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => ForgotPwd(),
              )
              );
          }, 
          icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/otp.png",
                    width: 300,
                  ),
                ),
                SizedBox(height: 34,),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Verification code",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 1.5,
                    ),
                  ),
                ),
                SizedBox(height: 35,),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "A 4 digit code has been sent to +91 701*****34",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(height: 35,),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      otpBox(),
                      otpBox(),
                      otpBox(),
                      otpBox(),
                    ],
                  ),
                ),
                SizedBox(height: 75,),
                SizedBox(
                  width: double.infinity,
                  height: 47,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => ResetPwd(),
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
                      "Verify",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    )),
                ),
                SizedBox(height: 5,),
                Stack(
                  children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: TextButton(
                    onPressed: (){},
                    child: Text(
                      "Resend Code",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        wordSpacing: 1,
                      ),
                    ))
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: (){},
                    child: Text(
                      '1:20 min left',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        wordSpacing: 1,
                      ),
                    )),
                )
                ]
                ),
              ],
            ),
            ),
        )
        ),
    );
  }
}
Widget otpBox(){
  return Container(
      width: 55,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          "3",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
  );
}
