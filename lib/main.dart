import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river/future_screen.dart';
import 'package:http/http.dart' as http;
import 'package:river/user.dart';
// import 'package:river/home_screen.dart';
// import 'package:river/user.dart';

// final userProvider = StateNotifierProvider<UserNotifier, User>((ref) {
//   return UserNotifier(User(name: '', age: 0));
// });

final fetchUserProvider = FutureProvider((ref) async {
  return ref.watch(userRepositoryProvider).fetchUserData();
});

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FutureScreen(),
    );
  }
}
