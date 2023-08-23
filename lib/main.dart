import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        body: Center(child: MyWidget(false)),
        // appBar: AppBar(
        //   backgroundColor: Colors.amber,
        //   title: const Text("Header"),
        // ),
        // body: const Center(
        //     child: Text("Hello world")
        // )ßßß
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class MyWidget extends StatelessWidget {

  final bool loading;

  MyWidget(this.loading);

  @override
  Widget build(BuildContext context) {
    // if(loading){
    //   return const CircularProgressIndicator();
    // }else{
    //   return const Text("State");
    // }
    return loading ? const CircularProgressIndicator() : const Text("State");
  }
}
