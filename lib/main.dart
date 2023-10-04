import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold (
        backgroundColor: const Color(0xff041C32),
        appBar: AppBar(
          toolbarHeight: 70,
          centerTitle: true,
          backgroundColor: const Color(0xff04293A),
            title: const Text("Rate my friends",style: TextStyle(fontSize: 40,color: Color(0xffECB365)),)) ,
        body: ListView(
          children: [
            const Student(200301,'Karam','images/m1.jpg',72),
            const Student(200302,'Hussam Burqan','images/m2.png',19),
            const Student(200304,'Mohammad -Toxic- ','images/m3.jpg',89),
            const Student(200303,'Omar King of the North','images/m4.jpg',78),
            const Student(220306,'Hatem -Hunter-','images/m5.png',110), // hack
            const Student(200407,'Ayed -NoTe-','images/m6.jpg',22),
            const Student(200408,'Omar -Gh0st-','images/m7.png',55),
            Container(
                padding: const EdgeInsets.all(2),
                height: 70,
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                  color: const Color(0xff088663),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('From Discord',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xffECB365)))
                    ],
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
class Student extends StatelessWidget {

  final int id;
  final String name;
  final String image;
  final double mark;
  const Student(this.id , this.name ,this.image,this.mark,{Key? key}): super(key:key);

  String cl(){
     double x;
     int z=0 ;
     x = mark/2;

  while (x-10>=0){
    z++;
    x=x-10;
  }
     switch(z){
       case 1 : return '* ';
       case 2 : return '** ';
       case 3 : return '*** ';
       case 4 : return '**** ';
       case 5 : return '***** ';
       default: return ':(  ';
     }
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(2),
      height: 120,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
        color: const Color(0xff064663),
        child: Row(
          children: [
            ClipRRect( borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
                bottomLeft: Radius.circular(40)),
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(55),
                  child: Image.asset(image, fit: BoxFit.cover),)),
            Expanded(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(id.toString(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xffECB365)),),
                      Text(name,style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xffECB365)),),
                      //Text(mark.toString(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xffECB365)),),
                      Align(
                        alignment: Alignment.centerRight,
                        child:Text(cl(),style: const TextStyle(fontSize: 30 ,color: Color(0xffECB365) ),)
                      )

                    ],
                  ),
                )
            )
          ],
        ),
      ),
    )  ;
  }
}

