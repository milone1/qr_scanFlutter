import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/provider/ui_provider.dart';
import 'package:qr_flutter/screens/direcciones_page.dart';
import 'package:qr_flutter/screens/mapas_pages.dart';
import 'package:qr_flutter/widgets/custom_navigatorbar.dart';
import 'package:qr_flutter/widgets/scan_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Historial'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.delete_forever_rounded))
        ],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: CustonNavigatorBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context).selectedMenuOpt;
    final currentIndex = uiProvider;

    switch (currentIndex) {
      case 0:
        return MapasPage();

      case 1:
        return DireccionesPage();

      default:
        return MapasPage();
    }
  }
}
