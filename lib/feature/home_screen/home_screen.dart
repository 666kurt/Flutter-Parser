import 'package:flutter/material.dart';
import 'package:flutter_template/repositories/model/bitcoin_model.dart';

import '../../repositories/bitcoin_repositories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Bitcoin? _coin;

  @override
  void initState() {
    super.initState();
    downloadBitcointPrice();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bitcoin Price'),
      ),
      body: Center(
        child: (_coin == null) ? SizedBox() : Text(_coin!.code),
      ),
    );
  }

  Future<void> downloadBitcointPrice() async {
    _coin = await BitcoinRepositories().getBitcoinPrice();
    setState(() {});
  }
}
