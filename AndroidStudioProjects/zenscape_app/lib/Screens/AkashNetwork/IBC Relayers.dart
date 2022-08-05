import 'package:flutter/material.dart';

class IBCRelayers extends StatefulWidget {
  const IBCRelayers({Key? key}) : super(key: key);

  @override
  State<IBCRelayers> createState() => _IBCRelayersState();
}

class _IBCRelayersState extends State<IBCRelayers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('IBC Relayers')),
    );
  }
}
