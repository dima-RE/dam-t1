import 'package:flutter/material.dart';

class TabVersion extends StatelessWidget {
  const TabVersion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Versión'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Versión: 1.0.0'),
            Text('Equipo desarrollador: Matrusca LTDA.'),
            Text('Fecha de versión: 10/2021'),
            Text('¿Esto es relleno?: Completamente'),
            Text('¿Esta mal hecho?: Es muy probable'),
            Image(image: AssetImage('assets/images/empresa/e3.jpg'))
          ],
        ),
      ),
    );
  }
}
