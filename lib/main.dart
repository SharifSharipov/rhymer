import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rhymer/src/featurs/presentation/cubits/tab_cubit/tab_cubit.dart';
import 'package:rhymer/src/featurs/presentation/pages/home_screen/home_screen.dart';
import 'package:rhymer/src/featurs/presentation/pages/tab_screen/tab_screen.dart';

void main() {
  runApp( App());
}

class App extends StatelessWidget {

   App({super.key,});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => TabCubit()),
    
    ], child: MyApp());
  }
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     final theme = Theme.of(context);
    final primaryColor=const Color(0xFFF82B10);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primaryColor,
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        scaffoldBackgroundColor: const Color(0xffeff1f3),
        useMaterial3: true,
      ),
      home: TabScreen(),
    );
  }
}
