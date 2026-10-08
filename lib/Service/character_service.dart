import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/character_model.dart';
import '../models/list_currencies_model.dart';

class CharacterService {
  String url = "https://rickandmortyapi.com/api/character";
  dynamic _response;
  CharacterService() {
    _response = "";
  }

  Future<ListCurrenciesModel> fetchListCurrencies() async {
    _response = await http.get(Uri.parse(url));

    if (_response.statusCode == 200) {
      Map<String, dynamic> retorno = json.decode(_response.body);
      return ListCurrenciesModel.fromJson(retorno);
    } else {
      throw Exception('Falho ao carregar');
    }
  }
}
