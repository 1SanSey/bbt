import 'package:bbt/common/theme/app_colors.dart';
import 'package:bbt/features/presentation/bloc/home_books_bloc/home_books_bloc.dart';
import 'package:bbt/features/presentation/ui/home/widgets/books_list_widget.dart';
import 'package:bbt/features/presentation/ui/home/widgets/carousel_slider_widget.dart';
import 'package:bbt/features/presentation/ui/home/widgets/top_home_widget.dart';
import 'package:bbt/features/presentation/ui/widgets/pull_to_refresh_loader.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:bbt/utils/pull_to_refresh_flutter3/src/smart_refresher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPageWidget extends StatefulWidget {
  const MainPageWidget({super.key});

  @override
  State<MainPageWidget> createState() => _MainPageWidgetState();
}

class _MainPageWidgetState extends State<MainPageWidget> {
  late final RefreshController _refreshController;

  @override
  void initState() {
    _refreshController = RefreshController(initialRefresh: false);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: BlocConsumer<HomeBooksBloc, HomeBooksState>(
        listener: (context, state) => _listenBloc(state),
        builder: (context, state) {
          return PullToRefreshLoader(
            refreshController: _refreshController,
            distance: 30,
            onRefresh: () => context.read<HomeBooksBloc>().add(
                  const HomeLoadBooksEvent(isFirstFetch: true),
                ),
            child: CustomScrollView(slivers: [
              const CarouselSliderWidget(),
              const TopHomeWidget(),
              SliverPadding(
                padding: const EdgeInsets.only(top: 16, bottom: 8, right: 8, left: 8),
                sliver: SliverToBoxAdapter(
                  child: Center(
                    child: Text(
                      S.current.popularBooks,
                      style: const TextStyle(
                        fontFamily: 'Tahoma',
                        color: AppColors.greyColor2,
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              const BooksListWidget(),
            ]),
          );
        },
      ),
    );
  }

  // Функция управляет лоадером pull to refresh.
  Future<void> _listenBloc(HomeBooksState state) async {
    if (state is HomeBooksLoading && _refreshController.isRefresh) {
      await _refreshController.requestLoading();
    } else if (state is HomeBooksLoaded || state is HomeBooksError) {
      _refreshController.refreshCompleted();
    }
  }
}
