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
      clipBehavior: Clip.none,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Инструкция для приготовления',
            style: AppTextStyles.detailsSubtitle,
          ),
          const SizedBox(height: 16.0),
          Indent(
            indentText: 'В большом бокале смешайте порванные листья мяты, '
                'разрезанный на кусочки лайм и сахар. Толкушкой хорошо '
                'раздавите, чтобы лайм пустил сок.',
          ),
          Indent(
            indentText: 'Добавьте мелко нарезанную кубиками мякоть '
                'арбуза и снова слегка растолките.',
          ),
          Indent(
            indentText: 'Добавьте ром и лед. Перемешайте и разлейте '
                'по бокалам. Сразу подавайте.',
          ),
        ],
      ),
    );
  }
}

class Indent extends StatelessWidget {
  const Indent({
    Key key,
    @required this.indentText,
  }) : super(key: key);

  final String indentText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
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
          Expanded(
            child: Text(
              indentText,
              style: AppTextStyles.detailsSubtitle,
            ),
          ),
        ],
      ),
    );
  }
}
