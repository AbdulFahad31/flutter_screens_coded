import 'package:fluttabd/screens/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  bool _obscuretext = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              "Welcome to Shopify",
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),

            Text(
              "Login to your account",
              style:TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 40,),

            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                )
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16,),
            TextField(
              obscureText: _obscuretext,
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.password_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                suffixIcon: IconButton(
                  onPressed: (){
                    setState(() {
                      _obscuretext = ! _obscuretext;
                    });
                  }, 
                  icon: Icon(
                    _obscuretext  ? Icons.visibility_off : Icons.visibility,
                  ))
              ),
              keyboardType: TextInputType.visiblePassword,
              //keyboardAppearance: TextInputTy,
            ),
            SizedBox(height: 8,),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: (){}, 
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )),
            ),
            SizedBox(height: 24,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => HomePage()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: Colors.white70,
                ),
               child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
               )),
            )
          ],
        ),
        
        ),
      ),
    );
  }
}