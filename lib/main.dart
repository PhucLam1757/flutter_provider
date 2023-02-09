import 'package:app_food_dx/data/search_state.dart';
import 'package:app_food_dx/pages/search/search.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data/cart_state.dart';
import 'data/product_state.dart';
import 'pages/cart/cart_page.dart';
import 'pages/home/home_page.dart';
import 'pages/production/production_page.dart';
import 'package:flutter/material.dart';
import 'package:app_food_dx/login/pages/auth_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

///okkkkkkkkkkkkk

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CartState>(create: (context) => cartState),
        ChangeNotifierProvider<ProductState>(create: (context) => productState),
        ChangeNotifierProvider<SearchState>(create: (context) => SearchState()),
      ],
      child: MaterialApp(
        title: 'Provider Ecommerce App',
        debugShowCheckedModeBanner: false,
        routes: routesList,
        initialRoute: AuthPage.routeName,
      ),
    );
  }

  Map<String, WidgetBuilder> get routesList {
    return {
      AuthPage.routeName: (context) => const AuthPage(),
      HomePage.routeName: (context) => HomePage(),
      ProductionPage.routeName: (context) => const ProductionPage(),
      CartPage.routeName: (context) => const CartPage(),
      SearchPage.routeName: (context) => SearchPage(),
    };
  }
}
