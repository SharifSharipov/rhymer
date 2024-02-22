import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rhymer/router/router.dart';
import 'package:rhymer/src/config/theme/app_theme.dart';
import 'package:rhymer/src/featurs/presentation/cubits/tab_cubit/tab_cubit.dart';
void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => TabCubit()),
    ], child: MyApp());
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _router = AppRouter();
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Rhymer',
     theme: themeData,
      routerConfig: _router.config(),
    );
  }
}
