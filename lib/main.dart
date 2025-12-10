import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:o2live/pages/getstarted.dart';
import 'package:o2live/pages/homepage.dart';
import 'package:o2live/pages/loginpage.dart';
import 'package:o2live/pages/signup.dart';
import 'package:device_preview/device_preview.dart';
import 'package:o2live/theme/theme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  await dotenv.load(fileName: '.env');

  final URL = dotenv.env['SUPABASE_URL'];
  final KEY = dotenv.env['SUPABASE_KEY'];

  await Supabase.initialize(url: URL!, anonKey: KEY!);

  // runApp(MyApp());
  runApp(DevicePreview(builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '02 Live',
      theme: lightmode,
      // home: const LoginPage(),
      initialRoute: "/getStarted",
      routes: {
        "/homePage": (context) => HomePage(),
        "/getStarted": (context) => GetStarted(),
        "/loginPage": (context) => LoginPage(),
        "/signUP": (context) => SignUp(),
      },
    );
  }
}
