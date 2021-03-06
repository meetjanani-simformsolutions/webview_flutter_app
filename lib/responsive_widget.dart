import 'package:flutter/material.dart';
import 'package:responsive/responsive.dart';

class ResponsiveWidget extends StatefulWidget {
  const ResponsiveWidget();

  @override
  State<ResponsiveWidget> createState() => _ResponsiveWidgetState();
}

class _ResponsiveWidgetState extends State<ResponsiveWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ResponsiveRow(
            columnsCount: 12,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: <Widget>[
              FlexWidget(
                child: Container(
                  height: 100,
                  color: Colors.amber,
                ),
                xs: 4,
                xsOffset: 2,
                sm: 3,
                md: 2,
                lg: 1,
                xsLand: 4,
                xsLandOffset: 0,
                smLand: 2,
                mdLand: 1,
                lgLand: 1,
              ),
              FlexWidget(
                child: Container(
                  height: 100,
                  color: Colors.red,
                ),
                xs: 6,
                sm: 3,
                md: 2,
                lg: 1,
                xsLand: 4,
                smLand: 2,
                mdLand: 1,
                lgLand: 1,
              ),
              FlexWidget(
                child: Container(
                  height: 100,
                  color: Colors.indigo,
                ),
                xs: 6,
                sm: 3,
                md: 2,
                lg: 1,
                xsLand: 4,
                smLand: 2,
                mdLand: 1,
                lgLand: 1,
              ),
              FlexWidget(
                child: Container(
                  height: 100,
                  color: Colors.lime,
                ),
                xs: 6,
                sm: 3,
                md: 2,
                lg: 1,
                xsLand: 4,
                smLand: 2,
                mdLand: 1,
                lgLand: 1,
              ),
              FlexWidget(
                child: Container(
                  height: 100,
                  color: Colors.teal,
                ),
                xs: 6,
                sm: 3,
                md: 2,
                lg: 1,
                xsLand: 4,
                smLand: 2,
                mdLand: 1,
                lgLand: 1,
              ),
              FlexWidget(
                child: Container(
                  height: 100,
                  color: Colors.green,
                ),
                xs: 6,
                sm: 3,
                md: 2,
                lg: 1,
                xsLand: 4,
                smLand: 2,
                mdLand: 1,
                lgLand: 1,
              ),
              FlexWidget(
                child: Container(
                  height: 100,
                  color: Colors.deepOrange,
                ),
                xs: 6,
                sm: 3,
                md: 2,
                lg: 1,
                xsLand: 4,
                smLand: 2,
                mdLand: 1,
                lgLand: 1,
              ),
              FlexWidget(
                child: Container(
                  height: 100,
                  color: Colors.amber,
                ),
                xs: 6,
                sm: 3,
                md: 2,
                lg: 1,
                xsLand: 4,
                smLand: 2,
                mdLand: 1,
                lgLand: 1,
              ),
              FlexWidget(
                child: Container(
                  height: 100,
                  color: Colors.grey,
                ),
                xs: 6,
                sm: 3,
                md: 2,
                lg: 1,
                xsLand: 4,
                smLand: 2,
                mdLand: 1,
                lgLand: 1,
              ),
              FlexWidget(
                child: Container(
                  height: 100,
                  color: Colors.black,
                ),
                xs: 6,
                sm: 3,
                md: 2,
                lg: 1,
                xsLand: 4,
                smLand: 2,
                mdLand: 1,
                lgLand: 1,
              ),
              FlexWidget(
                child: Container(
                  height: 100,
                  color: Colors.brown,
                ),
                xs: 6,
                sm: 3,
                md: 2,
                lg: 1,
                xsLand: 4,
                smLand: 2,
                mdLand: 1,
                lgLand: 1,
              ),
              FlexWidget(
                child: Container(
                  height: 100,
                  color: Colors.cyan,
                ),
                xs: 6,
                sm: 3,
                md: 2,
                lg: 1,
                xsLand: 4,
                smLand: 2,
                mdLand: 1,
                lgLand: 1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
