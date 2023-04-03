// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class JoinCode extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child:InkWell(child: Icon(Icons.arrow_back_ios_rounded,size:30),
              onTap: Get.back,
            ),
            ),
            SizedBox(height:20),
            Image.network(
              "https://user-images.githubusercontent.com/67534990/127776450-6c7a9470-d4e2-4780-ab10-143f5f86a26e.png",
              fit: BoxFit.cover,
              height: 100,
            ),
            Text(
              "Enter meeting code",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              )
            ),
            SizedBox(height:20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.grey[300],
                shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                child: TextField(
                  controller: controller,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter code here"
                  )
                ),
              ),
            ),
            SizedBox(height:20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                // ignore: empty_statements
                onPressed: (){
                },
                child: Text("Join"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                  minimumSize: Size(50, 30),
                )
              ),
            ),
        ],)
      ),
    );
  }
}