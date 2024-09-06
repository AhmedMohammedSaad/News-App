import 'package:flutter/material.dart';

class RachTextSpan extends StatelessWidget {
  const RachTextSpan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: "News",
        style: TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: "App",
            style: TextStyle(
                color: Color.fromARGB(255, 237, 177, 12),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
