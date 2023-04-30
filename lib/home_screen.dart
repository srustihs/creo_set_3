import 'package:flutter/material.dart';
import 'package:news/home_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home Screen"),),
        );
    }
}


// import 'package:news/discover_screen.dart';
// import 'package:news/article_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter News App UI',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
    HomeScreen.routeName: (context) => const HomeScreen(),
    DiscoverScreen.routeName: (context) => const DiscoverScreen(),
    ArticleScreen.routeName: (context) => const ArticleScreen(),
      }
            );
      }
}