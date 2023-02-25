import 'package:flutter/material.dart';
import 'package:who_got_last/widgets/AppCard.dart';

class ToggleCard extends StatefulWidget {

  final String title;
  final String personA;
  final String personB;

  const ToggleCard({
    Key? key,
    required this.title,
    required this.personA,
    required this.personB,
  }) : super(key: key);

  @override
  State<ToggleCard> createState() => _ToggleCardState();
}

class _ToggleCardState extends State<ToggleCard> {

  bool? personA = null;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async{
        setState(() {
          personA = personA == null || personA == false;
        });
      },
      child: AppCard(
        title: "ToggleCard: ${widget.title}",
        personA: widget.personA,
        personB: widget.personB,
        quickAction: true,
        child: Center(
            child: Text(personA != null ? (personA as bool ? widget.personA : widget.personB) : "-")
        )
      ),
    );
  }
}
