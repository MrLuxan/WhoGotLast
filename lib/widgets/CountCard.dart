import 'package:flutter/material.dart';
import 'package:who_got_last/widgets/AppCard.dart';

class CountCard extends StatefulWidget {

  final String title;
  final String personA;
  final String personB;

  const CountCard({
    Key? key,
    required this.title,
    required this.personA,
    required this.personB,
  }) : super(key: key);

  @override
  State<CountCard> createState() => _CountCardState();
}

class _CountCardState extends State<CountCard> {

  int personACount = 0;
  int personBCount = 0;

  @override
  Widget build(BuildContext context) {
    return AppCard(
        title: "CountCard: ${widget.title}",
        personA: widget.personA,
        personB: widget.personB,
        quickAction: true,
        child:
        Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          personACount+=1;
                        });
                      },
                      child: Text(
                        personACount.toString(),
                        style: TextStyle(
                          fontSize: 35.0
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          personBCount+=1;
                        });
                      },
                      child: Text(
                        personBCount.toString(),
                        style: TextStyle(
                            fontSize: 35.0
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
        )
    );
  }
}
