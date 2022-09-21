import 'package:flutter/material.dart';
import 'package:deliveryapp/addDelivery.dart';
import 'package:deliveryapp/itemMainList.dart';
import 'package:deliveryapp/delivery.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pedidos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        "/": (context) => MyHomePage(),
        "/add": (context) => AddDelivery()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {

  List<Delivery> deliverys = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meus Pedidos"),
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: _goToNewDelivery),
          //operador ternário
          deliverys.isNotEmpty ? IconButton(
              onPressed: _clearAll,
              icon: Icon(Icons.clear_all)) : Container()
        ],
      ),
      body: ListView(
        children: buildListItens(),
          ),
    );
  }

  void _clearAll(){
    setState(() {
      deliverys.clear();
    });
  }

  void _goToNewDelivery(){
    Future future = Navigator.pushNamed(
        context,
        "/add"
    );
    future.then((delivery) {
      setState(() {
        deliverys.add(delivery);
      });
    });
  }

  List<Widget> buildListItens(){
    return deliverys
        .map((delivery) =>
        getItemList(
            delivery
        )
    )
        .toList();

  }


}
