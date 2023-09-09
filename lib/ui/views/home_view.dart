import 'package:flutter/material.dart';
import 'package:green_shop/providers/characters_provider.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    final servicio = CharactersProvider();
    
    
    
    return Container(
      child: FutureBuilder(
        future: servicio.cargarCharacters(),
        builder: (context, snapshot) {
          if(snapshot.data == null) {
            return Center(child: CircularProgressIndicator(),);
          } else {
            final data = snapshot.data;
            return GridView.builder(
              itemCount: data!.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),

              itemBuilder: (context, index) {
                final personaje = data[index];
                return Container(
                  width: 100,
                  height: 30,
                  color: Colors.blue,
                  child: Image(image: NetworkImage(personaje.image!))
                );
              }
             );
          }
        
        },
      )
    );
  }
}