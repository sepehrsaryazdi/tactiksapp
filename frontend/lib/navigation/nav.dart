import 'package:flutter/material.dart';
import 'package:tactiksapp/pages/home/home.dart';
import 'package:tactiksapp/pages/settings/settings.dart';
import 'package:tactiksapp/pages/simulate/simulate.dart';
import 'package:tactiksapp/pages/upload/upload.dart';
import 'package:tactiksapp/navigation/floating_button.dart';
import 'package:tactiksapp/config/icons.dart';
import 'package:tactiksapp/config/colors.dart';


class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}


class _NavState extends State<Nav> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Simulate(),
    const Upload(),
    const Settings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const navigationIcons = [
    ICONS.home,
    ICONS.upload,
    ICONS.settings
  ];

  IconButton _navigationIcon(int index) {
    return IconButton(
        icon: navigationIcons[index],
        color: _selectedIndex == index ? COLORS.original : COLORS.disabled,
        iconSize: _selectedIndex == index ? 24 : 22,
        splashRadius: 0.0001,
        onPressed: () => _onItemTapped(index));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            const Spacer(),
            _navigationIcon(0),
            const Spacer(),
            _navigationIcon(1),
            const Spacer(),
            const Spacer(),
            const Spacer(),
            _navigationIcon(3),
            const Spacer(),
            _navigationIcon(4),
            const Spacer(),
          ],
        ),
      ),
      floatingActionButton: Theme(
          data: ThemeData(
            floatingActionButtonTheme: const FloatingActionButtonThemeData(
              focusColor: Colors.transparent,
            ),
          ),
          child: SizedBox(
              width: _selectedIndex == 2 ? 72 : 70,
              height: _selectedIndex == 2 ? 72 : 70,
              child: FloatingActionButton(
                elevation: 0.0,
                foregroundColor: Colors.transparent,
                materialTapTargetSize: MaterialTapTargetSize.values[0],
                autofocus: true,
                child: Transform.scale(
                  scale: _selectedIndex == 2 ? 1.24 : 1.2,
                  child: ICONS.upload,
                ),
                backgroundColor: COLORS.original,
                splashColor: Colors.transparent,
                hoverColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverElevation: 0,
                highlightElevation: 0,
                focusElevation: 0,
                onPressed: () => _onItemTapped(2),
              ))),
      floatingActionButtonLocation: CustomFloatingButtonLocation(),
      floatingActionButtonAnimator: NoScalingAnimation(),
    );
  }
}
