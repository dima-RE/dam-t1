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
              'Somos una empresa dedicada a la innovación alimentaria.',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              'Nos dedicamos al estudio de los alimentos y las infinitudes de combinaciones que podemos conseguir para el gusto de todas las personas.',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              'Contamos con el personal más experimentado de la región y reconocidos a nivel internacional por su espectacular trabajo en los últimos años.',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              'Cada día nos esforzamos más para sorprenderte.',
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
                  image: AssetImage('assets/images/empresa/e1.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
