import 'package:flutter/material.dart';
import 'package:myapp/emoticon_faces.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi! Jared',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      '22 sep 2023',
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            //Search bar
            // ignore: avoid_unnecessary_containers
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(12),
              ),
              // ignore: prefer_const_constructors
              padding: EdgeInsets.all(12),
              child: const Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 25,
            ),
            //how do u feel
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'How do u feel?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                )
              ],
            ),
            //emoticon faces
            // ignore: prefer_const_constructors
            SizedBox(
              height: 25,
            ),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //bad
                Column(
                  children: [
                    EmoticonFace(
                      emoticonFace: '😔',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Bad',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    EmoticonFace(
                      emoticonFace: '🙂',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Bad',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    EmoticonFace(
                      emoticonFace: '😀',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Bad',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),

                Column(
                  children: [
                    EmoticonFace(
                      emoticonFace: '😊',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Bad',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
