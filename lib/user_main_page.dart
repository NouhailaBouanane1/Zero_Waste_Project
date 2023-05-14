import 'package:flutter/material.dart';

class user_main_page extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>userMainPage();
}
class userMainPage extends State<user_main_page>{
    double widthCardPercentage=0.95;

  @override
  Widget build(BuildContext context) {

    Size size=MediaQuery.of(context).size;

   return Scaffold(
        backgroundColor: Colors.white,
appBar:AppBar(
  leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,size: 22,),
          onPressed: () {
            // passing this to our root
            Navigator.of(context).pop();
          },),

          title: Text(
            'Zero Waste',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          backgroundColor: Colors.blueAccent,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () { },
                icon: const Icon(Icons.notifications)),
                IconButton(
                onPressed: () { },
                icon: const Icon(Icons.settings))
          ],),


body: Stack(  
 
    children: [
      Container(color: Colors.white,),


Padding(
  padding: const EdgeInsets.all(12.0),
  child:   Container(
  decoration: BoxDecoration(
  
            borderRadius: BorderRadius.circular(40),
  
            color: Colors.blue[200],
  
             ),
  
    child:   Padding(
  
      padding: const EdgeInsets.only(top:20.0,bottom:20),
  
      child:   SingleChildScrollView(
        child:   Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children:<Widget> [ 
                 Padding(
             padding: const EdgeInsets.only(top:8.0,left: 28,right: 28),
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
                          color: Colors.white,   
                              blurRadius: 15,
                    spreadRadius: 5,
                  ),
                   ] ,
               ),
  
                              height: size.height/6,
                              child: TextButton(  
  
            onPressed: () {  },
            child: Row(
                                      children: <Widget>[
                                        ClipOval(
                          child: SizedBox(
                                      height: 70,
                           width:70,
                                             child: Image.asset(
 
                                          "lib/assets/foodProduct.jpg",
                                    fit: BoxFit.contain,
                                                 ), ),
  
                                        ),
                             SizedBox(width: 12,),
  
                          Center(
  
           child: Text(
                    'My Product',
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
         ),
   ),
   SizedBox(height: 12),

  ///////////////////////////////////////////////////////
   Padding(
             padding: const EdgeInsets.only(top:12.0,left: 28,right: 28),
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
                          color: Colors.white,   
                              blurRadius: 15,
                    spreadRadius: 5,
                  ),
                   ] ,
               ),
  
                              height: size.height/6,
                              child: TextButton(  
  
            onPressed: () {  },
            child: Row(
                                      children: <Widget>[
                                        ClipOval(
                          child: SizedBox(
                                      height: 70,
                           width:70,
                                             child: Image.asset(
 
                                          "lib/assets/restaurantI.jpg",
                                    fit: BoxFit.contain,
                                                 ), ),
  
                                        ),
                             SizedBox(width: 12,),
  
                          Center(
  
           child: Text(
                    'Restaurant',
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
         ),
   ),
    SizedBox(height:12),

  ///////////////////////////////////////////////////////
   Padding(
             padding: const EdgeInsets.only(top:12.0,left: 28,right: 28),
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
                          color: Colors.white,   
                              blurRadius: 15,
                    spreadRadius: 5,
                  ),
                   ] ,
               ),
  
                              height: size.height/6,
                              child: TextButton(  
  
            onPressed: () {  },
            child: Row(
                                      children: <Widget>[
                                        ClipOval(
                          child: SizedBox(
                                      height: 70,
                                      width:70,
                                             child: Image.asset(
 
                                          "lib/assets/food.jpg",
                                    fit: BoxFit.contain,
                                                 ), ),
  
                                        ),
                            SizedBox(width: 12,),
  
                          
  
          Container(
            alignment: Alignment.center,
            width: size.width/3,
             child: Text(
                      ' Products',
              style: TextStyle(
                               fontSize: 30,
                       color: Colors.white,fontWeight: FontWeight.bold
               ),
                     ),
           ),
                    SizedBox(width: 12,)  ,                    
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
         ),
   ),
    SizedBox(height:12),

  ///////////////////////////////////////////////////////
   Padding(
             padding: const EdgeInsets.only(top:12.0,left: 28,right: 28),
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
                          color: Colors.white,   
                              blurRadius: 15,
                    spreadRadius: 5,
                  ),
                   ] ,
               ),
  
                              height: size.height/6,
                              child: TextButton(  
  
            onPressed: () {  },
            child: Row(
                                      children: <Widget>[
                                        ClipOval(
                          child: SizedBox(
                                      height: 70,
                           width:70,
                                             child: Image.asset(
 
                                          "lib/assets/analytics.jpg",
                                    fit: BoxFit.contain,
                                                 ), ),
  
                                        ),
                             SizedBox(width: 12,),
  
                          
  
          Container(
            alignment: Alignment.center,
            width: size.width/3,
             child: Text(
                      'Analytics',
              style: TextStyle(
                               fontSize: 30,
                       color: Colors.white,fontWeight: FontWeight.bold
               ),
                     ),
           ),
                    SizedBox(width: 10,)  ,                    
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
         ),
   ),
     ], ),
  


        ),
    ),
    ),
    ),
    ),
   
  ],),      
);

   
   }
   }