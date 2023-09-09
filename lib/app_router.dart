import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickandmorty/buisness_logic/cubit/characters_cubit.dart';
import 'package:rickandmorty/constatnts/strings.dart';
import 'package:rickandmorty/data/repository/characters_repository.dart';
import 'package:rickandmorty/data/web_services/characters_web_services.dart';
import 'package:rickandmorty/presentation/screens/character_details.dart';
import 'package:rickandmorty/presentation/screens/chatacter_screen.dart';

class AppRouter {
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;
  AppRouter() {
    charactersRepository = CharactersRepository(CharactersWebServices());
    charactersCubit = CharactersCubit(charactersRepository);
  }
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case characterScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (BuildContext context) =>
                      CharactersCubit(charactersRepository),
                  child: const CharacterScreen(),
                ));
      case characterDetailsScreen:
        return MaterialPageRoute(builder: (_) => CharacterDetailsScreen());
    }
  }
}
