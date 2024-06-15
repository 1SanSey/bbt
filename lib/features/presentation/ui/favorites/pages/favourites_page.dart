import 'package:bbt/features/domain/entities/favorites_book_entity.dart';
import 'package:bbt/features/presentation/bloc/favourites_bloc/favourites_bloc.dart';
import 'package:bbt/features/presentation/ui/favorites/widgets/favourites_book_card.dart';
import 'package:bbt/features/presentation/ui/widgets/error_text_widget.dart';
import 'package:bbt/generated/l10n.dart';
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
              return ErrorTextWidget(errorMessage: S.current.emptyFavourites);
            }
          }

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomScrollView(slivers: [
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
                          context.read<FavouritesBloc>().add(RemoveFromFavouritesEvent(
                                book: favouritesBooks[index],
                                index: index,
                              ));
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
          );
        },
      ),
    );
  }
}
