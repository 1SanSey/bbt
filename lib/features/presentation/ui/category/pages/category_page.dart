//ignore_for_file: avoid-global-state

import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:bbt/core/app_constants.dart';
import 'package:bbt/features/presentation/bloc/category_bloc/category_bloc.dart';
import 'package:bbt/features/presentation/bloc/navigation_web_cubit.dart';
import 'package:bbt/features/presentation/ui/category/widgets/builder_widget_category.dart';
import 'package:bbt/features/presentation/ui/widgets/pull_to_refresh_loader.dart';
import 'package:bbt/features/presentation/ui/widgets/web_wrapper.dart';
import 'package:bbt/utils/pull_to_refresh_flutter3/src/smart_refresher.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CategoryPage extends StatefulWidget {
  final int idCategory;
  final bool isHomePage;

  const CategoryPage({super.key, this.idCategory = 0, this.isHomePage = false});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  late final RefreshController _refreshController;

  @override
  void initState() {
    context
        .read<CategoryBloc>()
        .add(FetchCategoryBooksEvent(param: AppConstants.category[widget.idCategory]!.$3));
    _refreshController = RefreshController(initialRefresh: false);
    context.read<NavigationWebCubit>().changePage(widget.idCategory);
    if (!kIsWeb) {
      AppMetrica.reportEvent('category ${widget.idCategory}');
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return kIsWeb && width > 900
        ? widget.isHomePage
            ? BuilderCategoryWidget(
                idCategory: widget.idCategory,
                refreshController: _refreshController,
              )
            : WebWrapper(
                child: BuilderCategoryWidget(
                idCategory: widget.idCategory,
                refreshController: _refreshController,
              ))
        : PullToRefreshLoader(
            refreshController: _refreshController,
            distance: 100,
            onRefresh: () => context.read<CategoryBloc>().add(
                  FetchCategoryBooksEvent(
                      param: AppConstants.category[widget.idCategory]!.$3, isFirstFetch: true),
                ),
            child: Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  onPressed: context.pop,
                  // onPressed: () => kIsWeb ? context.goNamed(Routes.homePage) : context.pop(),
                  // NavigationManager.instance.pop(),
                  icon: const Icon(Icons.arrow_back),
                ),
                title: Text(AppConstants.category[widget.idCategory]!.$2),
                centerTitle: true,
              ),
              body: BuilderCategoryWidget(
                idCategory: widget.idCategory,
                refreshController: _refreshController,
              ),
            ),
          );
  }
}
