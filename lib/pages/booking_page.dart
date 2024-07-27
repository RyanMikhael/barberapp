import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Barberapp'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
            const Center(child: Text('Agende seu serviço', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),
            const SizedBox(height: 16,),
            Container(decoration: BoxDecoration(border:Border.all(color:Colors.black),borderRadius: const BorderRadius.all(Radius.circular(8))),child: CalendarDatePicker(initialDate: DateTime(2024,07, 25), firstDate: DateTime(2024,1), lastDate: DateTime(2025,12), onDateChanged: (value){})),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
              },
              child: const CircleAvatar(
                radius: 50,
                child: Image(width: 90, height: 90, image: AssetImage('images/Barbeiro.png',),),
              )
              )
          ],
        )
      )
    );

    // ignore: dead_code
    


    
  }
}