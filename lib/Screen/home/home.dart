import 'package:flutter/material.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("data"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          bottom: 10,
        ),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2
            ),itemCount: 8,
            itemBuilder: (context, index) {
              return Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.only(
                left: 15,right: 15,bottom: 15,
              ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.yellow,
                ),
              );
            },),
      ),
    );
  }
}
