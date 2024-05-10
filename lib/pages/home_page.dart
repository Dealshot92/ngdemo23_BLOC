import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngdemo23/pages/lesson1/bloc_provider_page.dart';
import 'package:ngdemo23/pages/lesson2/bloc_builder_page.dart';
import 'package:ngdemo23/pages/lesson3/single_repository_page.dart';
import 'package:ngdemo23/pages/lesson4/bloc_selector_page.dart';

import 'lesson1/multi_bloc_provider_page.dart';
import 'lesson3/multi_repository_page.dart';
import 'lesson5/bloc_listener _page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Bloc_State Management'),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 45,
                margin: const EdgeInsets.only(top: 10),
                width: double.infinity,
                child: MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const BlocProviderPage(),
                      ),
                    );
                  },
                  child: const Text("BlocProvider"),
                ),
              ),
              Container(
                height: 45,
                margin: const EdgeInsets.only(top: 10),
                width: double.infinity,
                child: MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const MultiBlocProviderPage(),
                      ),
                    );
                  },
                  child: const Text("MultiBlocProvider"),
                ),
              ),
              Container(
                height: 45,
                margin: const EdgeInsets.only(top: 10),
                width: double.infinity,
                child: MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const BlocBuilderPage(),
                      ),
                    );
                  },
                  child: const Text("BlocBuilder"),
                ),
              ),
              Container(
                height: 45,
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                child: MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const SingleRepositoryPage(),
                      ),
                    );
                  },
                  child: Text("RepositoryProvider"),
                ),
              ),
              Container(
                height: 45,
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                child: MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const MultiRepositoryPage(),
                      ),
                    );
                  },
                  child: Text("MultiRepositoryProvider"),
                ),
              ),
              Container(
                height: 45,
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                child: MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const BlocSelectorPage(),
                      ),
                    );
                  },
                  child: Text("Bloc Selector"),
                ),
              ),
              Container(
                height: 45,
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                child: MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const BlocListenerPage(),
                      ),
                    );
                  },
                  child: Text("Bloc Listener"),


                ),
              ),
              Container(
                height: 45,
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                child: MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {},
                  child: Text("Bloc Consumer"),
                ),
              ),
              Container(
                height: 45,
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                child: MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {},
                  child: Text("Bloc vs Cubit"),
                ),
              ),
              Container(
                height: 45,
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                child: MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {},
                  child: Text("Bloc Concurrency"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
