import 'package:app_food_dx/data/product_state.dart';
import 'package:app_food_dx/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../components/price_row.dart';
import '../../data/search_state.dart';
import '../../utils/device_parameters.dart';
import '../../widgets/custom_container.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/round_image.dart';
import '../production/production_page.dart';

class SearchPage extends StatelessWidget {
  static const routeName = 'search page';
  final List<ProductModel> keywords = productState.productionList;

  @override
  Widget build(BuildContext context) {
    final searchState = Provider.of<SearchState>(context);

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: (text) {
            searchState.searchText = text;
          },
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'search...',
            hintStyle: TextStyle(color: Colors.white),
            border: InputBorder.none,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: productState.productionList.length,
        itemBuilder: (context, index) {
          ProductModel product = productState.productionList[index];
          if (searchState.searchText.isNotEmpty &&
              !keywords[index]
                  .name
                  .toLowerCase()
                  .contains(searchState.searchText.toLowerCase())) {
            return Container();
          }
          return _buildProductItem(context, product, index);
          // return ListTile(
          //   title: Text(keywords[index].name),
          // );
        },
      ),
    );
  }

  Column _buildProductItem(
    BuildContext context,
    ProductModel product,
    int index,
  ) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(
                ProductionPage.routeName,
                arguments: product,
              );
            },
            child: CustomContainer(
              color: Colors.grey[350],
              borderRadius: 10,
              borderShadow: true,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 5.0),
                          child: CustomContainer(
                            borderRadius: 30,
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: CustomText(
                                text: '30% OFF',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Consumer<ProductState>(
                          builder: (context, value, child) => IconButton(
                            onPressed: () => productState.changeFavorite(index),
                            icon: Icon(
                              Icons.favorite_rounded,
                              color: value.productionList[index].isFavorited
                                  ? Colors.red
                                  : Colors.grey,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  RoundImage(
                    imageAsset: product.image,
                    width: DeviceParameters.screenWidth(context) / 2.75,
                    aspectRatio: 0.9,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.5),
                    child: CustomContainer(
                      borderRadius: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomText(
                              text: product.name,
                              textColor: Colors.grey[700],
                            ),
                            const SizedBox(height: 5),
                            PriceRow(
                              saleOffPrice: product.currentPrice,
                              originalPrice: product.originalPrice,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
