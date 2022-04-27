import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout',
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  static final colorBlue = Colors.purple.shade300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white),
        title: Text(
          'Add Product',
          style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 20),
        ),
        backgroundColor: Colors.purple.shade300,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Product Information',
                  style: TextStyle(fontSize: 20, fontFamily: 'Poppins', fontWeight: FontWeight.bold, color: Colors.black),
                ),
                Divider(
                  height: 15,
                  color: Colors.white,
                ),
                SizedBox(height: 15),
                Container(
                  margin: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Gambar Produk', style: TextStyle(fontFamily: 'Poppins', fontSize: 14)),
                      SizedBox(height: 9),
                      Container(
                        width: double.infinity,
                        height: 175,
                        decoration: BoxDecoration(color: Colors.purple.shade50, border: Border.all(width: 5, color: Colors.purple.shade300), borderRadius: BorderRadius.circular(9)),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.purple.shade300,
                            size: 29,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nama Produk', style: TextStyle(fontFamily: 'Poppins', fontSize: 14)),
                      SizedBox(height: 8),
                      TextField(
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 12),
                        decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 4)), filled: true, fillColor: Colors.white, hintStyle: TextStyle(color: Color.fromARGB(255, 149, 149, 149)), hintText: 'Shoe', border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('ID Produk', style: TextStyle(fontFamily: 'Poppins', fontSize: 14)),
                      SizedBox(height: 8),
                      TextField(
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 12),
                        decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 4)), filled: true, fillColor: Colors.white, hintStyle: TextStyle(color: Color.fromARGB(255, 149, 149, 149)), hintText: 'SH-231', border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Harga', style: TextStyle(fontFamily: 'Poppins', fontSize: 14)),
                      SizedBox(height: 8),
                      TextField(
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 12),
                        decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 4)), filled: true, fillColor: Colors.white, hintStyle: TextStyle(color: Color.fromARGB(255, 149, 149, 149)), hintText: 'Rp.150.000', border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Stok', style: TextStyle(fontFamily: 'Poppins', fontSize: 14)),
                      SizedBox(height: 8),
                      TextField(
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 12),
                        decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 4)), filled: true, fillColor: Colors.white, hintStyle: TextStyle(color: Color.fromARGB(255, 149, 149, 149)), hintText: '15', border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Deskripsi', style: TextStyle(fontFamily: 'Poppins', fontSize: 14)),
                      SizedBox(height: 8),
                      TextField(
                        maxLines: 6,
                        style: TextStyle(fontFamily: 'Popppins', fontSize: 12),
                        decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 4)), filled: true, fillColor: Colors.white, hintStyle: TextStyle(color: Color.fromARGB(255, 149, 149, 149)), hintText: 'Enter a description...', border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 80.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Low Stock Warning',
                        style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                      ),
                      Text(
                        'Change Value to 0 for disable low stock warning',
                        style: TextStyle(fontFamily: 'Poppins', color: Colors.red),
                      ),
                      SizedBox(height: 10),
                      Divider(
                        height: 5,
                        color: Color.fromARGB(255, 203, 203, 203),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: 16),
                        decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: colorBlue, width: 2)), filled: true, fillColor: Colors.white, hintStyle: TextStyle(color: Color.fromARGB(255, 149, 149, 149)), hintText: '4', border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
      bottomSheet: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        width: double.infinity,
        height: 76,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 13, 20, 13),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.purple.shade50,
                  blurRadius: 25,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: TextButton(
              style: TextButton.styleFrom(shadowColor: Colors.purple.shade50, backgroundColor: Colors.purple.shade300, primary: Colors.white, shape: StadiumBorder()),
              onPressed: () => {},
              child: Text(
                'Add Product',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
