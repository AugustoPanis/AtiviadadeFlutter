import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../controllers/character_controller.dart';
import 'character_details.dart';

class Home extends StatefulWidget {


  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> {

  var controller = ListCurrenciesController.listCurrencies;
  @override
  void initState() {
    super.initState();
    controller.listCurrecies();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body:
        Obx(() => controller.isLoading.value ? Center(child: CircularProgressIndicator(),) :
        Container(
          child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: controller.listCurrenciesObs.length,
              itemBuilder: (BuildContext context, int index){
                return Card(
                  child: ListTile(
                    onTap: (){
                      Get.to(PriceDetailsScreens(characterModel: controller.listCurrenciesObs[index])
                      );
                    },
                  ),
                );
              }),
        )
        )
    );
  }
}