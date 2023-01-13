import 'package:flutter/material.dart';
import 'package:practicaflutter/preferences/usuario.dart';

class credit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarjeta virtual'),
      ),
      body: Center(
        child: Stack(children: [
          SizedBox(
            height: 350,
            child: Center(
              child: Image.asset('assets/tarjeta_credito.png'),
            ),
          ),
          Container(
            //color: Colors.amber,
            width: 300,
            padding: EdgeInsets.fromLTRB(50, 130, 0, 0),
            child: Text(// nombre
              Usuario.nom,
              style: TextStyle(
                  fontFamily: 'roboto', color: Colors.white, fontSize: 12),
            ),
          ),
          Container(
            //color: Colors.orange,
            width: 300,
            padding: EdgeInsets.fromLTRB(50, 165, 0, 0),
            child: Text(// tarjeta
              Usuario.istarjeta,
              style: TextStyle(
                  fontFamily: 'roboto', color: Colors.white, fontSize: 15),
            ),
          ),
          Container(
            //color: Colors.orange,
            width: 300,
            padding: EdgeInsets.fromLTRB(50, 235, 0, 0),
            child: Text(// caduca
              'CADUCA FINAL: ${Usuario.caducidad}',
              style: TextStyle(
                  fontFamily: 'roboto', color: Colors.white, fontSize: 11),
            ),
          ),
          Container(
            //color: Colors.orange,
            width: 350,
            padding: EdgeInsets.fromLTRB(240, 235, 0, 0),
            child: Text(// cvv
              'CVV ${Usuario.CVV}',
              style: TextStyle(
                  fontFamily: 'roboto', color: Colors.white, fontSize: 11),
            ),
          ),
          Center(
            child: ElevatedButton(
                child: Icon(Icons.edit),
                onPressed: () {
                  Navigator.pushNamed(context, 'form');
                }),
          )
        ]),
      ),
    );
  }
}
