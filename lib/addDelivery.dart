import 'package:flutter/material.dart';
import 'package:deliveryapp/delivery.dart';

class AddDelivery extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _detailController = TextEditingController();
  final TextEditingController _dataPedidoController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastrar novo pedido"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Nome do cliente",
                    labelText: "Nome do cliente"
                ),
                controller: _nameController,
                validator: (value) {
                 if (value?.isEmpty ?? true) {
                    return 'Insira o nome do cliente';
                 }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Qual seu pedido",
                    labelText: "Qual seu pedido"
                ),
                controller: _detailController,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Insira o seu pedido';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Data do pedido",
                    labelText: "Data do pedido"
                ),
                controller: _dataPedidoController,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Insira a data do pedido';
                   }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Endereço de entrega",
                    labelText: "Endereço de entrega"
                ),
                controller: _addressController,
                validator: (value) {
                   if (value?.isEmpty ?? true) {
                  return 'Insira o endereço de entrega';
                    }
                   return null;
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                      Delivery delivery = Delivery(
                          nameCliente: _nameController.text,
                          detail: _detailController.text,
                          dataPedido: _dataPedidoController.text,
                          address: _addressController.text
                      );
                      Navigator.pop(context, delivery);
                    },  child: Text('Salvar novo pedido'),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}


