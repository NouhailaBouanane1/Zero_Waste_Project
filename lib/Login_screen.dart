import 'package:flutter/material.dart';
import 'package:zero_waste_project/registration_screen.dart';


class login_screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => login_screenState();
  }

  class login_screenState extends State<login_screen> {
//form key to validate the email and password
  final _formKey = GlobalKey<FormState>();
//Editting controller for the text parameters
final TextEditingController emailController = new TextEditingController();
final TextEditingController passwordController = new TextEditingController();




  @override
  Widget build(BuildContext context) {
//creating the fields
final emailField = TextFormField(
    autofocus: false,
    controller: emailController,
    keyboardType: TextInputType.emailAddress,
    onSaved: (value) {
          emailController.text = value!;
        },
    textInputAction: TextInputAction.next,
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.mail),
      contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
      hintText: 'Email',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),

    ),

);
//password
final passwordField = TextFormField(
    autofocus: false,
    controller: passwordController,
    obscureText: true,
    onSaved: (value) {
          passwordController.text = value!;
        },
    textInputAction: TextInputAction.done,
     decoration: InputDecoration(
      prefixIcon: Icon(Icons.password),
      contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
      hintText: 'Password',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),

    ),

);

final loginButton= Material(
  elevation: 5,
  borderRadius: BorderRadius.circular(50),
  child: MaterialButton(
    padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
    minWidth: MediaQuery.of(context).size.width,
    onPressed: (){},
    child: Text(
    'Login',
    textAlign: TextAlign.center,
    style: TextStyle(fontSize:20,color:Colors.white,fontWeight:FontWeight.bold ),) ,
    color: Colors.blueAccent,
  
  ) ,
) ;

     return Scaffold(
      backgroundColor: Colors.white,
      body:Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
            
                  SizedBox(
                          height: 350,
                          child: Image.asset(
                            "lib/assets/logo.jpg",
                            fit: BoxFit.contain,
                          )),
                  
                  SizedBox(height: 35),
                    emailField,

                 SizedBox(height: 25),
                    passwordField,

                 SizedBox(height: 35),
                    loginButton,

                 SizedBox(height: 15),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [
                    Text(
                          "Don't have an account? ",
                          style: TextStyle(fontSize: 18),),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) =>registration_screen() )
                              );
                            },
                            child:Text(
                              "Sign up",
                              style: TextStyle(
                              color: Color.fromARGB(255, 5, 199, 179),
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                            ),
                              
                              ) ,
                            
                            

                  ],
                 )

                  ],
                ),
            
            
              ),
            ),
          ),
        ),
        
      )

     );

    throw UnimplementedError();
  }


  
  }



