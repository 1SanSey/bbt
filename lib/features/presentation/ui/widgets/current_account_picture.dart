import 'package:bbt/features/presentation/ui/widgets/empty_avatar_box.dart';
import 'package:bbt/utils/color_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrentAccountPicture extends StatelessWidget {
  final String photoURL;
  final String userName;
  final double? size;
  final double? borderRadius;
  final bool isDrawer;
  final VoidCallback? onTap;
  const CurrentAccountPicture(
      {super.key,
      required this.photoURL,
      required this.userName,
      this.onTap,
      this.size,
      this.borderRadius = 50,
      required this.isDrawer});

  @override
  Widget build(BuildContext context) {
    final color = ColorService.avatarColor(userName);

    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          if (photoURL.isNotEmpty)
            ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius ?? 50),
              child: Image.network(
                photoURL,
                fit: BoxFit.cover,
                width: 250,
                height: 250,
              ),
            )
          else
            EmptyAvatarBox(
              userName: userName,
              color: color,
              size: kIsWeb ? 250 : size,
              borderRadius: borderRadius ?? 50,
            ),
          Positioned(
            right: 0,
            top: 0,
            child: SizedBox.square(
              dimension: isDrawer ? 24 : 32,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(isDrawer ? borderRadius ?? 50 : 5),
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                ),
                child: Icon(
                  size: isDrawer ? 12 : 16,
                  isDrawer
                      ? Icons.edit
                      : photoURL.isNotEmpty
                          ? Icons.edit
                          : Icons.camera_alt_outlined,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
