import 'package:flutter/material.dart';

class HomeScreenSingleTon extends StatefulWidget {
  const HomeScreenSingleTon({super.key});

  @override
  State<HomeScreenSingleTon> createState() => _HomeScreenSingleTonState();
}

class _HomeScreenSingleTonState extends State<HomeScreenSingleTon> {
  TextEditingController teEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingleTon'),
        backgroundColor: Colors.grey.shade200,
        elevation: 1.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: teEditingController,
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Save'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Clear'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text('1'),
          ],
        ),
      ),
    );
  }
}
