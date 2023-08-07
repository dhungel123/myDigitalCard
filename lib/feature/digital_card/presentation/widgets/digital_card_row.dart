
import 'package:flutter/material.dart';

class DigitalCardRow extends StatelessWidget {
  const DigitalCardRow(
      {
        Key? key,
        required this.labelName,
        required this.labelValue,
        this.maxLines
      }
      ) : super(key: key);
  //first declare the variable
  // And pass them in constructor
  final String labelName;
  final String labelValue;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Expanded(
          child: Text(
            labelName,
            style: TextStyle(fontSize: 22,color: Colors.green),

          ),
        ),
        Expanded(
          child: Text(
            labelValue,
            maxLines:maxLines,
            style: TextStyle(fontSize: 22,color: Colors.brown),
          ),
        )
      ],
    );
  }

}
