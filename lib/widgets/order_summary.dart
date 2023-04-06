import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/cart_model.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(thickness: 2),
        Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('SUBTOTAL',
                  style: Theme.of(context).textTheme.headline5),
              Text('\$${Cart().subtotalString}',
                  style: Theme.of(context).textTheme.headline5),
            ],
          ),
        ),
        Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('DELIVERY FEE',
                  style: Theme.of(context).textTheme.headline5),
              Text('\$${Cart().deliveryFeeString}',
                  style: Theme.of(context).textTheme.headline5),
            ],
          ),
        ),
        SizedBox(height: 10),
        Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: Colors.black.withAlpha(50),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              width: MediaQuery.of(context).size.width - 10,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'TOTAL',
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    '\$${Cart().totalString}',
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
