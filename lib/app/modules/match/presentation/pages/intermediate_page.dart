import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class IntermediatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final index = Modular.args.params['index'];
    if (index != null) {
      Modular.to
          .pushReplacementNamed('/home/match', arguments: int.parse(index));
    } else {
      // Handle error or navigate back
      Modular.to.pop();
    }
    return Container();
  }
}
