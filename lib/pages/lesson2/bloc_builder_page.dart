import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngdemo23/bloc/sample_first_bloc.dart';

class BlocBuilderPage extends StatefulWidget {
  const BlocBuilderPage({super.key});

  @override
  State<BlocBuilderPage> createState() => _BlocBuilderPageState();
}

class _BlocBuilderPageState extends State<BlocBuilderPage> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>SampleFirstBloc(),
      lazy: false,
      child: SamplePage(),
    );
  }
}

class SamplePage extends StatelessWidget {
  late SampleFirstBloc sampleBloc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Bloc Builder"),
      ),
      body: Center(
        child: BlocBuilder<SampleFirstBloc, int>(
          buildWhen: (previous, current){
            return current >5;
          },
          bloc: context.read<SampleFirstBloc>(),
          builder: (context, state) {
            return Text(
              "index: $state",
              style: TextStyle(fontSize: 40),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          context.read<SampleFirstBloc>().add(AddSampleEvent());
        },
      ),
    );
  }
}
