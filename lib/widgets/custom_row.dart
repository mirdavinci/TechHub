import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({Key? key, required this.title, required this.state})
      : super(key: key);
  final String title;
  final String state;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 260,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(title),
                const SizedBox(
                  width: 30,
                ),
                Text(state)
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
