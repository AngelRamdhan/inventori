import 'dart:html';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'flutter Tutorials', home: Main());
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade300,
        centerTitle: true,
        title: Text('Home'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Welcome', style: const TextStyle(fontFamily: 'Poppins', fontSize: 30, fontWeight: FontWeight.bold)),
            Text('Google name', style: const TextStyle(fontFamily: 'Poppins', fontSize: 10, fontWeight: FontWeight.bold)),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text('Product In', style: const TextStyle(fontFamily: 'Poppins', fontSize: 20)),
                      Text('10', style: const TextStyle(fontFamily: 'Poppins', fontSize: 50)),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_downward,
                  size: 40,
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text('Product Out', style: const TextStyle(fontFamily: 'Poppins', fontSize: 20)),
                      Text('4', style: const TextStyle(fontFamily: 'Poppins', fontSize: 50)),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_upward,
                  size: 40,
                ),
              ],
            ),
            Text('Low Stock', style: const TextStyle(fontFamily: 'Poppins', fontSize: 30, fontWeight: FontWeight.bold)),
            Text('Stock Warning', style: const TextStyle(fontFamily: 'Poppins', fontSize: 15)),
            Row(
              children: <Widget>[
                Card(
                  elevation: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    child: Image.asset("assets/sepatu2.jpg", width: 90, height: 90),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Brand new shoes', textAlign: TextAlign.left, style: const TextStyle(fontFamily: 'Poppins', fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('SH-231', textAlign: TextAlign.left, style: const TextStyle(fontFamily: 'Poppins', fontSize: 14)),
                    RaisedButton(
                      child: Text('Stock 1', style: const TextStyle(fontFamily: 'Poppins')),
                      color: Colors.red.shade400,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Card(
                  elevation: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    child: Image.asset("assets/sepatu2.jpg", width: 90, height: 90),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Brand New Shoes', textAlign: TextAlign.left, style: const TextStyle(fontFamily: 'Poppins', fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('SH-231', textAlign: TextAlign.left, style: const TextStyle(fontFamily: 'Poppins', fontSize: 14)),
                    RaisedButton(
                      child: Text('Stok 1', style: const TextStyle(fontFamily: 'Poppins')),
                      color: Colors.red.shade400,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.purple.shade300,
        icon: Icon(Icons.arrow_downward),
        label: Text("New Transaction", style: TextStyle(fontFamily: 'Poppins')),
      ),
    );
  }
}

