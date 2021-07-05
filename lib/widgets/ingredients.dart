import 'package:flutter/material.dart';
import 'package:homework/models/src/model/cocktail.dart';
import 'package:homework/themes/app_text_theme.dart';

class Ingredients extends StatelessWidget {
  const Ingredients({
    Key key,
    @required this.cocktail,
  }) : super(key: key);

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 24.0,
        left: 32.0,
        right: 32.0,
        bottom: 8.0,
      ),
      color: Colors.black,
      height: 273.0,
      child: Column(
        children: [
          Text(
            'Ингредиенты:',
            style: AppTextTheme.body1.copyWith(
              color: const Color(0xFFB1AFC6),
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.only(top: 24.0),
                itemCount: cocktail.ingredients.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          cocktail.ingredients.elementAt(index).ingredientName,
                          style: AppTextTheme.body2.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        Text(
                          cocktail.ingredients.elementAt(index).measure,
                          style: AppTextTheme.body2.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
