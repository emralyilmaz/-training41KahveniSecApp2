import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(252, 251, 227, 1),
      child: SpinKitRing(
        color: Color.fromRGBO(149, 87, 48, 1),
        size: 50,
      ),
    );
  }
}
