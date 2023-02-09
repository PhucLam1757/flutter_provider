// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_food_dx/pages/draw/draw.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../components/custom_appbar.dart';
import '../../constants/img_string.dart';
import '../production/production_page.dart';
import '../search/search.dart';
import '../search/searchbox.dart';
import 'components/categories_panel.dart';
import 'components/hello_panel.dart';
import 'components/product_panel.dart';
import 'components/sale_off_panel.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  // final name = user.email;

  static const routeName = "HomePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Draw(),
      appBar: CustomAppBar(
        title: const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SearchBox(
                  key: UniqueKey(),
                ),
                const SizedBox(height: 15),
                SaleOffPanel(
                  saleOffImage: ImgString.KeyboardImg,
                  onPressed: () {},
                ),
                const SizedBox(height: 25),
                CategoriesPanel(
                  onPressedSeeAll: () {},
                  onPressedIcon: () {},
                ),
                const SizedBox(height: 25),
                ProductPanel(
                  onPressed: (product) {
                    Navigator.of(context).pushNamed(
                      ProductionPage.routeName,
                      arguments: product,
                    );
                  },
                  onPressedFavoriteButton: () {},
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
