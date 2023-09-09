import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';

import '../shared/custom_app_menu.dart';


class MainLayoutPage extends StatelessWidget {
  final Widget child;

  const MainLayoutPage({
    Key? key, 
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [



            CustomAppBar(),



            Expanded(
              child: child,
            )
          ],
        )
      ),
    );
  }
}
