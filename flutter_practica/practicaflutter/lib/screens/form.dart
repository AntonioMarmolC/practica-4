import 'package:flutter/material.dart';

import '../preferences/usuario.dart';

class formulario extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<formulario> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 147, 188, 218),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
            Text('Nombre completo'),
            TextFormField(
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Inserta nombre';
                } else {
                  value = value.toUpperCase();
                  Usuario.nom = value;
                }
              },
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
            Text('Numero tarjeta'),
            TextFormField(
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value!.isEmpty || value.length <= 15) {
                  return 'Inserta numero tarjeta correcto';
                } else {
                  Usuario.istarjeta = value;
                }
              },
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
            Text('Fecha caducidad'),
            TextFormField(
              keyboardType: TextInputType.datetime,
              validator: (value) {
                if (value!.isEmpty || value.length != 5) {
                  return 'Inserta fecha caducidad';
                } else {
                  Usuario.caducidad = value;
                }
              },
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
            Text('CVV'),
            TextFormField(
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value!.isEmpty || value.length != 3) {
                  return 'CVV incorrecto';
                } else {
                  Usuario.CVV = value;
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Color.fromARGB(255, 36, 36, 36),
                        content: Row(
                          children: <Widget>[
                            Text("Tarjeta creada con exito     "),
                            Icon(
                              Icons.check,
                              color: Color.fromARGB(255, 60, 255, 0),
                            ),
                          ],
                        ),
                        duration: Duration(milliseconds: 2000),
                      ),
                    );
                  }
                },
                child: Text('Aceptar'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  child: Text('Cancelar'),
                  onPressed: () {
                    Navigator.pushNamed(context, 'home');
                  }),
            )
          ],
        ),
      ),
    );
  }
}
