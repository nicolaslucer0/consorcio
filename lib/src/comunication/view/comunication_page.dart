import 'package:flutter/material.dart';

class ComunicationPage extends StatelessWidget {
  const ComunicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Mensajes y avisos',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
        ),
      ),
    );
  }
}
