import 'package:dio/dio.dart';
import 'package:rickandmorty/constatnts/strings.dart';
import 'package:rickandmorty/data/model/characters.dart';
class CharactersWebServices {
  late Dio dio;

  CharactersWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: bsaeUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 20), // 20 seconds,
      receiveTimeout: Duration(seconds: 20),
    );

    dio = Dio(options);
  }

  Future<List<Character>> getAllCharacters() async {
    try {
      Response response = await dio.get('1,183');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
    
  }

   



}