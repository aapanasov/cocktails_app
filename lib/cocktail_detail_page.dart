import 'package:flutter/material.dart';
import 'package:homework/appbar_widget.dart';
import 'package:homework/models/models.dart';

class CocktailDetailPage extends StatelessWidget {
  const CocktailDetailPage(
    this.cocktail, {
    Key key,
  }) : super(key: key);

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    /// Сделать верстку экрана "Карточка коктейля" по модели Cocktail cocktail
    /// Ссылка на макет
    /// https://www.figma.com/file/d2JJUBFu7Dg0HOV30XG7Z4/OTUS-FLUTTER.-%D0%A3%D1%80%D0%BE%D0%BA-3-%D0%94%D0%97?node-id=23%3A85
    /// для того чтобы весь контент поместился, необходимо использовать SingleChildScrollView()
    return Scaffold(
      backgroundColor: Color(0xFF1A1927),
      extendBodyBehindAppBar: true,
      appBar: AppbarWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/cocktail_01.png',
              fit: BoxFit.fill,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      cocktail.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SF-Pro',
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0,
                        height: 1.19,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
