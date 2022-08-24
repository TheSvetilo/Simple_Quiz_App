import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final icons;
  final count;
  final total;

  const ProgressBar({Key? key, this.icons, this.count, this.total})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Text(
              '$count - $total',
              style: const TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
          ...icons
        ],
      ),
    );
  }
}
