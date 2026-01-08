import 'package:flutter/material.dart';
import 'package:flutter_application_11/home.dart';
import 'register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    title: Text('Login',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:25 ),),
          backgroundColor: const Color.fromARGB(255, 78, 150, 194),
          iconTheme: const IconThemeData(color: Colors.white),
         
      
      
      
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [

            TextField(
              
              controller: email,
              decoration: InputDecoration(
               
                labelText: "Email",
                prefixIcon: Icon(Icons.email,color: Color.fromARGB(255, 78, 150, 194),),
                border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                  borderSide:BorderSide(
                    color: Color.fromARGB(255, 78, 150, 194),
                    width: 2),
                    
            
                     
                ),
              ),
            ),

            SizedBox(height: 10),

            TextField(
              controller: password,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.lock,color: Color.fromARGB(255, 78, 150, 194),),
                border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                  borderSide:BorderSide(
                    color: Color.fromARGB(255, 78, 150, 194),
                    width: 2), 
                ),
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 78, 150, 194))
              
              
              ),
              onPressed: () {
                

                  Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Home(),));
                
                //ScaffoldMessenger.of(context).showSnackBar(
                 // SnackBar(content: Text("Login clicked")),
                //);
              },
              
              child: Text("Login",style: TextStyle(color: Colors.white),),
              
            ),

            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Register()),
                );
              },
              child: Text("Create new account",style: TextStyle(color: Color.fromARGB(255, 78, 150, 194))),
            ),
          ],
        ),
      ),
    );
  }
}