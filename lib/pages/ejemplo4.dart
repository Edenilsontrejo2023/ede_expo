import 'package:flutter/material.dart';

void main() => runApp(const SliderApp());

class SliderApp extends StatelessWidget {
  const SliderApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Slider con Imagen')),
        body: const SliderWithImageExample(),
      ),
    );
  }
}

class SliderWithImageExample extends StatefulWidget {
  const SliderWithImageExample({Key? key});

  @override
  _SliderWithImageExampleState createState() => _SliderWithImageExampleState();
}

class _SliderWithImageExampleState extends State<SliderWithImageExample> {
  double _currentSliderValue = 50.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // Puedes personalizar la imagen y su tamaño aquí
        Image.asset('images/rock.jpg',width: 50, height:50,),
          //Image.asset('edenilson.png',width: 110.50,),
           SizedBox(
                height: 10,
              ),    
        Slider(
          value: _currentSliderValue,
          min: 0,
          max: 100,
          onChanged: (double value) {
            setState(() {
              _currentSliderValue = value;
            });
          },
        ),
        SizedBox(height: 20),
        Text('Valor del Slider: $_currentSliderValue'),
      ],
    );
  }
}

