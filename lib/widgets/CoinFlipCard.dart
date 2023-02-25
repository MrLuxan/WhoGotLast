import 'dart:math';
import 'package:flutter/material.dart';
import 'package:who_got_last/widgets/AppCard.dart';

class CoinFlipCard extends StatefulWidget {

  final String title;
  final String personA;
  final String personB;

  const CoinFlipCard({
    Key? key,
    required this.title,
    required this.personA,
    required this.personB,
  }) : super(key: key);

  @override
  State<CoinFlipCard> createState() => _CoinFlipCardState();
}

class _CoinFlipCardState extends State<CoinFlipCard> {

  bool? heads = null;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async{
        setState(() { heads = null; });
        await Future.delayed(Duration(seconds: 1));
        setState(() {
          heads = Random().nextInt(2) == 1;
        });
      },
      child: AppCard(
        title: "CoinFlip: ${widget.title}",
          personA: widget.personA,
          personB: widget.personB,
        quickAction: true,
        child:
        Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Heads"),
                  Text("Tails"),
                ],
              ),
              Text(heads != null ? (heads as bool ? "Heads" : "Tails") : "0"),
            ],
          )
        )
      ),
    );
  }
}
