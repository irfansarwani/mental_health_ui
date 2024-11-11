import 'package:flutter/material.dart';
import 'package:mental_health_app_ui/utils/exercise_tile.dart';
import 'package:mental_health_app_ui/utils/mood_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.remove_red_eye_sharp), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: ''),
        ],
      ),
      body: Builder(
        builder: (BuildContext context) {
          return SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 15, right: 25),
                  child: Column(
                    children: [
                      // Greeting Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Hello, Irfan!',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 5,
                                ),
                                child: Text(
                                  '8th Nov, 2024',
                                  style: TextStyle(color: Colors.blue[100]),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue[800],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: const EdgeInsets.all(12),
                                  child: const Icon(
                                    Icons.notifications,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),

                      const SizedBox(height: 30),

                      // Search bar
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.blue[800],
                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: Colors.white54,
                                  size: 30,
                                ),
                                hintText: 'Search',
                                hintStyle:
                                    const TextStyle(color: Colors.white54),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 30),

                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'How do your feel?',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.more_horiz_rounded,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),

                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MoodCard(
                            moodIconPath: 'assets/images/sad.png',
                            name: 'Badly',
                          ),
                          MoodCard(
                            moodIconPath: 'assets/images/happiness.png',
                            name: 'Fine',
                          ),
                          MoodCard(
                            moodIconPath: 'assets/images/laughing.png',
                            name: 'Well',
                          ),
                          MoodCard(
                            moodIconPath: 'assets/images/smiley.png',
                            name: 'Excellent',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 25, top: 10, right: 25),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: const Center(
                      child: Column(
                        children: [
                          SizedBox(
                            width: 30,
                            child: Divider(
                              thickness: 3,
                              color: Colors.grey,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Exercices',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Icon(Icons.more_horiz),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ExerciseTile(
                            icon: Icons.favorite,
                            iconBackgroundColor: Colors.red,
                            title: 'Speaking Skills',
                            subtitle: '20 lessions',
                          ),
                          ExerciseTile(
                            icon: Icons.person_2,
                            iconBackgroundColor: Colors.orange,
                            title: 'Reading  Speed',
                            subtitle: '9 lessions',
                          ),
                          ExerciseTile(
                            icon: Icons.favorite,
                            iconBackgroundColor: Colors.blue,
                            title: 'Writing Skills',
                            subtitle: '9 lessions',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
