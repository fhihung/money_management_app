import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Iconsax.bitcoin_convert),
          onPressed: () {},
        ),
        centerTitle: true,
        title: const Text('Money Notebook'),
        actions: [
          IconButton(
            icon: const Icon(Iconsax.search_normal),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Iconsax.calendar),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
