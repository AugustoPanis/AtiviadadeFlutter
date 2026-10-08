import '../Service/character_service.dart';
import '../models/character_model.dart';
import 'package:get/get.dart';

class ListCurrenciesController extends GetxController{

  CharacterService characterService = CharacterService();

  var isLoading = false.obs;

  var listCurrenciesObs = <CharacterModel>[].obs;

  static ListCurrenciesController get listCurrencies => Get.find();

  Future<dynamic> listCurrecies() async{
    isLoading.value = true;

    var list = await characterService.fetchListCurrencies();

    listCurrenciesObs.value = list.listCurrenciesModel;
    isLoading.value = false;

    return listCurrenciesObs;
  }

}