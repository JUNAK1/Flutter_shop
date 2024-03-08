import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:foodly_ui/constants.dart';
import 'package:foodly_ui/screens/onboarding/onboarding_scrreen.dart';
//import 'package:foodly_ui/infrastructure/models/pokemon.dart';
//import 'package:food-Restaurant-Flutter-App-main/';
//food-Restaurant-Flutter-App-main\lib\infrastructure\models

//C:\Users\USUARIO\Desktop\NEWA\Flutter\
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  dynamic pokemon;
  //Pokemon? pokemon;

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    //final response = await Dio().get('https://pokeapi.co/api/v2/pokemon/1');
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/todos/1');

    pokemon = response.data;
    //pokemon = Pokemon.fromJson(response.data);
    setState(() {});
    //EndPoint
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Petition Http'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Text(pokemon?.name ?? 'No data'),
          Text(pokemon?.toString() ?? 'No data'),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigate_next),
        onPressed: () {},
      ),
    );
  }
}


  /*
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Flutter Way - Foodly UI Kit',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            foregroundColor: Colors.white,
            minimumSize: const Size(double.infinity, 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: bodyTextColor),
          bodySmall: TextStyle(color: bodyTextColor),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.all(defaultPadding),
          hintStyle: TextStyle(color: bodyTextColor),
        ),
      ),
      home: const OnboardingScreen(),
    );
  }
  */