import 'package:bbt/features/domain/entities/user_entity/user_entity.dart';
import 'package:bbt/features/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrentUserBuilder extends StatelessWidget {
  final Widget Function(UserEntity user) builder;

  const CurrentUserBuilder({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return builder(state.isAuthenticated ? state.user : UserEntity.empty());
      },
    );
  }
}
