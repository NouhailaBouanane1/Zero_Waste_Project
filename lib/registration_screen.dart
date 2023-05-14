import 'package:flutter/material.dart';




class registration_screen extends StatefulWidget{
   @override
  State<StatefulWidget> createState() => registrationscreenState();
  }
class registrationscreenState extends State <registration_screen>{
  final _formKey = GlobalKey<FormState>();
// Identifiying the controllers of everu field
final firstNameEditingController = TextEditingController();
final familyNameEditingController = TextEditingController();
final adressEditingController = TextEditingController();
final emailEditingController = TextEditingController();
final passwordEditingController = TextEditingController();
final confirmPasswordEditingController = TextEditingController();


  @override
  
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    //first name
    final firstNameField = TextFormField(
        style: TextStyle(fontSize: 18),
        autofocus: false,
        controller: firstNameEditingController,
        keyboardType: TextInputType.name,
        validator: (value) {
          RegExp regex = RegExp(r'^.{3,}$');
          if (value!.isEmpty) {
            return ('Name cannot be empty');
          }
          if (!regex.hasMatch(value)) {
            return ('Please ent a valid name');
          }
          return null;
        },
        onSaved: (value) {
          firstNameEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'First name',hintStyle: TextStyle(fontSize: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

//family name
final familyNameField = TextFormField(
        style: TextStyle(fontSize: 18),
        autofocus: false,
        controller: familyNameEditingController,
        keyboardType: TextInputType.name,
        validator: (value) {
          RegExp regex = RegExp(r'^.{3,}$');
          if (value!.isEmpty) {
            return ('Name cannot be empty');
          }
          if (!regex.hasMatch(value)) {
            return ('Please enter a valid family name');
          }
          return null;
        },
        onSaved: (value) {
          familyNameEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'Last name',hintStyle: TextStyle(fontSize: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));


        //address
final addressField = TextFormField(
        style: TextStyle(fontSize: 18),
        autofocus: false,
        controller: adressEditingController,
        keyboardType: TextInputType.name,
        validator: (value) {
          RegExp regex = RegExp(r'^.{3,}$');
          if (value!.isEmpty) {
            return ('Name cannot be empty');
          }
          if (!regex.hasMatch(value)) {
            return ('Please enter a valid name');
          }
          return null;
        },
        onSaved: (value) {
          adressEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.house),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'Please Enter your Address',hintStyle: TextStyle(fontSize: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

//email
 final emailField = TextFormField(
        style: TextStyle(fontSize: 18),
        autofocus: false,
        controller: emailEditingController,
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value!.isEmpty) {
            return ('Email value cannot be empty');
          }
          // reg expression for email validation
          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
              .hasMatch(value)) {
            return ('Please Enter a valid email');
          }
          return null;
        },
        onSaved: (value) {
          emailEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'Please Enter your Email',hintStyle: TextStyle(fontSize: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
 //password field
    final passwordField = TextFormField(
        style: TextStyle(fontSize: 18),
        autofocus: false,
        controller: passwordEditingController,
        obscureText: true,
        validator: (value) {
          RegExp regex = new RegExp(r'^.{6,}$');
          if (value!.isEmpty) {
            return ("Password required");
          }
          if (!regex.hasMatch(value)) {
            return ("Characters cannot be less than 6");
          }
        },
        onSaved: (value) {
          passwordEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",hintStyle: TextStyle(fontSize: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //confirm password field
    final confirmPasswordField = TextFormField(
        style: TextStyle(fontSize: 18),
        autofocus: false,
        controller: confirmPasswordEditingController,
        obscureText: true,
        validator: (value) {
          if (confirmPasswordEditingController.text !=
              passwordEditingController.text) {
            return "Password don't match";
          }
          return null;
        },
        onSaved: (value) {
          confirmPasswordEditingController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Confirm password",hintStyle: TextStyle(fontSize: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
final signUpButton= Material(
  elevation: 5,
  borderRadius: BorderRadius.circular(25),
  color: Colors.blueAccent,
  child: MaterialButton(
    padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
    minWidth: MediaQuery.of(context).size.width,
    onPressed: (){},
    child: Text(
    'Sign Up',
    textAlign: TextAlign.center,
    style: TextStyle(fontSize:20,color:Colors.white,fontWeight:FontWeight.bold ),) ,
  
  ) ,
) ;


    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.blueAccent,size: 22,),
          onPressed: () {
            // passing this to our root
            Navigator.of(context).pop();
          },
        ),
      ),
      body:Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left:30.0,right:30 ),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
            
                  SizedBox(
                          height: 300,
                          child: Image.asset(
                            "lib/assets/logo.jpg",
                            fit: BoxFit.contain,
                          )),
                  
                    SizedBox(height:0),
                    firstNameField,
                    
                    SizedBox(height: 20),
                    familyNameField,

                    SizedBox(height: 20),
                    addressField,

                    SizedBox(height: 20),
                    emailField,

                    SizedBox(height: 20),
                    passwordField,

                    SizedBox(height: 20),
                    confirmPasswordField,

                    SizedBox(height: 20),
                    signUpButton,
                    SizedBox(height: 20),
                  ],
                ),
            
            
              ),
            ),
          ),
        ),
        
      )

     );
  }


}