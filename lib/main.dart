import 'package:advice_app/screens/feed_screen.dart';
import 'package:advice_app/screens/welcome_screen.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:advice_app/screens/profile_screen.dart';
import 'package:advice_app/screens/post_screen.dart';
import 'package:advice_app/screens/login_screen.dart';
import 'package:advice_app/screens/registration_screen.dart';
import 'package:advice_app/roundedbutton.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';

List<CameraDescription> cameras = [];


Future<void> main() async {
  // Fetch the available cameras before initializing the app.
  try {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
     await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  } on CameraException catch (e) {
    print('Error in fetching the cameras: $e');
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
         iconTheme: const IconThemeData(size: 36.0, color: Colors.black87),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id :(context) => WelcomeScreen(),
        LoginScreen.id:(context) => LoginScreen(),
        RegistrationScreen.id:(context) => RegistrationScreen(),
        FeedScreen.id:(context) => FeedScreen(),
        ProfileScreen.id: (context) => ProfileScreen()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
