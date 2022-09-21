import 'package:flutter/material.dart';

class Delivery {

  final String nameCliente;
  final String detail;
  final String dataPedido;
  final String address;
  bool selected = false;

  Delivery({required this.nameCliente, required this.detail, required this.dataPedido, required this.address}) {
  }

}
