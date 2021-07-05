import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework/models/src/model/cocktail.dart';
import 'package:homework/styles/app_text_styles.dart';

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
      color: const Color(0xFF201F2C),
      clipBehavior: Clip.none,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Инструкция для приготовления',
            style: AppTextStyles.detailsSubtitle,
          ),
          const SizedBox(height: 16.0),
          const Indent(
            indentText: 'В большом бокале смешайте порванные листья мяты, '
                'разрезанный на кусочки лайм и сахар. Толкушкой хорошо '
                'раздавите, чтобы лайм пустил сок.',
          ),
          const Indent(
            indentText: 'Добавьте мелко нарезанную кубиками мякоть '
                'арбуза и снова слегка растолките.',
          ),
          const Indent(
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
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 6.0),
            child: CircleAvatar(
              radius: 2.0,
              backgroundColor: Colors.white,
            ),
          ),
          const SizedBox(width: 8.0),
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
