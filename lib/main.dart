import 'package:flutter/material.dart';

void main() {
  StripePayment.setOptions(
    StripeOptions(
      publishableKey: "pk_test_51MqVoLCN9jYjfKrC8oH0DsnFCBTYifOXhRoIGtBvnqHq4xwxZqjv1QoepI0nfZdqLLL5W4G0t7DNHtm31qoq1LfH00LtKWM3hO",
      merchantId: "sk_test_51MqVoLCN9jYjfKrCQpOcZ5jibdfIrKCadwt7bLfi2B8BtPEbYWsbtZR1SL6c0m0TO1nTnFpIEy1hczbMk4TFYojE00iCEBz6sK",
      androidPayMode: 'test',
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xBEEFD452),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 25,),
            Text('Select Your Payment Method',textAlign: TextAlign.center ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Theme.of(context).primaryColor),),
            ElevatedButton(
                onPressed: (){

                }, child: const Text('Pay')),
          ],
        ),
      ),
    );
  }
}
