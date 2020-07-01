import 'package:flutter/material.dart';

import 'package:plantsforlife/myobjects/Destination.dart';
import 'package:plantsforlife/pages/RootPage.dart';
import 'package:plantsforlife/pages/ListPage.dart';
import 'package:plantsforlife/pages/TextPage.dart';
import 'package:plantsforlife/observers/ViewNavigatorObserver.dart';

class DestinationView extends StatefulWidget {
  const DestinationView({ Key key, this.destination, this.onNavigation }) : super(key: key);

  final Destination destination;
  final VoidCallback onNavigation;

  @override
  _DestinationViewState createState() => _DestinationViewState();
}

class _DestinationViewState extends State<DestinationView> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      observers: <NavigatorObserver>[
        ViewNavigatorObserver(widget.onNavigation),
      ],
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            switch(settings.name) {
              case '/':
                return RootPage(destination: widget.destination);
              case '/list':
                return ListPage(destination: widget.destination);
              case '/text':
                return TextPage(destination: widget.destination);
            }
            return RootPage(destination: widget.destination);
          },
        );
      },
    );
  }
}