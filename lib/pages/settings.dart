import 'package:flutter/material.dart';
import 'package:faihemmah/pages/aboutUs.dart';
import 'package:faihemmah/pages/viewProfileCompany.dart';

void main() {
  runApp(const settings());
}
class settings extends StatelessWidget {
 const settings ({Key?key}) : super(key: key); 

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  const MyHomePage ({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar:AppBar(
     
  backgroundColor:Colors.white,
 
 leading:IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      onPressed:() {
      Navigator.push(context,MaterialPageRoute(builder: (context) => viewProfileCompany()));
        
      }
    ),
      title:
        Text('Settings',
        style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
          
          ),
    
          
        ),
    
      ),
      body:
     SingleChildScrollView(child: 
 Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
      children: [
Container(
   height: 60,
   margin:EdgeInsets.all(20),
   decoration: BoxDecoration(borderRadius:BorderRadius.circular(90),color: Color(0xFFF4F4F4),
   ),
  child:

         Row(
         
          children: [

           SizedBox(height: 100,),
        SizedBox(width: 30,),
       
       
          Icon(
          Icons.info,
          color: Color.fromARGB(255, 3, 5, 110),
          size:30,
          
           ),
       
         SizedBox(width: 10,),
         new GestureDetector(
  onTap: () {
    Navigator.push(context,MaterialPageRoute(builder: (context) =>aboutUs()));
   // Navigator.pushNamed(context, aboutUs());
  },
  child: new
        Text(
          'About us',
          textAlign: TextAlign.center,
          style: TextStyle(
            color:Color.fromARGB(205, 0, 0, 0) ,
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 1.88,
          ),
        ),
         ),
        ],
        ),
),
Container( 
  height: 60,
  margin:EdgeInsets.all(20),
    decoration: BoxDecoration(borderRadius:BorderRadius.circular(90),color: Color(0xFFF4F4F4),
   ),
  child:
        Row(
          
          children: [
        SizedBox(height: 130,),
        SizedBox(width: 30,),
       Icon(
        Icons.password_rounded,
        color: Color.fromARGB(255, 8, 35, 123),
        size:30,
         ),
         SizedBox(width: 10,),
         new GestureDetector(
  onTap: () {
    Navigator.pushNamed(context, "");
  },
  child: new
        Text(
          'Change Password',
          textAlign: TextAlign.center,
          style: TextStyle(
            color:Color.fromARGB(205, 0, 0, 0) ,
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 1.88,
          ),
        ),
         ),
        ],
        ),
),
Container(
   height: 60,
  margin:EdgeInsets.all(20),
    decoration: BoxDecoration(borderRadius:BorderRadius.circular(90),color: Color(0xFFF4F4F4),
    ),
  child:
        Row(
          
          children: [
            
        SizedBox(height: 150,),
        SizedBox(width: 27,),

        TextButton.icon(onPressed: () async{

         // await FirebaseAuth.instance.signout();
          if (!mounted) return;
          Navigator.pop(context);
        },
        
        label:Text('Logout',
          textAlign: TextAlign.center,
          style: TextStyle(
            color:Color.fromARGB(205, 0, 0, 0) ,
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 1.88,
          ),
        ),
        
icon:Icon(Icons.logout,

color: Color.fromARGB(255, 25, 5, 83),
        size:30,
),
        // SizedBox(width: 10,),



     /*  Icon(
        Icons.login_outlined,
        color: Color.fromARGB(255, 25, 5, 83),
        size:30,
         ),
         SizedBox(width: 10,),
         new GestureDetector(
  onTap: () {
    Navigator.pushNamed(context, "");
  },
  child: new
        Text(
          'Logout',
          textAlign: TextAlign.center,
          style: TextStyle(
            color:Color.fromARGB(205, 0, 0, 0) ,
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 1.88,
          ),
        ),
        */
         ),
        
        
          ],
),
),
      ], 
 ),
     ),
    );
  }
}