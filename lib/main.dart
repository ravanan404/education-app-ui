import 'package:education_ui/pages/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white60,
        primaryColor: Colors.lightGreen,
      ),
      home: const WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.lightGreen,
      child: Scaffold(
        body:Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.lightGreen,
              Colors.white,
            ],
              begin: Alignment.topCenter,
              end: Alignment.bottomRight
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset("assets/images/books.png"),
                ),
              ),
              Container(
                child: const Text("Welcome To The Education App",style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                child: Column(
                  children: [
                    const Text("Education is the best way to upgrade yourself",style: TextStyle(
                      color: Colors.black45,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),),
                  ],
                ),
              ),
              const SizedBox(
                height: 154,
              ),
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Homepage()));
              }, child:const Text("Let's Start 😇",style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

