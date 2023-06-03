import 'package:flutter/material.dart';
import 'package:qr_generator/qr_image.dart';

class QRgenerator extends StatelessWidget {
  QRgenerator({super.key});

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QRify'),
        centerTitle: true,
        elevation: 2,
        shadowColor: Colors.grey[400],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Enter your URL'),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) {
                      return QRimage(controller);
                    }),
                  ),
                );
              },
              child: const Text('QR-ify')),
        ],
      ),
    );
  }
}
