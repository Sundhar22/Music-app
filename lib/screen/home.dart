import 'package:flutter/material.dart';
import 'package:music/utils/color.dart';
import 'package:music/utils/screen_size.dart';

import '../utils/transtion.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool val = false;
  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: useScreenWidth(10), vertical: useScreenHeight(12)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.2),
                    borderRadius: BorderRadius.circular(useScreenWidth(20))),
                child: Center(
                  child: TextField(
                    onTap: () {
                      setState(() {
                        val = true;
                      });
                      Navigator.push(context, FadeRoute(widget: SearchPage()));
                    },
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Artist,track or album',
                      hintStyle: TextStyle(
                          color: AppColor.white.withOpacity(.1),
                          fontSize: useScreenHeight(17)),
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        color:
                            val ? Colors.white : AppColor.white.withOpacity(.1),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: useScreenHeight(25)),
              Text(
                'Selections for you',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: useScreenHeight(25)),
              ),
              SizedBox(height: useScreenHeight(25)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recently played',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: useScreenHeight(17)),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'see all',
                      style: TextStyle(fontSize: useScreenHeight(15)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: useScreenHeight(200),
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Placeholder(
                            fallbackHeight: 150,
                            fallbackWidth: 150,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'What A Time',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: useScreenHeight(15)),
                              ),
                              Text(
                                'Julia Michale',
                                style: TextStyle(
                                  fontSize: useScreenHeight(12),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool val = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: useScreenWidth(10), vertical: useScreenHeight(12)),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.2),
                    borderRadius: BorderRadius.circular(useScreenWidth(20))),
                child: Center(
                  child: TextField(
                    onTap: () {
                      setState(() {
                        val = true;
                      });
                    },
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Artist,track or album',
                      hintStyle: TextStyle(fontSize: useScreenHeight(17)),
                      border: InputBorder.none,
                      prefixIcon: const Icon(
                        Icons.search_rounded,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
