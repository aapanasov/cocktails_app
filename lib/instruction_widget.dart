import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/models.dart';
import 'styles/app_text_styles.dart';

class InstructionWidget extends StatelessWidget {
  const InstructionWidget({
    Key key,
    @required this.cocktail,
  }) : super(key: key);

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 32.0),
      height: 273.0,
      width: screenSize.width * 0.75,
      clipBehavior: Clip.none,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Инструкция для приготовления',
            style: AppTextStyles.detailsSubtitle,
          ),
          const SizedBox(height: 24.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: const CircleAvatar(
                  radius: 2.0,
                  backgroundColor: Colors.white,
                ),
              ),
              SizedBox(width: 8.0),
              Container(
                // width: screenSize.width * 0.75,
                child: Text(
                  '''В большом бокале смешайте порванные листья мяты, разрезанный на кусочки лайм и сахар. Толкушкой хорошо раздавите, чтобы лайм пустил сок.''',
                  style: AppTextStyles.detailsSubtitle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
