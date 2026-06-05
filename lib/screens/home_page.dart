import 'package:fluttabd/screens/forgot_pwd.dart';
import 'package:fluttabd/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(
              context , 
              MaterialPageRoute(builder: (context) => LoginPage(),
              )
              );
          }, 
          icon: Icon(Icons.arrow_back_ios),
          ),
      ),
      body: SafeArea(
        child:SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/rafiki.png',
              width: 300, 

            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('Login',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              
            ),
            ),
            SizedBox(height: 13,),
            TextField(
              controller: emailcontroller,
              decoration: InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(Icons.email_outlined),
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                )
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16,),
            TextField(
              controller: passwordcontroller,
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.password_outlined),
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                )
              ),
              keyboardType: TextInputType.visiblePassword,
            ),
            SizedBox(height: 5,),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: (){
                  Navigator.push(
                    context, 
                  MaterialPageRoute(builder: (context) => ForgotPwd()));
                }, 
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 15,
                  ),
                ),
                ),
            ),
            SizedBox(height: 15,),
            SizedBox(
              width: double.infinity,
              height: 53,
              child: ElevatedButton(
                onPressed: () async {
                  String email = emailcontroller.text.trim();
                  String password = passwordcontroller.text;

                  try{
                    await FirebaseAuth.instance
                         .createUserWithEmailAndPassword(
                            email:email,
                            password:password,
                          );
                          print("User created");
                  } catch(e){
                    print(e);
                  }

                }, 
                style:ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: Colors.black,
                ),
                child: Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                )),
            ),
            SizedBox(height: 14),
            Align(
              alignment: Alignment.center,
              child: Text(
                "---------OR--------",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 14),
            SizedBox(
              width: double.infinity,
              height: 53,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 201, 201, 201),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  )
                ),
               child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'assets/google.png',
                      height: 24,
                      width: 24,
                    ),
                  ),

                  Text(
                    "Login with Google",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
               )
               )
            )
          ],
        ),
        ),
      ),
      )
    );
  }
}