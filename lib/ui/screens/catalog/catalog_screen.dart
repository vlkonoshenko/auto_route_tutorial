import 'package:auto_route/auto_route.dart';
import 'package:auto_route_tutorial/ui/widgets/path_info_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Каталог')),
      body: PathInfoWidget(
        onPressed: () {
          AutoTabsRouter.of(context).setActiveIndex(0);
        },
      ),
    );
  }
}
