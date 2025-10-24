import 'package:flutter/material.dart';
import 'package:my_first_app_cifo/module/api_rest_cifo.dart';
import 'package:my_first_app_cifo/module/classes/ejercicio_reqres/persona.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Persona? persona;
  @override
  Widget build(BuildContext context) {
    String nombre = persona?.firstName ?? 'No se tu nombre';
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          persona = await getSingleUserObjetct(1);
          print(nombre);
          setState(() {});
          //  getReqRespService();
        },
      ),
      body: Center(child: Text(nombre)),
    );
  }
}
