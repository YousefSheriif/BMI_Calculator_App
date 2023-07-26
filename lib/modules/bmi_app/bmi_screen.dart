import 'dart:math';
import 'package:bmi_calculator/modules/bmi_app/bmi_result_screen.dart';
import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({Key? key}) : super(key: key);

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {

  bool isMale = true ;
  double height = 100 ;
  int weight = 60;
  int age = 22 ;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20.0,
        centerTitle: true,
        backgroundColor: Colors.black87,
        title: Text('BMI Calculator',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),),
      ),
      body: Container(
        color: Colors.black87,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child:GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                            isMale = true ;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(

                            color: isMale ?Colors.grey:Colors.black54,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Icon(Icons.male,size: 70.0,color: Colors.white,),
                              Text(
                                'MALE',
                                  style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Expanded(
                      child: GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                            isMale = false ;
                          });

                        },
                        child:Container(
                          decoration: BoxDecoration(
                              color: isMale ?Colors.black54:Colors.grey,
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.female,size: 70.0,color: Colors.white,),
                              Text(
                                'FEMALE',
                                  style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.black54,borderRadius: BorderRadius.circular(15.0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          'HEIGHT',
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0,color: Colors.grey)
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                              '${height.round()}',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 70.0,color: Colors.white)
                          ),
                          Text(
                              'CM',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0,color: Colors.white)
                          ),

                        ],
                      ),
                      Slider(
                        min: 80.0,
                        max: 220.0,
                        value:height,
                        onChanged: (val)
                        {
                          setState(()
                          {
                            height = val ;

                          });
                        },
                        activeColor: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child:Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:  Colors.black54,
                          borderRadius: BorderRadius.circular(15.5,),
                        ),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                fontSize: 25.5,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              '$weight',
                              style: TextStyle(
                                fontSize: 40.5,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Colors.red[800],
                                  mini: true,

                                  onPressed: ()
                                  {
                                    setState(() {
                                      weight++ ;
                                    });

                                  },
                                  heroTag: 'weight+',
                                  child: Icon(Icons.add),
                                ),
                                SizedBox(width: 15.0,),
                                FloatingActionButton(
                                  backgroundColor: Colors.red[800],
                                  mini: true,
                                  onPressed: ()
                                  {
                                    setState(() {
                                      weight-- ;
                                    });

                                  },
                                  heroTag: 'weight-',

                                  child: Icon(Icons.remove),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Expanded(
                      child:Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:  Colors.black54,
                          borderRadius: BorderRadius.circular(15.5,),
                        ),
                        child:Column(
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(
                                  fontSize: 25.5,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              '$age',
                              style: TextStyle(
                                  fontSize: 40.5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Colors.red[800],
                                  mini: true,

                                  onPressed: ()
                                  {
                                    setState(() {
                                      age++ ;
                                    });

                                  },
                                  heroTag: 'age+',

                                  child: Icon(Icons.add),
                                ),
                                SizedBox(width: 15.0,),
                                FloatingActionButton(
                                  backgroundColor: Colors.red[800],
                                  mini: true,
                                  onPressed: ()
                                  {
                                    setState(() {
                                      age-- ;
                                    });
                                  },
                                  heroTag: 'age-',

                                  child: Icon(Icons.remove),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),color: Colors.black54),
              width: double.infinity,
              child: MaterialButton(
                height: 50.0,
                onPressed: ()
                {
                  double result = weight / pow(height/100, 2);
                  print(result.round());
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)
                        {

                          return BMIResultScreen(ismale: isMale,age: age,result: result.round(), );
                        },
                      ),
                  );
                },
                child: Text('CALCULATE',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
