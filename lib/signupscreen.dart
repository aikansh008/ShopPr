import 'package:flutter/material.dart';
import 'package:shoppr/loginscreen.dart';
import 'homescreen.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
       AppBar(
      backgroundColor: const Color.fromARGB(255, 216, 19, 6),
        leading: BackButton(
          onPressed: () => {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginScreen()))

          },
        ),
      ),
      body:  SingleChildScrollView(
        child: Center(
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
              Text("SIGN-UP",style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color:Color.fromARGB(255, 216, 19, 6),
                letterSpacing: 2.0,
              ),),
             Padding(
               padding: const EdgeInsets.only(top:95.0,right: 111.0,bottom: 10.0),
               child: Text("Your Name",style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w600,
               ),),
             ),
               Container(
                  width: 200,
                  
                  child: TextField(
                    decoration: 
                    InputDecoration(
                      filled: true,
                      hintText: "First and last name",
                      
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
                padding: const EdgeInsets.only(top:8.0,right: 82.0,bottom: 10.0),
                child: Text("Mobile Number",style:
                TextStyle(
                  fontSize: 15,
                  fontWeight:FontWeight.w600,
              color: Colors.black,
                ),),
              ),
              Container(
                  width: 200,
                 
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "Mobile Number",
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
               padding: const EdgeInsets.only(top:10,right: 145.0,bottom: 10.0),
               child: Text("E-mail",style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w600,
               ),),
             ),
               Container(
                  width: 200,
                 
                  child: TextField(
                    decoration: 
                    InputDecoration(
                      filled: true,
                      hintText: "Your Email",
                      
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
               padding: const EdgeInsets.only(top:10,right: 75.0,bottom: 10.0),
               child: Text("Create Password",style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w600,
               ),),
             ),
               Container(
                  width: 200,
                  child: TextField(
                    obscureText: true,
                    decoration: 
                    InputDecoration(
                      hintText: "Must contain one Uppercase,Lowercase,specialcharachter",
                      filled: true,
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
               padding: const EdgeInsets.only(top:10,right: 60.0,bottom: 10.0),
               child: Text("Re-enter Password",style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w600,
               ),),
             ),
               Container(
                  width: 200,
                 
                  child: TextField(
                    obscureText: true,
                    decoration: 
                    InputDecoration(
                      filled: true,
                      hintText: "Must be same as above",
                      
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
                  
                     child:Text("SIGNUP",style: TextStyle(
                      letterSpacing: 1.0,
                      fontSize:15,
                      color: Colors.red,
                     ),),
                    ),
                  ),
                ),
                
               
            ],
          ),
        ),
      )
    );
  }
}