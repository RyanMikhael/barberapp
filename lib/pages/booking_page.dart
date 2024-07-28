import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {

  bool select = false;

  
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const SizedBox(height: 20,),
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
                ),
              const Text('Nome do barbeiro',style: TextStyle(fontWeight: FontWeight.bold),),
              const SizedBox(height: 20,),
              const Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  ChoiceChip(label: Text('08:30'), selected: false,),
                  ChoiceChip(label: Text('09:15'), selected: false),
                  ChoiceChip(label: Text('10:00'), selected: false),
                  ChoiceChip(label: Text('10:45'), selected: false),
                  ChoiceChip(label: Text('11:30'), selected: false),
                  ChoiceChip(label: Text('12:15'), selected: false),
        
                ],
              ),
              const SizedBox(height: 30,),
              
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(59, 59, 59, 1)
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('Nome do serviço', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),), Text('RS 50', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)],),
                      SizedBox(height: 8,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('Data marcada'), Text('10 de junho')],),
                      SizedBox(height: 8,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text('Barbeiro'), Text('Nome do barbeiro')],),
                      SizedBox(height: 8,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text('Horário'), Text('09:30')],)
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12,),
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: ElevatedButton(style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: const BorderSide(color: Colors.black))
                ),onPressed: (){}, child: const Text('Confirmar agendamento', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),)),
              )
            ],
          )
        ),
      )
    );

    // ignore: dead_code
    


    
  }
}