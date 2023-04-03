import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

class VideoCall extends StatelessWidget{
  
  final AgoraClient client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
      appId: "1ba0891fad1f46bcb9eb1c4e4f15a300",
      tempToken: "007eJxTYNBS9SqWnGLr6/jpe5b2j+itk3L/Xri53Vv54/OLlwUcNhgqMBgmJRpYWBqmJaYYppmYJSUnWaYmGSabpJqkGZomGhsY2LNrpTQEMjKcNuJhYWSAQBCfhaEktbiEgQEAbLgfSQ==",
      channelName: "test"    
    ),
    enabledPermission: [
      Permission.camera,
      Permission.microphone
    ]
  );
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Stack(children:[ 
          AgoraVideoViewer(
            client: client,
          ),
          AgoraVideoButtons(client: client)
          ],
        ),
      ),
    );
  }
}