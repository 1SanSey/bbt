import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'change_theme_bloc.freezed.dart';
part 'change_theme_bloc.g.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const ThemeEvent._();
  const factory ThemeEvent.change() = _Change;
}

@freezed
class ThemeState with _$ThemeState {
  const ThemeState._();
  bool get isDark => map(light: (_) => false, dark: (_) => true);

  const factory ThemeState.light() = _Light;
  const factory ThemeState.dark() = _Dark;

  factory ThemeState.fromJson(Map<String, dynamic> json) => _$ThemeStateFromJson(json);
}

class ChangeThemeBloc extends HydratedBloc<ThemeEvent, ThemeState> {
  ChangeThemeBloc() : super(const _Light()) {
    on<_Change>(
      (event, emit) => emit(
        state.when(
          light: () {
            return const _Dark();
          },
          dark: () {
            return const _Light();
          },
        ),
      ),
    );
  }
  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    final state = ThemeState.fromJson(json);

    return state.map(
      light: (_) => const ThemeState.light(),
      dark: (_) => const ThemeState.dark(),
    );
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) {
    return state.toJson();
  }
}
