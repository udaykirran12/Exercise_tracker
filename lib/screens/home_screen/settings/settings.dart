import 'package:flutter/material.dart';
import 'package:login_screen/screens/home_screen/home_screen.dart';
import 'package:camera/camera.dart';
class Settings extends StatefulWidget {
  Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  late final List<CameraDescription> cameras;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 73, 164, 238),
        title: Text("Settings", style: TextStyle(color: Colors.black),),
      ),
      body: Column(

      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: IconButton(icon: Icon(Icons.model_training),
            onPressed: (){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  HomeScreen(cameras)),
            );
            },
            ),
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
      ])
    );
  }
}