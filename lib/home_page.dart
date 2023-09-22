import 'package:flutter/material.dart';
import 'package:myapp/learn_flutter_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          //when pressing on Learn flutter button u navigate to LearFlutter UI page
          Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) {
              return const LearnFlutter();
            }),
          );
        },
        child: const Text('Learn Flutter'),
      ),
    );
  }
}
