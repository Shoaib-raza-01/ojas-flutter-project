import 'package:flutter/material.dart';
import 'package:olas/screens/other_screen.dart';
import 'package:olas/screens/station.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var index = 1;
  List<Widget> widgetList = const [
    OtherScreen(pageName: "WELCOME to Home Page"),
    MyStation(),
    OtherScreen(pageName: "Krishi Bazaar will open soon.\nStay connected"),
    OtherScreen(pageName: "Opps! its a bit lonely here....."),
    OtherScreen(pageName: "Heyy!!  Good to see you here but we are not ready yet.........")
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("My Station",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 132, 0),
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              iconSize: 29,
              onPressed: (){}, 
              icon: const Icon(
                Icons.filter_alt_outlined
              )
            )
          ],
        ),
        body: IndexedStack(
          index:index,
          children: widgetList,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          selectedItemColor: Colors.orange.shade700,
          currentIndex: index,
           onTap: (value) {
              setState(() {
                index = value;
              });
            },
          items: [
            BottomNavigationBarItem(
              icon:Image.asset('assets/images/home-button.png',height: 30,),
              label: "Home"
            ),
            BottomNavigationBarItem(
              icon:Image.asset('assets/images/station.png',height: 30),
              label: "My Station"
            ),
            BottomNavigationBarItem(
              icon:Image.asset('assets/images/bazaar.png',height: 30),
              label: "Krishi Bazaar"
            ),
            BottomNavigationBarItem(
              icon:Image.asset('assets/images/farm.png',height: 30,),
              label: "My Farm"
            ),
            BottomNavigationBarItem(
              icon:Image.asset('assets/images/gyan.png',height: 30,),
              label: "Krishi Gyan"
            )
          ]
        ),
      )
    );
  }
}
