import 'package:flutter/material.dart';
import 'package:who_got_last/widgets/AppCard.dart';

class CashAmountCard extends StatefulWidget {

  final String title;
  final String personA;
  final String personB;

  final double personAAmount;
  final double personBAmount;

  const CashAmountCard({
    Key? key,
    required this.title,
    required this.personA,
    required this.personB,
    required this.personAAmount,
    required this.personBAmount,

  }) : super(key: key);

  @override
  State<CashAmountCard> createState() => _CashAmountCardState();
}

class _CashAmountCardState extends State<CashAmountCard> {

  @override
  Widget build(BuildContext context) {

    bool personA = widget.personAAmount > widget.personBAmount;
    double amountDifferance = personA ? widget.personAAmount - widget.personBAmount
                                      : (widget.personAAmount - widget.personBAmount) * -1;

    return AppCard(
        title: "ToggleCard: ${widget.title}",
        personA: widget.personA,
        personB: widget.personB,
        child: Row(
          mainAxisAlignment: (personA ? MainAxisAlignment.start : MainAxisAlignment.end),
          children: [
            Text(
              "£$amountDifferance",
              style: TextStyle(
                fontSize: 20.0,

              ),
              ),
          ],
        )
        );
  }
}
