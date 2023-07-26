import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {

  final bool ismale ;
  final int  result;
  final int  age ;

  const BMIResultScreen({Key? key, required this.ismale, required this.result, required this.age}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20.0,
        centerTitle: true,
        backgroundColor: Colors.black87,
        title: Text('BMI Result',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.black87
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Gender : ${ismale?'male':'female'}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 33.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Result : ${result}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 33.0,
                    color: Colors.white,

                  ),
                ),
                Text(
                  'Age : ${age}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 33.0,
                    color: Colors.white,

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
