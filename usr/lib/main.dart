import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Even Numbers',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const EvenNumbersPage(),
    );
  }
}

class EvenNumbersPage extends StatelessWidget {
  const EvenNumbersPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Create a list of even numbers from 0 to 100.
    final List<int> evenNumbers = [];
    for (int i = 0; i <= 100; i++) {
      if (i % 2 == 0) {
        evenNumbers.add(i);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Even Numbers from 0 to 100'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: evenNumbers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              evenNumbers[index].toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18),
            ),
          );
        },
      ),
    );
  }
}
