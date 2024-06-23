import 'package:bbt/common/theme/app_colors.dart';
import 'package:bbt/features/domain/entities/favorites_book_entity.dart';
import 'package:bbt/features/presentation/bloc/favourites_bloc/favourites_bloc.dart';
import 'package:bbt/features/presentation/bloc/sidebar_visibility_bloc/sidebar_visibility_bloc.dart';
import 'package:bbt/features/presentation/ui/favorites/widgets/favourites_book_card.dart';
import 'package:bbt/features/presentation/ui/widgets/error_text_widget.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  List<FavoritesBookEntity> favouritesBooks = [];

  @override
  void initState() {
    super.initState();
    context.read<FavouritesBloc>().add(ShowFavouritesEvent());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: BlocBuilder<FavouritesBloc, FavouritesState>(
        builder: (context, state) {
          if (state is ShowFavouritesState) {
            favouritesBooks = state.books;

            if (favouritesBooks.isEmpty) {
              return Align(child: ErrorTextWidget(errorMessage: S.current.emptyFavourites));
            }
          }

          return SizedBox(
            width: kIsWeb ? 512 : null,
            height: kIsWeb ? MediaQuery.sizeOf(context).height : null,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kIsWeb ? 16 : 8),
              child: CustomScrollView(slivers: [
                if (kIsWeb)
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    sliver: SliverToBoxAdapter(
                      child: Row(
                        children: [
                          MaterialButton(
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            shape: const CircleBorder(),
                            onPressed: () =>
                                context.read<SidebarVisibilityBloc>().add(OpenFavourites(false)),
                            minWidth: 36,
                            padding: const EdgeInsets.all(6),
                            child: const Icon(
                              Icons.close,
                              color: AppColors.greyColor2,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            S.current.favourites,
                            style: const TextStyle(
                              fontFamily: 'Tahoma',
                              color: AppColors.greyColor2,
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return Dismissible(
                          background: Container(
                            margin: const EdgeInsets.symmetric(vertical: 2),
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Theme.of(context).primaryColor,
                            ),
                            child: const Icon(
                              Icons.delete,
                              color: Colors.white,
                            ),
                          ),
                          key: UniqueKey(),
                          onDismissed: (direction) {
                            context.read<FavouritesBloc>().add(
                                  RemoveFromFavouritesEvent(
                                    book: favouritesBooks[index],
                                    index: index,
                                  ),
                                );
                          },
                          child: FavouritesBookCard(
                            book: favouritesBooks[index],
                            index: index,
                          ),
                        );
                      },
                      childCount: favouritesBooks.length,
                    ),
                  ),
                ),
              ]),
            ),
          );
        },
      ),
    );
  }
}
