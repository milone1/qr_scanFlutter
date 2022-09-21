import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/provider/ui_provider.dart';

class CustonNavigatorBar extends StatelessWidget {
  const CustonNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context).selectedMenuOpt;
    final currentIndex = uiProvider;
    return BottomNavigationBar(
      currentIndex: currentIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem( 
          icon: Icon( Icons.map ),
          label: 'Mapa'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration),
          label: 'Direccion' 
        ),
      ],
    );
  }
}