import 'package:flutter/material.dart';

class BascioPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
  final estiloSubitulo = TextStyle(fontSize: 16.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          SizedBox(
            height: 15.0,
          ),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
        ],
      ),
    ));
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: FadeInImage(
        image: NetworkImage(
            'https://lp-cms-production.imgix.net/2019-06/512d769cd0d5e56c238eb975d2325940-japan.jpeg?fit=crop&q=40&sharp=10&vib=20&auto=format&ixlib=react-8.6.4'),
        placeholder: AssetImage('assets/img/loader.gif'),
        height: 280.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Ejemplo de texto app',
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'Un lago en Alemania',
                    style: estiloSubitulo,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _crearAccion(Icons.call, 'CALL'),
        _crearAccion(Icons.near_me, 'ROUTE'),
        _crearAccion(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _crearAccion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 30.0,
        ),
        SizedBox(height: 5.0),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Cillum voluptate tempor fugiat minim esse deserunt est voluptate. Velit proident irure ad excepteur incididunt tempor reprehenderit dolor. Sunt in ex tempor velit aute sunt dolor nulla laborum labore aliquip velit. Non sit enim est laboris ut qui exercitation qui culpa. Anim consequat voluptate dolor incididunt anim consectetur do dolore ipsum minim anim veniam amet officia. Est aliquip laboris voluptate enim dolore eiusmod elit.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
