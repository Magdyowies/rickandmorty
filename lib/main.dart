import 'package:flutter/material.dart';
import 'package:rickandmorty/app_router.dart';
import 'package:bloc/bloc.dart';

void main() {
  runApp( rickandmorty(appRouter: AppRouter(),));
}

class rickandmorty extends StatelessWidget {
final AppRouter appRouter;
  const rickandmorty({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
