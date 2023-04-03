// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_conference/pages/joincode.dart';
import 'package:video_conference/pages/new_meeting.dart';

class HomePage extends StatelessWidget {
  const HomePage ({Key?  key}) :super(key: key);

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("VC"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20,40,20,0),
            child: ElevatedButton.icon(
              onPressed: (){
                Get.to(NewMeeting());
              }, 
              icon: Icon(Icons.add), 
              label: Text("New Meeting"),
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
          ),
          Divider(thickness: 3, height: 40, indent: 40,endIndent: 40,),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: OutlinedButton.icon(
              onPressed: (){
                Get.to(JoinCode());
              }, 
              icon: Icon(Icons.margin), 
              label: Text("Join With A Code"),
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                shadowColor: Colors.black,
                side: BorderSide(color: Colors.black),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0)),
                minimumSize: Size(350, 30),
              ),
            ),
          ),
          Image.network("https://user-images.githubusercontent.com/67534990/127524449-fa11a8eb-473a-4443-962a-07a3e41c71c0.png")
        ]),
    );
  }
}