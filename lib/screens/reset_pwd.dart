import 'package:fluttabd/screens/otp_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ResetPwd extends StatefulWidget {
  const ResetPwd({super.key});

  @override
  State<ResetPwd> createState() => _ResetPwdState();
}

class _ResetPwdState extends State<ResetPwd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => OtpPage(),
                )
              );
          }, 
          icon: Icon(Icons.arrow_back_ios)),
      ),
      drawerScrimColor: Color(23),
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
                    "assets/pana@2x.png",
                    width: 300,
                    height: 200,
                  ),
                ),
                SizedBox(height: 100,),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Reset Password",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 1.5,
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "New Password",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      )
                    )
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Confirm New Password",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      )
                    )
                  ),
                ),
                SizedBox(height: 83,),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: Colors.black,
                    ),
                    child: Text(
                      "Reset Password",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        wordSpacing: 2,
                      ),
                    )),
                )
              ],
            ),
          ),
        )
        ),
    );
  }
}