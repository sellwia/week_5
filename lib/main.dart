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
        child : Column (
          mainAxisAlignment : MainAxisAlignment.center,
          children : [
            // kolom Pertama polosan
            Container (
              width : 200,
              height : 100,
              alignment : Alignment.center,
              decoration: BoxDecoration(
                gradient : const LinearGradient(
                  begin : Alignment.topRight,
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

            // kolom kedua (border)
            Container (
              width : 200,
              height : 100,
              alignment : Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3.0,
                  color: Colors.black,
                ),
                gradient : const LinearGradient(
                  begin : Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.blue, Colors.amberAccent],
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Text(
                "tambah kolom 2",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 20), //jarak antar kolom

            // kolom ketiga (buat miring)
            Transform.rotate(
              angle : 0.15,
              child: Container(
              width : 200,
              height : 100,
              alignment : Alignment.center,
              decoration: BoxDecoration(
              gradient : const LinearGradient(
                colors: [Colors.purpleAccent, Colors.blue],
              ),
              borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                "tambah kolom miring",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
         ),
        ]
      ),
      ),
    );
  }
}