import 'package:flutter/material.dart';
import 'package:mero_dokan/features/shop/presentation/product_list.dart';
import 'package:mero_dokan/core/constants/product_details.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      /// The `length: 3` parameter in the `DefaultTabController` widget is specifying the number of
      /// tabs in the `TabBar`. In this case, it is indicating that there are 3 tabs in the `TabBar`.
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Shop Page"),
        ),
        body: Column(children: [
          /// `TabBar(tabs: tabs)` is creating a TabBar widget with the specified tabs. The `tabs`
          /// parameter is expected to be a list of Tab widgets that define the individual tabs to be
          /// displayed in the TabBar.
          const TabBar(
            tabs: [
              Tab(
                text: "Dolls",
                icon: Icon(Icons.toys),
              ),
              Tab(
                text: "Chocolates",
                icon: Icon(Icons.table_chart),
              ),
              Tab(text: "Flowers", icon: Icon(Icons.camera)),
            ],
            labelColor: Colors.black,
          ),

          /// The `const TabBarView(children: [])` is creating a TabBarView widget with an empty list of
          /// children. The `children` parameter is expected to be a list of widgets that define the
          /// content to be displayed for each tab in the TabBar. In this case, since the list is empty,
          /// there are no child widgets defined for the TabBarView.
          Expanded(
            child: TabBarView(
              children: [
                ProductList(productList: ProductDetails.doll),
                ProductList(productList: ProductDetails.chocolate),
                ProductList(productList: ProductDetails.flowers)
              ],
            ),
          )
        ]),
      ),
    );
  }
}
