import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syafiqa_apps/pages/cart_page.dart';
import 'package:syafiqa_apps/pages/checkout_succsess_page.dart';
import 'package:syafiqa_apps/pages/chekcout_page.dart';
import 'package:syafiqa_apps/pages/edit_profile_page.dart';
import 'package:syafiqa_apps/pages/home/main_page.dart';
import 'package:syafiqa_apps/pages/sign_in_page.dart';
import 'package:syafiqa_apps/pages/sign_up_page.dart';
import 'package:syafiqa_apps/pages/splash_page.dart';
import 'package:syafiqa_apps/providers/auth_providers.dart';
import 'package:syafiqa_apps/providers/cart_providers.dart';
import 'package:syafiqa_apps/providers/page_providers.dart';
import 'package:syafiqa_apps/providers/product_providers.dart';
import 'package:syafiqa_apps/providers/transaction_providers.dart';
import 'package:syafiqa_apps/providers/wishlist_providers.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => WishlistProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TransactionProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PageProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccessPage(),
        },
      ),
    );
  }
}
