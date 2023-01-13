import 'package:flutter/material.dart';
import 'package:practicaflutter/preferences/usuario.dart';
import 'package:practicaflutter/screens/pantallas.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Usuario.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tarjeta virtual',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => _HomePage(),
        'credit': (BuildContext context) => credit(),
        'form': (BuildContext context) => formulario(),
      },
      theme: ThemeData(primarySwatch: Colors.blueGrey, fontFamily: null),
      home: _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 147, 188, 218),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Inicio'),
        elevation: 0,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Ver tu tarjeta virtual'),
          onPressed: () {
            Navigator.pushNamed(context, 'credit');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, 'form');
          },
          child: Icon(Icons.edit)),
    );
  }
}
