import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngdemo23/bloc/sample_first_bloc.dart';
import 'package:ngdemo23/services/log_service.dart';

class BlocListenerPage extends StatefulWidget {
  const BlocListenerPage({super.key});

  @override
  State<BlocListenerPage> createState() => _BlocListenerPageState();
}

class _BlocListenerPageState extends State<BlocListenerPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SampleFirstBloc(),
      child: SamplePage(),
    );
  }
}

class SamplePage extends StatelessWidget {
  late SampleFirstBloc sampleBloc;

  @override
  Widget build(BuildContext context) {
    sampleBloc=context.read<SampleFirstBloc>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Bloc Listener'),
      ),
      body: Center(
        child: BlocListener<SampleFirstBloc, int>(
          listenWhen: (previous, current) => current > 5,
          listener: (context, state) {
            _showMessage(context);
          },
          child: BlocBuilder<SampleFirstBloc, int>(
            builder: (context, state){
              return Text(
                context.read<SampleFirstBloc>().state.toString(),
                style: TextStyle(fontSize: 70),
              );
            },
          )
        ),
      ),
    );
  }
  void _showMessage(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext _) {
        return AlertDialog(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          title: const Text('Title'),
          content: BlocBuilder<SampleFirstBloc, int>(
            bloc: sampleBloc,
            builder: (context, state) {
              return Text(state.toString());
            },
          ),
          actions: [
            ElevatedButton(
              child: const Text("Okay"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
