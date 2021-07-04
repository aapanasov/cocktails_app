import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homework/styles/app_text_styles.dart';

import 'models/models.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({
    Key key,
    @required this.cocktail,
  }) : super(key: key);

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(cocktail.name, style: AppTextStyles.detailsTitle),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/images/icon_hart.svg'),
              )
            ],
          ),
          Text('id:${cocktail.id}', style: AppTextStyles.detailsId),
          const SizedBox(
            height: 8.0,
          ),
          DetailColumn(
            title: 'Категория коктейля',
            value: cocktail.category.value,
          ),
          DetailColumn(
            title: 'Тип коктейля',
            value: cocktail.cocktailType.value,
          ),
          DetailColumn(
            title: 'Тип стекла',
            value: cocktail.glassType.value,
          ),
        ],
      ),
    );
  }
}

class DetailColumn extends StatelessWidget {
  const DetailColumn({
    Key key,
    @required this.title,
    @required this.value,
  }) : super(key: key);

  final String value;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppTextStyles.detailsSubtitle),
          const SizedBox(height: 8.0),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
            decoration: BoxDecoration(
              color: const Color(0xFF15151C),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text(value, style: AppTextStyles.detailsValue),
          ),
        ],
      ),
    );
  }
}
