import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rickandmorty/data/model/characters.dart';
import 'package:rickandmorty/data/repository/characters_repository.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository charactersRepository;
   List<Character> characters=[];
  CharactersCubit(this.charactersRepository) : super(CharactersInitial());
  List<Character> getAllCharacters(){
    charactersRepository.getAllCharacters().then((characters){
      emit(CharacterLoaded(characters));
      this.characters=characters;
    });
    return characters;
  }
}
