import 'package:flutter/material.dart';

class Posicion {
  double rigth;
  double left;
  double top;
  double bottom;

  Posicion({this.rigth, this.left, this.top, this.bottom});
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _crearFondo(context),
        ],
      ),
    );
  }

  Widget _crearFondo(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final fondoMorado = Container(
      height: size.height * 0.4,
      width: size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(63, 63, 156, 1.0),
            Color.fromRGBO(90, 70, 178, 1.0),
          ],
        ),
      ),
    );
    List<Posicion> posiciones = [
      Posicion(rigth: 30, top: 120),
      Posicion(rigth: -30, top: 20),
      Posicion(left: -30, top: 120),
      Posicion(left: 60, top: -12),
    ];

    return Stack(
      children: [
        fondoMorado,
        ..._circulos(posiciones),
        Center(
          child: Container(
            padding: EdgeInsets.only(
              top: 80.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.person_pin_circle,
                  color: Colors.white,
                  size: 100.0,
                ),
                Text(
                  'Andrés Velasco',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _circulos(List<Posicion> posiciones) {
    final circulo = Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Color.fromRGBO(255, 255, 255, 0.07),
      ),
    );
    return posiciones.map(
      (Posicion posicion) {
        return Positioned(
          top: posicion.top,
          right: posicion.rigth,
          left: posicion.left,
          bottom: posicion.bottom,
          child: circulo,
        );
      },
    ).toList();
  }
}