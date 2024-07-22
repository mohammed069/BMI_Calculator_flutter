import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bmi_screen.dart';

class bmi_result_screen extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return bmi_screen();
            }));
          } , icon: Icon(Icons.arrow_back_ios_new_outlined ,color: Colors.white,),),
          title: Text("            BMI RESULT",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(60.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                ),
                child: Text('Gender:${getGender()}',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.center,
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                ),
                child: Text('Result:${result.round()}',style: TextStyle(fontSize: 30),),
              ),
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.center,
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                ),
                child: Text('Age: ${age.round()}',style: TextStyle(fontSize: 30),),
              ),
            ],
          ),
        ),
      ),
    );
  }

}