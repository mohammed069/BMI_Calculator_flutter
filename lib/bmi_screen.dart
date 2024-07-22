
import 'dart:math';

import 'package:bmi_calculator/bmi_result_screen.dart';
import 'package:flutter/material.dart';



bool isMale=true;
double height=184;
double weight=90;
double age=22;
double result =weight/pow(height/100.0, 2);



String getGender(){
  if(isMale==true){
    return "Male";
  }else {
    return "Female";
  }
}

class bmi_screen extends StatefulWidget{

  const bmi_screen({super.key});

  @override
  _bmi_screenState createState() => _bmi_screenState();
}


class _bmi_screenState extends State<bmi_screen>  {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: Scaffold(
      appBar: AppBar(title: Text("BMI CALCULATOR",style: TextStyle(fontSize: 20 ,color: Colors.white ,),),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                SizedBox(width: 15,),
                IconButton(onPressed: (){
                  setState(() {
                    isMale=true;
                  });

                }, icon: Container(
                  width: 170,
                  height: 170,
                  decoration: BoxDecoration(
                    color: isMale? Colors.blue : Color(0xFF1D1E33),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.male,size: 100,color: Colors.white,),
                      Text("MALE",style: TextStyle(color: Colors.white,fontSize: 20),)],
                  ),
                ),),
                SizedBox(width: 5),
                IconButton(onPressed: (){
                  setState(() {
                    isMale=false;
                  });
                }, icon: Container(
                  width: 170,
                  height: 170,
                  decoration: BoxDecoration(
                      color: isMale?Color(0xFF1D1E33):Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.female,size: 100,color: Colors.white,),
                      Text("FEMALE",style: TextStyle(color: Colors.white,fontSize: 20),)],
                  ),
                ),)
              ],
            ),
            SizedBox(height: 12.5,),
            Container(
              width: 360,
              height: 220,
              decoration: BoxDecoration(
                color: Color(0xFF1D1E33),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("HEIGHT",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${height.round()}",style: TextStyle(fontSize: 40),),
                        Text("  cm",style: TextStyle(fontSize: 20),),

                      ],
                    ),
                    Slider(
                      min: 70,
                      max: 220,
                      activeColor: Colors.red,
                      inactiveColor: Colors.white,
                      value: height,
                      onChanged: (double val){
                        setState(() {
                          height=val;
                          result =weight/pow(height/100.0, 2);
                        });

                      },)
                  ],
                ),
              ),
            ),
            SizedBox(height: 12.5,),
            Row(
              children: [
                SizedBox(width: 15,),
                Container(
                  width: 170,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      Text("WEIGHT",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
                      SizedBox(height: 15,),
                      Text("${weight.round()}",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 40),),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          SizedBox(width: 15,),
                          IconButton(onPressed: (){
                            setState(() {
                              weight++;
                              result =weight/pow(height/100.0, 2);
                            });
                          }, icon: Container(
                            child: Icon(Icons.add,color: Colors.white,size: 40,),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.black54
                            ),
                          ),),
                          SizedBox(width: 30,),
                          IconButton(onPressed: (){
                            setState(() {
                              weight--;
                              result =weight/pow(height/100.0, 2);
                            });
                          }, icon: Container(
                            child: Icon(Icons.remove,color: Colors.white,size: 40,),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.black54
                            ),
                          )),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 170,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      Text("AGE",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
                      SizedBox(height: 15,),
                      Text("${age.round()}",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 40),),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          SizedBox(width: 15,),
                          IconButton(onPressed: (){
                            setState(() {
                              age++;
                            });
                          }, icon: Container(
                            child: Icon(Icons.add,color: Colors.white,size: 40,),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.black54
                            ),
                          ),),
                          SizedBox(width: 30,),
                          IconButton(onPressed: (){
                            setState(() {
                              age--;
                            });
                          }, icon: Container(
                            child: Icon(Icons.remove,color: Colors.white,size: 40,),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.black54
                            ),
                          ),),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            IconButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return bmi_result_screen();
              }));
            } ,icon: Container(
              margin: EdgeInsets.all(15),
              width: 360,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),
              child: Text("Check Your BMI",style: TextStyle(fontSize: 20),),alignment: Alignment.center,
            ))
          ],
        ),
      ),
    ),
  );
}

}