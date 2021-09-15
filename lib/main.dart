import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  return runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded soundButton({color, soundNumber}){
    return Expanded(
    child:ElevatedButton(
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
      onPressed: (){
        playSound(soundNumber);
         },
         child:Container()
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    
      return MaterialApp(
        home:Scaffold(
          body:SafeArea(
         child:Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget> [
            soundButton(color:Colors.red, soundNumber:1),
            soundButton(color:Colors.orange, soundNumber:2),
            soundButton(color:Colors.yellow, soundNumber:3),
            soundButton(color:Colors.purple, soundNumber:4),
            soundButton(color:Colors.teal, soundNumber:5),
            soundButton(color:Colors.blue, soundNumber:6),
            soundButton(color:Colors.pink, soundNumber:7),
         ],
            
        )
          )
        )
      );
  }
}
