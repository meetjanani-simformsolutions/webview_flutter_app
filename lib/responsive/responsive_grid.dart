import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveGridWidget extends StatefulWidget {
  const ResponsiveGridWidget();

  @override
  State<ResponsiveGridWidget> createState() => _ResponsiveGridWidgetState();
}

class _ResponsiveGridWidgetState extends State<ResponsiveGridWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: ResponsiveGridView.builder(
            gridDelegate: ResponsiveGridDelegate(
              childAspectRatio:
                  ResponsiveWrapper.of(context).isSmallerThan(MOBILE)
                      ? 2
                      : ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                          ? 3
                          : 4,
              crossAxisSpacing: 20,
              mainAxisSpacing: 10,
              minCrossAxisExtent: ResponsiveValue(
                context,
                defaultValue: 180.0,
                valueWhen: const [
                  Condition.smallerThan(
                    name: MOBILE,
                    value: 120.0,
                  ),
                  Condition.largerThan(
                    name: TABLET,
                    value: 240.0,
                  )
                ],
              ).value,
            ),
            itemCount: 5,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    count++;
                  });
                  print(count.toString());
                },
                child: Container(
                  color: index.isEven ? Colors.pinkAccent : Colors.yellow,
                  width: 50,
                  height: 50,
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ResponsiveVisibility(
          visible: count.isEven,
          hiddenWhen: [
            Condition.smallerThan(name: TABLET),
          ],
          visibleWhen: [],
          child: Container(
            padding: EdgeInsets.all(4),
            color: Colors.black,
            child: Icon(
              Icons.ac_unit_outlined,
              color: Colors.blue,
              size: 95,
            ),
          ),
        )
      ],
    );
  }
}
