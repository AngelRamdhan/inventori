import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
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
          title: Text('Transaction', style: TextStyle(fontFamily: 'Poppins')),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios),
          )),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: ListTile(
                leading: Image.asset('assets/sepatu.jpg'),
                trailing: Icon(Icons.call_made_rounded, color: Colors.red),
                title: Text(
                  "Brand New Shoes",
                  style: TextStyle(fontFamily: 'Poppins'),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  'SH-231',
                  style: TextStyle(fontFamily: 'Poppins'),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.purple.shade300,
        icon: Icon(Icons.add),
        label: Text("New Transaction", style: TextStyle(fontFamily: 'Poppins')),
      ),
    );
  }
}

