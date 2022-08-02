import 'package:ecommerce_firebase/blocs/category/category_bloc.dart';
import 'package:ecommerce_firebase/config/app_router.dart';
import 'package:ecommerce_firebase/config/theme.dart';
import 'package:ecommerce_firebase/repositories/category/category_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/cart/cart_bloc.dart';
import 'blocs/product/product_bloc.dart';
import 'blocs/wishlist/wishlist_bloc.dart';
import 'repositories/product/product_repository.dart';
import 'screens/screens.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Bloc.observer = SimpleBlocObserver();
  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => WishlistBloc()..add(StartWishlist()),
        ),
        BlocProvider(
          create: (_) => CartBloc()..add(LoadCart()),
        ),
        BlocProvider(
          create: (_) => CategoryBloc(categoryRepository: CategoryRepository())
            ..add(LoadCategories()),
        ),
        BlocProvider(
          create: (_) => ProductBloc(productRepository: ProductRepository())
            ..add(LoadProducts()),
        ),
      ],
      child: MaterialApp(
        title: 'Ecommerce App',
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: SplashScreen.routeName,
        home: const HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
