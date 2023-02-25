import 'package:flutter/material.dart';

class AppCard extends StatefulWidget {

  final String title;
  final String personA;
  final String personB;
  final Widget child;
  final bool? quickAction;

  AppCard({
    Key? key,
    required this.title,
    required this.personA,
    required this.personB,
    required this.child,
    this.quickAction
  }) : super(key: key);

  @override
  State<AppCard> createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  @override
  Widget build(BuildContext context) {

    bool quickAction = (widget.quickAction ?? false);

    return Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            margin: EdgeInsets.all(20.0),
            color: Colors.white,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 2),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(10.0,10.0)
                    )
                  ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.title),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(widget.personA),
                          Text(widget.personB),
                        ],
                      ),
                      widget.child
                    ]
                ),
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                child: Icon(
                  Icons.touch_app,
                  color: quickAction ? Colors.grey : Colors.transparent,
                  size: 15.0,
                ),
              ),
            ],
            )
          )
        ],
      );
  }
}
