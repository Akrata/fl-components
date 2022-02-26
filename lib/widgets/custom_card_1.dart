import 'package:flutter/material.dart';

import '../themes/themes.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        const ListTile(
          leading: Icon(
            Icons.ac_unit_rounded,
            color: AppTheme.primary,
          ),
          title: Text("Soy un titulo"),
          subtitle: Text(
              "Eiusmod enim veniam ipsum ullamco laboris laborum occaecat ut irure do incididunt. Culpa esse ex ad exercitation. Incididunt eu laborum aute amet amet anim tempor ad anim quis esse consequat anim elit. Est deserunt elit amet enim nisi culpa."),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text("Ok"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Cancel"),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
