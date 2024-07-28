import 'package:barberapp/pages/booking_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 52,
        backgroundColor: Colors.grey,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('BarberApp'),
          ],
        ),
        
      ),
      drawer: Drawer(
        child: ListView(children: const [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: CircleAvatar(child:Icon(Icons.person)),
              ),
              ListTile(title: Text('Nome do usuário'), subtitle: Text('emaildousuario@gmail.com'),)
            ],
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Página inicial'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Minha conta'),
          ),
          ListTile(
            leading: Icon(Icons.check),
            title: Text('Agendamentos'),
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          ListTile(
            leading: Icon(Icons.question_mark),
            title: Text('Sobre'),
          ), 
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Sair da conta'),
          )

        ],),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25,),
            RichText(
              text: const TextSpan(children: [
                TextSpan(text: 'Olá, Nome do usuário \n', style: TextStyle(fontSize: 20, color: Colors.black)),
                TextSpan(text: 'Vamos agendar um horário? ', style: TextStyle(fontSize: 16, color: Colors.black))
              ])
            ),

            const SizedBox(height: 20,),
            const Text('Cortes populares', style: TextStyle(fontSize: 20),),
            const SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 80,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: const Image(image: AssetImage('images/drop-fade-4.png')),
                      ),
                      const Text('Nome do corte')
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 80,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: const Image(image: AssetImage('images/drop-fade-4.png')),
                      ),
                      const Text('Nome do corte')
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 80,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: const Image(image: AssetImage('images/drop-fade-4.png'),),
                      ),
                      const Text('Nome do corte')
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),  
            const Text('Todos os serviços', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),

            Card(
              elevation: 8,
              color: const Color.fromRGBO(59, 59, 59, 1.0),
              shape: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              child: Container(
                alignment: Alignment.center,
                // decoration: const BoxDecoration(
                //   color:  Color.fromRGBO(59, 59, 59, 1.0),
                //   borderRadius: BorderRadius.all(Radius.circular(8))
                // ),
                width: MediaQuery.of(context).size.width,
                height: 110,
                child: ListTile(
                  onTap: ()  async {
                    await Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const BookingPage() ));
                  },
                  leading: const Image(image: AssetImage('images/service.png'),),
                  title: const Text('Nome do serviço',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                  subtitle: const Text('Informações do serviço', style: TextStyle(fontSize: 14, color: Colors.white),),
                  trailing: const Text("RS 50", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),),
              
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}