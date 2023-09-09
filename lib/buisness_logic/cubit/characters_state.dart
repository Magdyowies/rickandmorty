part of 'characters_cubit.dart';

@immutable
 class CharactersState {}

 class CharactersInitial extends CharactersState {}

  class CharacterLoaded extends CharactersState{

  final List<Character> characters;
    CharacterLoaded(this.characters);
  }