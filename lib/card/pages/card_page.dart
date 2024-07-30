import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: const Text('Card'),
      ),
      body: const Center(
        child: Text('Card Page'),
      ),
    );
  }
}
