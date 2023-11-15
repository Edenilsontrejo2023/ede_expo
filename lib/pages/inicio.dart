import 'package:flutter/material.dart';

class Inicio extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text('Edenilson Trejo',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Color.fromARGB(255, 7, 8, 100)
          ),
          ),
          Image.asset('images/santa.jpg', width: 20, height:20,),
          //Image.asset('edenilson.png',width: 110.50,),
           SizedBox(
                height: 20,
              ),    
              ],
      ),
    );   
  }

}