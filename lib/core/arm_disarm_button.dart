import 'package:flutter/material.dart';



class ArmDisarmButton extends StatefulWidget {
  ArmDisarmButton({Key? key}) : super(key: key);

  @override
  State<ArmDisarmButton> createState() => _ArmDisarmButtonState();
}

class _ArmDisarmButtonState extends State<ArmDisarmButton> {
  
  

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){},
      child: Container(
        child: Text("Disarm"),
        decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          shape: BoxShape.rectangle
        ),
      )
    );
  }
}