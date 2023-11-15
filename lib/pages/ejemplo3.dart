import 'package:flutter/material.dart';

void main() => runApp(const SwitchApp());

class SwitchApp extends StatelessWidget {
  const SwitchApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Switch con Imagen')),
        body: const Center(
          child: SwitchWithImageExample(),
        ),
      ),
    );
  }
}

class SwitchWithImageExample extends StatefulWidget {
  const SwitchWithImageExample({Key? key});

  @override
  _SwitchWithImageExampleState createState() => _SwitchWithImageExampleState();
}

class _SwitchWithImageExampleState extends State<SwitchWithImageExample> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // Puedes personalizar la imagen y su tamaño aquí
       Image.asset('images/music.jpg',width: 50, height:50,),
          //Image.asset('edenilson.png',width: 110.50,),
           SizedBox(
                height: 20,
              ),    
        Switch(
          value: light,
          onChanged: (bool value) {
            setState(() {
              light = value;
            });
          },
        ),
        SizedBox(height: 20),
        Text('Estado del Switch: ${light ? 'Encendido' : 'Apagado'}'),
      ],
    );
  }
}
