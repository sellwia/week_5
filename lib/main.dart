import'package:flutter/material.dart';

void main(){
runApp (MyApp());
}

// Methode MyApp
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Title Aplikasi',
      home: MyHome(),
    );
  }
}

// methode MyHome
class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Container"),
        backgroundColor: Colors.blueGrey,
        actions: [
          Icon(Icons.person, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.account_tree, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.ac_unit, color: Colors.white),
          SizedBox(width: 20,)
        ],
      ),
      body : Center(
        Child : Column (
          mainAxisAligment : MainAxisAligment.center,
          Children : [
            // kolom Pertama polosan
            Container (
              Widht : 200,
              height : 100,
              aligment : Aligment.center,
              decoration: BoxDecoration(
                gradient : const LinearGradient(
                  begin : Aligment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.blue, Colors.amberAccent],
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Text(
                "Ini Kolom 1",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 20), //jarak antar kolom
            
                )
              )
            )
          ]
        )
      )
    );
  }
}