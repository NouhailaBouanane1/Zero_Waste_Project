
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
class type_of_user extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>typeOfUser();
}

class typeOfUser extends State<type_of_user>{
    double widthCardPercentage=0.95;

  @override
  Widget build(BuildContext context) {

    Size size=MediaQuery.of(context).size;

   return Scaffold(

    backgroundColor: Colors.white,

    appBar: AppBar(
      leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.blueAccent,size: 22,),
          onPressed: () {
            // passing this to our root
            Navigator.of(context).pop();
          },),
      backgroundColor: Colors.white,
      title: Text(
        'Zero Waste',
        
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.blueAccent,
        ),
      )
      ),


  body:Container(
    child: Stack(
        children:<Widget> [
  
          Container(
            width: size.width/3,
             decoration: BoxDecoration(
              gradient: LinearGradient(
                           begin: Alignment.topLeft,
                           end: Alignment.bottomRight,
                      colors: [
                        Colors.blueAccent,
                        Colors.white,
                      ], ),
             )
          ),
  Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children:<Widget> [
   
/////////////////////////////////////////////////////////

                 Padding(
                    padding: const EdgeInsets.only(top:12.0,bottom: 12,left: 20,right: 10),
                    child: Container(
                      decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(40),
                           gradient: LinearGradient(
                           begin: Alignment.topLeft,
                           end: Alignment.bottomRight,
                      colors: [
                        Colors.blueAccent,
                        Color.fromRGBO(178, 205, 226, 1),
                        Color.fromRGBO(122, 190, 246, 1),
                      ], ),
                      boxShadow:[
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 15,
                      spreadRadius: 5,
                    ),

                  ] ,
                  ),
                      height: size.height/4,
                      child: TextButton(  
                           child: Padding(
                             padding: const EdgeInsets.all(6.0),
                             child: Row(
                              children: <Widget>[
                                SizedBox(
                                  height: 70,
                                 width:70,
                                                     child: Image.asset(
                                "lib/assets/user.png",
                                fit: BoxFit.contain,
                              ),
                                                     ),
                           
                                                     SizedBox(width: 12,),
                                                     Center(
                              child: Text(
                                'Donor or Donee',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,fontWeight: FontWeight.bold
                                            
                                ),
                               ),
                                                     ),
                              Align(
                                       alignment: Alignment.centerRight,
                                       child: Card(
                                         clipBehavior: Clip.antiAliasWithSaveLayer,
                                         child: Icon(
                                                     Icons.arrow_forward_ios_rounded,color:Color.fromARGB(255, 5, 199, 179),size: 25,
                                         ),
                                         shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20) ),
                                        margin: EdgeInsets.all(8),
                           
                                         elevation: 5,
                                       ),
                                     )
                              ],
                             ),
                           ),
                           
                           onPressed: (){},
                      ),
                    ),
                  ),
                  
           
                
  
  SizedBox(height: 10,),
  
              Padding(
                    padding: const EdgeInsets.only(top:12.0,bottom: 12,left: 20,right: 10),
                    child: Container(
                      decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(40),
                           gradient: LinearGradient(
                           begin: Alignment.topLeft,
                           end: Alignment.bottomRight,
                      colors: [
                        Colors.blueAccent,
                        Color.fromRGBO(178, 205, 226, 1),
                        Color.fromRGBO(122, 190, 246, 1),
                      ], ),
                      boxShadow:[
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 15,
                      spreadRadius: 5,
                    ),

                  ] ,
                  ),
                      height: size.height/4,
                        width: size.width,
                      child: TextButton(  
                           child: Row(
                            children: <Widget>[
                              
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                                        height: 70,
                                                        child: Image.asset(
                                                          "lib/assets/restaurant.png",
                                                          fit: BoxFit.contain,
                                                        )),
                              ),
                          SizedBox(width: 15,),
                          Center(
                            child: Text(
                                'Restaurant',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,fontWeight: FontWeight.bold
                                            
                                ),
                               ),
                            ),
                         
                          SizedBox(width: 60,),
                           Align(
            alignment: Alignment.centerRight,
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Icon(
                          Icons.arrow_forward_ios_rounded,color: Color.fromARGB(255, 5, 199, 179),size: 25,
              ),
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20) ),
              margin: EdgeInsets.all(8),
              elevation: 5,
            ),
          )
                            ],
                           ),
                           
                           onPressed: (){},
                      ),
                    ),
                  ),



/////////////////////////////////////////////////////
      ],
    ),
  )
         
              ],
            ),
  ),
      
       
   
  
  
   );


  }
  
}