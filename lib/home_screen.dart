// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:river/main.dart';

// class HomeScreen extends ConsumerStatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends ConsumerState<HomeScreen> {
//   void onSubmitName(WidgetRef ref, String value) {
//     ref.read(userProvider.notifier).updateName(value);
//   }

//   void onSubmitAge(WidgetRef ref, String value) {
//     ref.read(userProvider.notifier).updateAge(int.parse(value));
//   }

//   @override
//   Widget build(BuildContext context) {
//     final user = ref.watch(userProvider);
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(
//             user.name,
//             style: TextStyle(color: Colors.black),
//           ),
//         ),
//         body: Column(
//           children: [
//             TextField(onSubmitted: (value) => onSubmitName(ref, value)),
//             TextField(onSubmitted: (value) => onSubmitAge(ref, value)),
//             SizedBox(
//               height: 50,
//             ),
//             Center(
//               child: Text(user.name),
//             ),
//             Center(
//               child: Text(user.age.toString()),
//             ),
//           ],
//         ));
//   }
// }
