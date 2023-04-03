// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewMeeting extends StatelessWidget {
  const NewMeeting({Key? key}):super(key: key);

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
              Image.network(
              "https://user-images.githubusercontent.com/67534990/127776392-8ef4de2d-2fd8-4b5a-b98b-ea343b19c03e.png",
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.grey[300],
                shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                child: ListTile(
                  leading: Icon(Icons.link),
                  title: SelectableText(
                    "abc",
                    style: TextStyle(
                      fontWeight: FontWeight.w300
                    )
                  ),
                  trailing: Icon(Icons.copy)
                )
              ),
            ),
            Divider(thickness: 3, height: 40,indent:20, endIndent:20),
            ElevatedButton.icon(
              onPressed: (){}, 
              icon: Icon(Icons.arrow_drop_down), 
              label: Text("Share invite"),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onPrimary: Colors.white,
                shadowColor: Colors.black,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0)),
                minimumSize: Size(350, 30),
              )
            ), 
            SizedBox(height:20),
            OutlinedButton.icon(
              onPressed: (){}, 
              icon: Icon(Icons.video_call), 
              label: Text("Start call"),
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                shadowColor: Colors.black,
                side: BorderSide(color: Colors.black),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0)),
                minimumSize: Size(350, 30),
              ),
            ),
          ],
        ),
      )
    );
  }
}