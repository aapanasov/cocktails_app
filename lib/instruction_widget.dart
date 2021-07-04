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
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 32.0),
      height: 273.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Инструкция для приготовления',
            style: AppTextStyles.detailsSubtitle,
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
              const CircleAvatar(
                radius: 2.0,
                backgroundColor: Colors.white,
              ),
              SizedBox(width: 8.0),
              Text(
                '''В большом бокале смешайте порванные листья мяты, разрезанный на кусочки лайм и сахар. Толкушкой хорошо раздавите, чтобы лайм пустил сок.''',
                style: AppTextStyles.detailsSubtitle,
                softWrap: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
