import 'character_model.dart';

class ListCurrenciesModel {

  final List<CharacterModel> listCurrenciesModel;

  ListCurrenciesModel(this.listCurrenciesModel);

  ListCurrenciesModel.fromJson(Map<String, dynamic> json):
        listCurrenciesModel = List.from(json.values).map((item) => CharacterModel.fromJson(item)).toList();

}