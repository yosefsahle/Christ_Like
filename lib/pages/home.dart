import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //STORIES

        //Posts
        Expanded(
          child: ListView(
            children: [
              SizedBox(
                height: 150,
                child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                              color: Colors.amber,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(0, 2),
                                  blurRadius: 16,
                                  spreadRadius: 12,
                                ),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: const Center(
                            child: Text('Daily Feeds'),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: 150,
                          decoration: const BoxDecoration(
                              color: Colors.amber,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: const Center(
                            child: Text('Daily News'),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: 150,
                          decoration: const BoxDecoration(
                              color: Colors.amber,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: const Center(
                            child: Text('Daily News 2'),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: 150,
                          decoration: const BoxDecoration(
                              color: Colors.amber,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: const Center(
                            child: Text('Daily Feeds 2'),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                      ],
                    )),
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.grey),
                height: 250,
                child: const Center(
                  child: Icon(Icons.play_circle_fill_rounded),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5),
                child: Center(
                  child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                ),
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(color: Colors.grey[800]),
                child: const Row(
                  children: [
                    Icon(Icons.audiotrack_rounded, color: Colors.amber),
                    Text('Play Audio Now')
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        )
      ],
    );
  }
}
