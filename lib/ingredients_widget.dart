import 'package:flutter/material.dart';
import 'package:homework/styles/app_text_styles.dart';
import 'models/models.dart';

class IngredientsWidget extends StatelessWidget {
  const IngredientsWidget({
    Key key,
    @required this.cocktail,
  }) : super(key: key);

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 32.0),
      color: Colors.black,
      height: 273.0,
      child: Column(
        children: [
          const Text(
            'Ингредиенты:',
            style: AppTextStyles.ingredientsTitle,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: cocktail.ingredients.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          cocktail.ingredients.elementAt(index).ingredientName,
                          style: AppTextStyles.ingredientName,
                        ),
                        Text(
                          cocktail.ingredients.elementAt(index).measure,
                          style: AppTextStyles.ingredientMeasure,
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
