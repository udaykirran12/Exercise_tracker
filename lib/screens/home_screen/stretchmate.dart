import 'package:flutter/material.dart';
import 'package:login_screen/screens/home_screen/camera/camera.dart';
import 'package:login_screen/screens/home_screen/camera/camera_trail.dart';
class StretchMate extends StatefulWidget {
  StretchMate({Key? key}) : super(key: key);

  @override
  State<StretchMate> createState() => _StretchMateState();
}
class _StretchMateState extends State<StretchMate> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w =  MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
            Container(
                  height: h*0.32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color:  Colors.black,
                    image: DecorationImage(
                      
                      colorFilter: 
                    ColorFilter.mode(Colors.black.withOpacity(0.5), 
                  BlendMode.dstATop),
                      image: AssetImage("assets/images/strechmate.jpeg"),
                      fit: BoxFit.fill,
                    ),

                  ),
             ),
             Container(
              margin: EdgeInsets.only(top:h*0.1, left: w*0.05),
              child: Text("STRETCHMATE", style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),))
            ],
          ),
          Row(children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> CameraApp()));
              },
              child: Container(
                margin: EdgeInsets.only(top:30, left: 20),
                height: h*0.25,
                width: w*0.4,
                decoration: BoxDecoration(
                  
                  image: DecorationImage(
                    scale: 5,
                    alignment: Alignment.center,
                    image: AssetImage("assets/images/vikrasana.jpg"),
                      fit: BoxFit.scaleDown,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                padding: EdgeInsets.only(top:180, left: 45),
                child: Text("Vikrasana", style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),

            InkWell(
              
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> CameraApp()));
              },
              child: Container(
                margin: EdgeInsets.only(top:30, left: 30),
                height: h*0.25,
                width: w*0.4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    
                    image: AssetImage("assets/images/cobrapose.jpg"),
                      fit: BoxFit.scaleDown,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                padding: EdgeInsets.only(top:180, left: 35),
                child: Text("Cobra pose", style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            )
          ],)
        ],
      ),
    );
  }
}