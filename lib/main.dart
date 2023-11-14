import 'package:eresource/pages/activeborrow_page.dart';
// import 'package:eresource/pages/borrowbook_page.dart';
import 'package:eresource/pages/borrowmenu_page.dart';
import 'package:eresource/pages/borrowroom_page.dart';
import 'package:eresource/pages/ebook_page.dart';
import 'package:eresource/pages/help_page.dart';
import 'package:eresource/pages/historyborrow_page.dart';
import 'package:eresource/pages/homepage.dart';
import 'package:eresource/pages/login_page.dart';
import 'package:eresource/pages/main_page.dart';
import 'package:eresource/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPages(),
        '/login': (context) => const LoginPage(),
        '/mainpage': (context) => const MainPage(),
        '/homepage': (context) => const HomePage(),
        '/borrowpage': (context) => const BorrowPage(),
        // '/borrowbookpage': (context) => const BorrowBook(),
        '/activeborrow': (context) => const ActiveBorrow(),
        '/historyborrow': (context) => const HistoryBorrow(),
        '/ruanganpage': (context) => const BorrowRoom(),
        '/ebookpage': (context) => const EbookPage(),
        '/bantuanpage': (context) => const HelpPage(),
      },
    );
  }
}
