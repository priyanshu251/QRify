import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRimage extends StatelessWidget {
  QRimage(this.controller, {super.key});
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + QR code'),
        centerTitle: true,
      ),
      body: Center(
        // https://www.youtube.com/
        child: QrImageView(
          data: controller.text,
          size: 280,
          // embeddedImage: const AssetImage('image/cosmos.png'),
          // embeddedImageStyle: const QrEmbeddedImageStyle(
          //   size: Size(
          //     100,
          //     100,
          //   ),
          // ),
        ),
      ),
    );
  }
}
