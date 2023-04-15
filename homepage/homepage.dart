import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String tarjeta = 'XXXX XXXX XXXX XXXX';
  String nombre = 'Nicolas M Escobar';
  var controller = MaskedTextController(mask: '0000 0000 0000 0000');


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,  
        appBar: AppBar(
        title: const Center(
          child: Text('Reto Semana 3')
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 260,
                child: cardCustom(nombre,tarjeta)
                ), 
              const SizedBox(height: 40),
              Row(
                children: const[
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text("Captura tu nombre:",
                    style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  ),
                Spacer()
                ],
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField( // Widget TextField
                  onChanged: (value) { // Evento de la caja de texto cuando cambie su valor aplique el estado en la varibale contenido
                    setState(() {
                      if (value.isEmpty) {
                        nombre = 'Nombre del cliente';
                          } else {
                            nombre = value;
                          }
                      });
                    },
                      decoration: InputDecoration( // Se le agrega una decoration para el cambio de la forma como se ve la caja de texto
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Nombre',
                      ),
                ),
              ),   
              const SizedBox(height: 10),
              Row(
                children: const[
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text("Captura tu numero de tarjeta:",
                    style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  ),
                Spacer()
                ],
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField( // Widget TextField
                  controller: controller,
                  onChanged: (value) { // Evento de la caja de texto cuando cambie su valor aplique el estado en la varibale contenido
                    setState(() {
                      if (value.isEmpty) {
                        tarjeta = 'XXXX XXXX XXXX XXXX';
                          } else {
                            tarjeta = value;
                          }
                      });
                    },
                      
                      decoration: InputDecoration( // Se le agrega una decoration para el cambio de la forma como se ve la caja de texto
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Numero de Tarjeta',
                      ),
                ),
              ),                                       
            ],
          ),
        ),
        
      
    );
  }
  Widget cardCustom(String nombre, String tarjeta) {
    return  Card(
                color:const Color.fromARGB(188, 22, 84, 95),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Spacer(),
                          Image.asset("images/visa.png",
                          height: 65,
                          width: 90,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset("images/chip.png",
                          height: 50,
                          width: 70,
                          ),
                          const Spacer(),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text(tarjeta,
                            style: GoogleFonts.miriamLibre(
                              fontSize: 20,
                            )
                            ),
                          ),
                          const Spacer()
                        ],
                      ),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text("VALID",
                            style: GoogleFonts.miriamLibre(
                            fontSize: 10
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            ),
                            Text("THRU",
                            style: GoogleFonts.miriamLibre(
                            fontSize: 10
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text("12/22",
                          style: GoogleFonts.miriamLibre(
                          fontSize: 20
                          ),
                          maxLines: 2,
                          ),
                        ),
                      ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(nombre,
                            style: GoogleFonts.miriamLibre(
                                fontSize: 20
                                ),
                            ),
                          ),
                        const Spacer(),
                        ],
                      ),
                    ],
                  ),
                ),
              );
  }
}
  


