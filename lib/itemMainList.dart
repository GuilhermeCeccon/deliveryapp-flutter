import 'package:flutter/material.dart';
import 'package:deliveryapp/delivery.dart';

Widget getItemList(Delivery delivery) {
  return Card(
    child: ListTile(
      title: Text(delivery.nameCliente),
      subtitle: Text('${delivery.detail} - ${delivery.address}'),
      trailing: Icon(Icons.chevron_right),
        onTap: () {
        }
    ),
  );
}

