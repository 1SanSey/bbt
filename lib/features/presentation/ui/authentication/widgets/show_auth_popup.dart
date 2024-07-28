import 'package:bbt/common/theme/app_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future<void> showAuthPopup(BuildContext context, {required Widget child, required double height}) {
  return showDialog(
    context: context,
    useSafeArea: kIsWeb ? true : false,
    builder: (context) {
      return Align(
        child: SizedBox(
          width: kIsWeb ? 424 : null,
          height: kIsWeb ? height : null,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              shape: BoxShape.rectangle,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                child,
                Positioned(
                  top: 8,
                  left: 8,
                  child: MaterialButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: const CircleBorder(),
                    onPressed: () => Navigator.of(context).pop(),
                    minWidth: 36,
                    padding: const EdgeInsets.all(6),
                    child: const Icon(
                      Icons.close,
                      color: AppColors.greyColor2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
