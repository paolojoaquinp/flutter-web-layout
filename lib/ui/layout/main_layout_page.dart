import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';

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
        child:Column(
          children: [
            /* CustomAppMenu(), */
            Expanded(
              child: child,
            )
          ],
        )
      ),
    );
  }
}
