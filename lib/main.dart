// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:login_screen/controller/auth_controller.dart';
import 'screens/login_screen/login_screen.dart';
import 'utils/constants.dart';
import 'package:camera/camera.dart';
import 'screens/home_screen/home_screen.dart';
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp().then((value) => Get.put(AuthController()));
//   runApp(const MyApp());
// }

late List<CameraDescription> cameras;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    cameras = await availableCameras();
  } on CameraException catch (e) {
    print('Error: $e.code\nError Message: $e.message');
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(cameras),
      //home: MainScreen(cameras),
      // routes: {
      //   MainScreen.id: (context) => MainScreen(cameras),
      //   //DemoScreen.id: (context) => DemoScreen(),
      // },
    );
  }
}
// void main()
// {
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Exercise Tracker',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         scaffoldBackgroundColor: kBackgroundColor,
//         textTheme: Theme.of(context).textTheme.apply(
//               bodyColor: kPrimaryColor,
//               fontFamily: 'Montserrat',
//             ),
//       ),
//       //home: const LoginScreen(),
//       home:   HomeScreen(),
//     );
//   }
// }
