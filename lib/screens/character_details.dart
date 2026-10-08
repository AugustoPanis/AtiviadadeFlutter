import 'package:flutter/material.dart';

import '../components/rickCard.dart';
import '../models/character_model.dart';

class PriceDetailsScreens extends StatefulWidget {
  final CharacterModel characterModel;

  const PriceDetailsScreens({required this.characterModel, super.key});

  @override
  State<PriceDetailsScreens> createState() => _PriceDetailsScreenState();
}

class _PriceDetailsScreenState extends State<PriceDetailsScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detalhes")),

      body: Container(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
            // Imagem do personagem
            Rickcard(image: widget.characterModel.image, width: 200),

            const SizedBox(height: 20),

            // Informações do personagem
            Card(
              child: Column(
                children: [
                  ListTile(
                    title: const Text("Nome"),
                    trailing: Text(widget.characterModel.name),
                  ),

                  ListTile(
                    title: const Text("Status"),
                    trailing: Text(widget.characterModel.status),
                  ),

                  ListTile(
                    title: const Text("Espécie"),
                    trailing: Text(widget.characterModel.species),
                  ),

                  ListTile(
                    title: const Text("Gênero"),
                    trailing: Text(widget.characterModel.gender),
                  ),

                  ListTile(
                    title: const Text("Símbolo"),
                    trailing: Text(widget.characterModel.symbol),
                  ),

                  ListTile(
                    title: const Text("ID"),
                    trailing: Text(widget.characterModel.id.toString()),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
