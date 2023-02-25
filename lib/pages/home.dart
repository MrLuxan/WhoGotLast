import 'package:flutter/material.dart';
import 'package:who_got_last/widgets/CashAmountCard.dart';
import 'package:who_got_last/widgets/CoinFlipCard.dart';
import 'package:who_got_last/widgets/ToggleCard.dart';
import 'package:who_got_last/widgets/CountCard.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Who got last?"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CoinFlipCard(
              title: "Washing up",
              personA: "Person A",
              personB: "Person B",
            ),
            ToggleCard(
              title: "Turn to cook",
              personA: "Jim",
              personB: "Jane",
            ),
            CountCard(
              title: "Done laundry",
              personA: "Chris",
              personB: "Mark",
            ),
            CashAmountCard(
              title: "Shopping",
              personA: "Chris",
              personB: "Mark",
              personAAmount: 75.25,
              personBAmount: 50.11,
            ),
            CashAmountCard(
              title: "Bills",
              personA: "Chris",
              personB: "Mark",
              personAAmount: 11.10,
              personBAmount: 50.11,
            ),
            CashAmountCard(
              title: "Bills",
              personA: "Chris",
              personB: "Mark",
              personAAmount: 11.10,
              personBAmount: 50.11,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}