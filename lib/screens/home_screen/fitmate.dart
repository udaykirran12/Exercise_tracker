import 'package:flutter/material.dart';
import 'package:login_screen/screens/home_screen/camera/camera.dart';
import 'package:camera/camera.dart';
import 'package:login_screen/screens/home_screen/camera/camerapage.dart';
import 'package:permission_handler/permission_handler.dart';
import 'pushed_pageA.dart';
import 'pushed_pageS.dart';
import 'pushed_pageY.dart';
// class FitMate extends StatefulWidget {
//   FitMate({Key? key}) : super(key: key);

//   @override
//   State<FitMate> createState() => _FitMateState();
// }
class FitMate extends StatelessWidget {
  final List<CameraDescription> cameras;
  FitMate(this.cameras);
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
            Container(
                  height: h*0.33,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color:  Colors.black,
                    image: DecorationImage(
                     
                      colorFilter: 
                    ColorFilter.mode(Colors.black.withOpacity(0.5), 
                  BlendMode.dstATop),
                      image: AssetImage("assets/images/fitmate.jpeg"),
                      fit: BoxFit.fill,
                    ),
                    
                  ),
             ),
             Container(
              margin: EdgeInsets.only(top:h*0.1, left: w*0.08),
              child: Text("FITMATE", style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),))
            ],
          ),
          Row(children: [
            InkWell(
              onTap: () async{
            //    await availableCameras().then(
            //   (value) => Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => Camera()
            //     ),
            //   ),
            // );
                onPressed: () =>
                              onSelectA(context: context, modelName: 'posenet'); 
              },
              child: Container(
                margin: EdgeInsets.only(top:30, left: 20),
                height: h*0.25,
                width: w*0.4,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/bicepcurls.jpg"),
                      fit: BoxFit.scaleDown,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                padding: EdgeInsets.only(top:180, left: 35),
                child: Text("Bicepcurls", style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),

            InkWell(
              
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Camera()));
              },
              child: Container(
                
                margin: EdgeInsets.only(top:30, left: 30),
                height: h*0.25,
                width: w*0.4,
                decoration: BoxDecoration(
                  
                  image: DecorationImage(image: AssetImage("assets/images/lats_pull_down.jpg"),
                      fit: BoxFit.scaleDown,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                padding: EdgeInsets.only(top:180, left: 35),
                child: Text("Lats pull down", style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            )
          ],)
        ],
      ),
    );
  }


void onSelectA({required BuildContext context, required String modelName}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPageA(
        cameras: cameras,
        title: modelName,
      ),
    ),
  );
}
}

