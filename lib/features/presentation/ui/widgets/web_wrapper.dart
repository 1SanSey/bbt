import 'package:bbt/features/presentation/ui/web/desktop_menu.dart';
import 'package:bbt/features/presentation/ui/web/widgets/sidebar_barrier_shell.dart';
import 'package:bbt/features/presentation/ui/web/widgets/sidebar_web.dart';
import 'package:flutter/material.dart';

class WebWrapper extends StatelessWidget {
  final Widget child;
  const WebWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Row(
            children: [
              const DesktopMenu(),
              Expanded(child: child),
            ],
          ),
        ),
        const SidebarBarrierShell(),
        const SidebarWeb(),
      ],
    );
  }
}
