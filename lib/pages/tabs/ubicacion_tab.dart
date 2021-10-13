import 'package:flutter/material.dart';

class TabUbicacion extends StatelessWidget {
  const TabUbicacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ubicación'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        //width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Actualmente nos encontramos en Mall Plaza de Quilpué. Nos pueden ubicar en el último piso, cerca del cine.',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.deepPurple),
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/images/empresa/e1.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
