import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river/main.dart';

class FutureScreen extends ConsumerStatefulWidget {
  const FutureScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FutureScreenState();
}

class _FutureScreenState extends ConsumerState<FutureScreen> {
  @override
  Widget build(BuildContext context) {
    return ref.watch(fetchUserProvider).when(
      data: (data) {
        return Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              Text(data.name),
              const SizedBox(
                height: 20,
              ),
              Text(data.email)
            ],
          ),
        );
      },
      error: (error, stackTrace) {
        return Scaffold(
          body: Center(
            child: Text(error.toString()),
          ),
        );
      },
      loading: () {
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
