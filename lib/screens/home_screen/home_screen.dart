import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_screen/main.dart';
import 'package:login_screen/screens/home_screen/fitmate.dart';
import 'package:login_screen/screens/home_screen/stretchmate.dart';
import 'package:lottie/lottie.dart';
import 'package:login_screen/screens/home_screen/settings/settings.dart';
class HomeScreen extends StatefulWidget {
  final List<CameraDescription> cameras;
  // HomeScreen(this.cameras);
  HomeScreen(this.cameras);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery. of(context). size. width ;
    double h = MediaQuery. of(context). size. height;  
    return Scaffold(
      // backgroundColor: Color(0xFFFFFF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            // color: Colors.amber,
            width: w,
            margin: EdgeInsets.only(left: w*0.1, top:h*0.1),
            child: Text("FITMATE", 
                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,
                   ),),
          ),
          InkWell(
            onTap:(){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  FitMate(cameras)),
     );
            },
            child: Container(
              height: h*0.3,
              width: w*0.8,
              margin: EdgeInsets.only(top:20),
              padding: EdgeInsets.only(top:20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child:Lottie.network("https://assets6.lottiefiles.com/packages/lf20_si1wurff.json"),
              //https://assets6.lottiefiles.com/packages/lf20_si1wurff.json
              //https://assets2.lottiefiles.com/packages/lf20_fyj5ox9g.json
              ),
          ),
          Container(
            width: w,
           margin: EdgeInsets.only(left: w*0.1, top:20),
            child: Text("STRETCHMATE", 
                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,
                   ),),
          ),
           InkWell(
             onTap:(){
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  StretchMate()),
     );
             },
             child: Container(
              
                height: h*0.3,width: w*0.8,
                margin: EdgeInsets.only(top:20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Lottie.network("https://assets9.lottiefiles.com/packages/lf20_4ggqrsq6.json"),
                //https://assets9.lottiefiles.com/packages/lf20_4ggqrsq6.json
                //https://assets9.lottiefiles.com/packages/lf20_s00z9gco.json
              ),
           ),
          
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.model_training),
            label: 'Training',
          ),
          BottomNavigationBarItem(
            icon: IconButton(icon: Icon(Icons.settings),
            onPressed: (){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Settings()),
            );
            },
            ),
            label: 'Settings',
          ),
      ]),
    );
  }
}
