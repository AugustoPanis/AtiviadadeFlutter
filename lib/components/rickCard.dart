import 'package:flutter/cupertino.dart';

class Rickcard extends StatelessWidget{
  final String image;
  final double width;

  Rickcard({
    required this.image,
    required this.width
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width,
        child: Hero(tag: image,
        child: Image.asset(image, fit: BoxFit.contain,
          errorBuilder: (context,error, stackTrace){
                return Image.asset(
                    'assets/imagens-moedas/not-found.png',
                    fit: BoxFit.contain
                );
              },
            )
        )
    );
  }
}
