import 'package:flutter/material.dart';

import 'package:homework/models/models.dart';

import 'package:homework/widgets/appbar_widget.dart';
import 'package:homework/widgets/details_widget.dart';
import 'package:homework/widgets/ingredients_widget.dart';
import 'package:homework/widgets/instruction_widget.dart';
import 'package:homework/widgets/rating_widget.dart';

class CocktailDetailPage extends StatelessWidget {
  const CocktailDetailPage(
    this.cocktail, {
    Key key,
  }) : super(key: key);

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1927),
      extendBodyBehindAppBar: true,
      appBar: const AppbarWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Image.asset(
            //   'assets/images/cocktail_01.png',
            //   fit: BoxFit.fill,
            // ),
            Container(
              height: 343.0,
              child: Image.network(
                cocktail.drinkThumbUrl,
                fit: BoxFit.fitWidth,
              ),
            ),
            DetailsWidget(cocktail: cocktail),
            IngredientsWidget(cocktail: cocktail),
            InstructionWidget(cocktail: cocktail),
            const RatingWidget(),
          ],
        ),
      ),
    );
  }
}


/// Сделать верстку экрана "Карточка коктейля" по модели Cocktail cocktail
/// Ссылка на макет
/// https://www.figma.com/file/d2JJUBFu7Dg0HOV30XG7Z4/OTUS-FLUTTER.-%D0%A3%D1%80%D0%BE%D0%BA-3-%D0%94%D0%97?node-id=23%3A85
/// для того чтобы весь контент поместился, необходимо использовать SingleChildScrollView()
