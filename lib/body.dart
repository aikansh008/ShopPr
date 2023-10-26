import 'package:flutter/material.dart';
import 'package:shoppr/product.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 100,
          child: AspectRatio(aspectRatio: 0.80,
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 131, 124, 124),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset("assets/images/bell.png"),
          ),
          ),
        )
      ],
    );
  }
}
