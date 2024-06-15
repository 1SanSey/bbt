import 'package:bbt/utils/operations_with_name.dart';
import 'package:flutter/material.dart';

class EmptyAvatarBox extends StatelessWidget {
  final String userName;
  final Color color;
  final double borderRadius;
  final double? size;
  final TextStyle? textStyle;

  const EmptyAvatarBox({
    Key? key,
    required this.userName,
    required this.color,
    this.textStyle,
    this.borderRadius = 50,
    this.size = 150,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final initials = userName.isNotEmpty ? OperationsWithName.getInitials(userName) : '';

    return Container(
      height: size != null ? size : null,
      width: size != null ? size : null,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: color,
      ),
      child: Center(
        child: Text(
          initials,
          style: textStyle ??
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black87),
        ),
      ),
    );
  }
}
