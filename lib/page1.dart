import 'dart:html';

import 'importar.dart';
import 'package:flutter_map/flutter_map.dart';

class Page1 extends StatefulWidget {
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Coleta seletiva"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Mapa(),
      ),
      bottomNavigationBar: NavigatorBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class NavigatorBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  NavigatorBar({required this.currentIndex, required this.onTap});

  @override
  State<NavigatorBar> createState() => _NavigatorBarState();
}

class _NavigatorBarState extends State<NavigatorBar> {
  @override
  Widget build(BuildContext context) {
    const String iconPath = 'assets/image/icon.png';

    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      onTap: (index) {
        widget.onTap(index);

        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/page1');
            break;
          case 1:
            Navigator.pushNamed(context, '/page2');
            break;
          case 2:
            Navigator.pushNamed(context, '/page3');
            break;
          case 3:
            Navigator.pushNamed(context, '/page4');
            break;
          default:
            break;
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: Image.asset('assets/image/loc.png'),
          label: 'pag1',
          backgroundColor: Color(0xffffffff),
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/image/eventos.png'),
          label: 'pag2',
          backgroundColor: Color(0xffffffff),
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/image/denuncia.png'),
          label: 'pag3',
          backgroundColor: Color(0xffffffff),
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/image/login.png'),
          label: 'pag4',
          backgroundColor: Color(0xffffffff),
        ),
      ],
    );
  }
}
