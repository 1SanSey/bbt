import 'package:bbt/features/presentation/bloc/sidebar_visibility_bloc/sidebar_visibility_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SidebarBarrierShell extends StatelessWidget {
  final int duration = 100;

  const SidebarBarrierShell({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BlocBuilder<SidebarVisibilityBloc, SidebarVisibilityState>(
      builder: (context, state) {
        final isProfileVisible = state is ProfileVisibilityState && state.isActive;
        final isContactVisible = state is FavouritesVisibilityState && state.isActive;
        final isBookingContentVisible = state is BookDetailVisibilityState && state.isActive;
        final isTaskRedirectVisible = state is CartVisibilityState && state.isActive;

        return GestureDetector(
          onTap: () {
            context.read<SidebarVisibilityBloc>().add(OpenProfile(false));
            context.read<SidebarVisibilityBloc>().add(OpenFavourites(false));
            context.read<SidebarVisibilityBloc>().add(OpenCart(false));
            context.read<SidebarVisibilityBloc>().add(OpenBookDetail(false));
          },
          child: AnimatedOpacity(
            opacity: isProfileVisible ||
                    isContactVisible ||
                    isBookingContentVisible ||
                    isTaskRedirectVisible
                ? 1
                : 0,
            // ignore: prefer_const_constructors
            duration: Duration(milliseconds: duration),
            child: AnimatedScale(
              scale: isProfileVisible ||
                      isContactVisible ||
                      isBookingContentVisible ||
                      isTaskRedirectVisible
                  ? 1
                  : 0,
              duration: Duration(milliseconds: (duration * 0.05).round()),
              child: Container(
                width: size.width,
                height: size.height,
                color: const Color(0xFF282A2D).withOpacity(0.2),
              ),
            ),
          ),
        );
      },
    );
  }
}
