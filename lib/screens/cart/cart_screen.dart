import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/models.dart';
import '../../widgets/cart_product_card.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_navbar.dart';
import '../../widgets/order_summary.dart';


class CartScreen extends StatelessWidget {

  static const String routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => CartScreen());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Cart'),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(primary: Colors.white),
                child: Text('GO TO CART',style: Theme.of(context).textTheme.headline3
                ),)
            ],
          ),
        ),
      ) ,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'hello 20dollar free',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Text(
                      'Add More Items',
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 400,
                child: ListView.builder(
                  itemCount: UserProduct.products.length,
                    itemBuilder: (context,index) {
                      return CartProductCard(product: UserProduct.products[index]);
                    }),
              ),
              OrderSummary(),
            ],
          ),
        ),
    );
  }
}


