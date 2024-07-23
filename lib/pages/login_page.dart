import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(34),
          child: Column(
            children: [
              const SizedBox(height: 65,),
              const Center(child: Image(image: AssetImage('images/Header.png'), width: 292, height: 144,)),
              const SizedBox(height: 50,),
              const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(18),
                  fillColor: Color(0x0000c41e),
                  hintText: 'Email',
                  hintStyle: TextStyle(fontSize: 16),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),

                ),
              ),
              const SizedBox(height: 20,),
              const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(18),
                  fillColor: Color(0x0000c41e),
                  hintText: 'Senha',
                  hintStyle: TextStyle(fontSize: 16),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                  suffixIcon: Icon(Icons.password)

                ),
              ),
              const SizedBox(height: 8,),
              const Row(mainAxisAlignment: MainAxisAlignment.end, children: [Text('Esqueceu a sua senha?')],),
              const SizedBox(height: 20,),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(onPressed: (){}, 
                style: OutlinedButton.styleFrom(backgroundColor: Colors.black, 
                fixedSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
                // padding: const EdgeInsets.all(13),
                ),  
                child: const Text('Entrar', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white,),)),
              ),
              const SizedBox(height: 25,),
              const Row(
                children: [
                  Expanded(child: Divider(
                    thickness: 0.8,
                    color: Colors.black,
                  )),
                  Padding(padding: EdgeInsets.all(2), child: Text('Ou continue com', style: TextStyle(fontSize: 14),),),
                  Expanded(child: Divider(
                    thickness: 0.8,
                    color: Colors.black,
                  )),

                ],
              ),
              const SizedBox(height: 25,),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  side: const BorderSide(color: Colors.black)
                  
                ), 
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Entrar com o google', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                    SizedBox(width: 4,),
                    Image(image: AssetImage('images/flat-color-icons_google.png'))
                  ],
                )),
              ),
              const SizedBox(height: 45,),
              const Text('Não possui conta? Faça seu registro aqui', style: TextStyle(fontSize: 14),)
              
              
            ],
          ),
        ),
      ),
    );
  }
}