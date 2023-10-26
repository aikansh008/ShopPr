import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoppr/homescreen.dart';
import 'package:shoppr/signupscreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Container(
                height: 120,
                width:100,
                child: Image.asset("assets/images/512x512bb.jpg")),
            ),
            Text("SIGN-IN",style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
              color:Color.fromARGB(255, 216, 19, 6),
              letterSpacing: 2.0,
            ),),
           Padding(
             padding: const EdgeInsets.only(top:95.0,right: 55.0,),
             child: Text("Username or E-mail",style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w600,
             ),),
           ),
             Container(
                width: 200,
                child: TextField(
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  decoration: 
                  InputDecoration(
                    filled: true,
                    hintText: "Your Username or Email",
                    
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.0),
                      
                    )
                  ),
                  style: TextStyle(
                    fontSize: 12,
                    
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(top:8.0,right: 125.0),
              child: Text("Password",style:
              TextStyle(
                fontSize: 15,
                fontWeight:FontWeight.w600,
            color: Colors.black,
              ),),
            ),
            Container(
                width: 200,
              
                child: TextField(
                  obscureText:true,
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.0),
                    )
                  ),
                 style: TextStyle(
                  fontSize: 12,
                 ),
                ),
                
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 200,
                  
                  child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  },   
                
                   child:Text("SIGNIN",style: TextStyle(
                    letterSpacing: 1.0,
                    fontSize:15,
                    color: Colors.red,
                   ),),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text("New User?",style: TextStyle(
                      fontSize: 14,
                      color: Colors.black, 
                    ),),
                
                  TextButton(onPressed: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));

                  }, child:
                  Padding(
                    padding: const EdgeInsets.only(right:70.0),
                    child: Text("SignUp",style: TextStyle(
                      color: Color.fromARGB(255, 216, 19, 6),
                    ),),
                  ))
                ],
              )
          ],
        ),
      )
    );
  }
}