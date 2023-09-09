import 'package:flutter/material.dart';

class HorarioView extends StatelessWidget {
  const HorarioView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text('HORARIO'),
    );
  }
}


/*
Como crear router

1. CREAR UNA VIEW EN /views {NombreView}.dart
2. crear UNA RUTA en /routes/router.dart (_handler)
3. llamar a nuestra ruta con un TextButton(onPressed: () => llamada())


 */

