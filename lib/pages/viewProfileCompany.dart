import 'package:flutter/material.dart';
import 'package:faihemmah/pages/settings.dart';

import 'data_from_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
void main() {
  runApp(const viewProfileCompany());
}
class viewProfileCompany extends StatelessWidget {
 const viewProfileCompany ({Key?key}) : super(key: key); 

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
   //final credential= FirebaseAuth.instance.currentUser;
  
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.white,
  leading: const BackButton(
    color: Colors.black),
       title: Text(
        ' Company Profile',
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
          height: 1.50,
        ),
      ),  

actions: [
    IconButton(
      icon: Icon(
        Icons.settings,
        color: Colors.black,
      ),
      onPressed:() {
      Navigator.push(context,MaterialPageRoute(builder: (context) =>settings()));
        
      }
    ),
],
      ),
    
      
      body:
   
    SingleChildScrollView(child: 
       Column(
    
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(width:400),
      SizedBox(height:40),
    
Stack(
      children: [
        CircleAvatar(
          radius: 75,
          backgroundColor: Colors.grey.shade200,
          child: CircleAvatar(
            radius: 70,
           
            backgroundImage:NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/020/765/399/small/default-profile-account-unknown-icon-black-silhouette-free-vector.jpg"), 
          ),
        ),
        Positioned(
          bottom: 1,
          right: 1,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Icon(Icons.add_a_photo, color: Colors.black),
            ),
            decoration: BoxDecoration(
                border: Border.all(
                  width: 3,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    50,
                  ),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow( offset: Offset(2, 4),
                    color: Colors.black.withOpacity(
                      0.3,
                    ),
                    blurRadius: 3,
                  ),
                ]),
          ),
        ),
      ],
    ),

      Container(
        width: 320,
        height: 105,
        child: Stack(
          children: [
            Positioned(
              left: 20,
              top: 0,
              child: Text(
                'Company Name',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF585858),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.88,
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 45,
              child: Container(
                width: 320,
                height: 60,
                decoration: ShapeDecoration(
                  color: Color(0xFFF4F4F4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
             Positioned(
          bottom: 0,
          right: 1,
          top: 35,
          
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Icon(Icons.edit, color: Colors.black),
            ),
          ),
             ),
            Positioned(
              left: 30,
              top: 60,
              child:
              
              Text('Alhabeeb',
            //Text(company.displayName! ,
                textAlign: TextAlign.center,
                style: TextStyle(
                   color: Colors.black,
                  fontSize: 16,
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
        width: 320,
        height: 105,
        child: Stack(
          children: [
            Positioned(
              left: 20,
              top: 0,
              child: Text(
                'Password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF585858),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.88,
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 45,
              child: Container(
                width: 320,
                height: 60,
                decoration: ShapeDecoration(
                  color: Color(0xFFF4F4F4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
             Positioned(
          bottom: 0,
          right: 1,
          top: 35,
          
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Icon(Icons.edit, color: Colors.black),
            ),
          ),
             ),
            Positioned(
              left: 30,
              top: 60,
              child: Text(
                'Alhabeeb01@',
                textAlign: TextAlign.center,
                style: TextStyle(
                   color: Colors.black,
                  fontSize: 16,
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
        width: 320,
        height: 105,
        child: Stack(
          children: [
            Positioned(
              left: 20,
              top: 0,
              child: Text(
                'Email',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF585858),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.88,
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 45,
              child: Container(
                width: 320,
                height: 60,
                decoration: ShapeDecoration(
                  color: Color(0xFFF4F4F4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
             Positioned(
          bottom: 0,
          right: 1,
          top: 35,
          
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Icon(Icons.edit, color: Colors.black),
            ),
          ),
             ),
            Positioned(
              left: 30,
              top: 60,
              child: 
              
          // Text( ${credential!.email},
          
       Text("Alhabbeb@gmail.com",
                textAlign: TextAlign.center,
                style: TextStyle(
                   color: Colors.black,
                  fontSize: 16,
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
        width: 320,
        height: 105,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 45,
              child: Container(
                width: 320,
                height: 60,
                decoration: ShapeDecoration(
                  color: Color(0xFFF4F4F4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
             Positioned(
          bottom: 0,
          right: 1,
          top: 35,
          
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Icon(Icons.edit, color: Colors.black),
            ),
          ),
             ),
            Positioned(
              left: 30,
              top: 60,
              child: Text(
                'Commercial',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 1.88,
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 0,
              child: Text(
                'Field',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF585858),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.88,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        width: 320,
        height: 105,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 45,
              child: Container(
                width: 320,
                height: 60,
                decoration: ShapeDecoration(
                  color: Color(0xFFF4F4F4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
             Positioned(
          bottom: 0,
          right: 1,
          top: 35,
          
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Icon(Icons.edit, color: Colors.black),
            ),
          ),
             ),
            Positioned(
              left: 21,
              top: 0,
              child: Text(
                'Year of Establishment',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF585858),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.88,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 60,
              child: Text(
                '1976',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
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
        width: 320,
        height: 105,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 45,
              child: Container(
                width: 320,
                height: 60,
                decoration: ShapeDecoration(
                  color: Color(0xFFF4F4F4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
             Positioned(
          bottom: 0,
          right: 1,
          top: 35,
          
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Icon(Icons.edit, color: Colors.black),
            ),
          ),
             ),
            Positioned(
              left: 21,
              top: 0,
              child: Text(
                'Phone Number',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF585858),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.88,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 60,
              child: Text(
                '+966 12 6652521',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
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
        width: 320,
        height: 105,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 45,
              child: Container(
                width: 320,
                height: 60,
                decoration: ShapeDecoration(
                  color: Color(0xFFF4F4F4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
             Positioned(
          bottom: 0,
          right: 1,
          top: 35,
          
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Icon(Icons.edit, color: Colors.black),
            ),
          ),
             ),
            Positioned(
              left: 21,
              top: 0,
              child: Text(
                'Headquarters',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF585858),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.88,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 60,
              child: Text(
                'jeddah',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
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
        width: 320,
        height: 105,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 45,
              child: Container(
                width: 300,
                height: 400,
                decoration: ShapeDecoration(
                  color: Color(0xFFF4F4F4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
             Positioned(
          bottom: 0,
          right: 1,
          top: 35,
          
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Icon(Icons.edit, color: Colors.black),
            ),
          ),
             ),
            Positioned(
              left: 19,
              top: 0,
              child: Text(
                'Description',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF585858),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.88,
                ),
              ),
            ),
    
            Positioned(
              left: 29,
              top: 55,
              child: Text(
                '  Saudi company specializing in medicine',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 2.14,
                ),
              ),
            ),
                         
          ],
    ),        
          
           ),
          ],
        ),
      ),
    
       
   // GetDataFromFirebase(documentId: credential!.uid,),




  );

    
  }
}
