import 'package:flutter/material.dart';
import 'package:green_shop/locator.dart';
import 'package:green_shop/ui/views/horario_view.dart';

import '../../services/navigation_service.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [



          TextButton(
            onPressed: (){
              locator<NavigationService>().navigateTo('/home');
            },
            child: Text('home'),
          ),
          
          
          SizedBox(width: 30,),

          TextButton(
            onPressed: (){

              locator<NavigationService>().navigateTo('/home');

            },
            child: Text('HORARIO'),
          ),



          
          
          
          
          
        ],
      ),
    );
  }
}