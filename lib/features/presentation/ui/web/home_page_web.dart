import 'package:bbt/core/app_constants.dart';
import 'package:bbt/features/domain/entities/book_entity.dart';
import 'package:bbt/features/presentation/ui/web/desktop_menu.dart';
import 'package:bbt/features/presentation/ui/web/widgets/category_content.dart';
import 'package:bbt/features/presentation/ui/web/widgets/sidebar_barrier_shell.dart';
import 'package:bbt/features/presentation/ui/web/widgets/sidebar_web.dart';
import 'package:flutter/material.dart';

class HomePageWeb extends StatefulWidget {
  const HomePageWeb({super.key});

  @override
  State<HomePageWeb> createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
  late String query;
  List<BookEntity> categoryBooks = [];
  late bool error;
  String? errorText;

  @override
  void initState() {
    super.initState();
    error = false;
    query = AppConstants.category[0]!.$3;
  }

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Scaffold(
          body: Row(
            children: [
              DesktopMenu(),
              Expanded(
                child: CategoryContent(),
              ),
            ],
          ),
        ),
        SidebarBarrierShell(),
        SidebarWeb(),
      ],
    );
  }
}
