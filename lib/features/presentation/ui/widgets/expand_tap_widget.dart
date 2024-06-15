import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

const debugPaintExpandAreaEnabled = false;
final debugPaintExpandAreaColor = const Color(0xFFFF0000).withOpacity(0.4);

// If there is someone who knows how to extend the hitarea above the parent rect, so it is not
// Clipped, please add that here. This would be really helpful.
final debugPaintClipAreaColor = const Color(0xFF0000FF).withOpacity(0.4);

class ExpandTapWidget extends SingleChildRenderObjectWidget {
  const ExpandTapWidget({
    Key? key,
    Widget? child,
    required this.onTap,
    required this.tapPadding,
  }) : super(key: key, child: child);

  final VoidCallback onTap;
  final EdgeInsets tapPadding;

  @override
  RenderObject createRenderObject(BuildContext context) => _ExpandTapRenderBox(
        onTap: onTap,
        tapPadding: tapPadding,
      );
}

class _TmpGestureArenaMember extends GestureArenaMember {
  _TmpGestureArenaMember({
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  void acceptGesture(int key) {
    onTap();
  }

  @override
  void rejectGesture(int key) {}
}

class _ExpandTapRenderBox extends RenderBox with RenderObjectWithChildMixin<RenderBox> {
  _ExpandTapRenderBox({
    required this.onTap,
    this.tapPadding = EdgeInsets.zero,
  });

  final VoidCallback onTap;
  final EdgeInsets tapPadding;

  @override
  void performLayout() {
    child!.layout(constraints, parentUsesSize: true);
    size = child!.size;
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (child != null) {
      final BoxParentData childParentData = child!.parentData! as BoxParentData;
      context.paintChild(child!, childParentData.offset + offset);
    }
    if (debugPaintExpandAreaEnabled) {
      debugPaintExpandArea(context, offset);
    }
  }

  void debugPaintExpandArea(PaintingContext context, Offset offset) {
    final RenderBox parentBox = parent as RenderBox;

    /// [parentPosition]: the offset of current renderbox's parent
    Offset parentPosition = Offset.zero;
    parentPosition = offset - localToGlobal(Offset.zero, ancestor: parentBox);

    /// we directly get this offset using the method [localToGlobal] of parentBox, like the following annotated code
    /// However, this result is inaccurate, you can uncomment to try out.
    // parentPosition = parentBox.localToGlobal(Offset.zero);

    final Size parentSize = parentBox.size;
    final Rect parentRect = Rect.fromLTWH(
      parentPosition.dx,
      parentPosition.dy,
      parentSize.width,
      parentSize.height,
    );
    final BoxParentData childParentData = child!.parentData! as BoxParentData;
    final Offset paintOffset = childParentData.offset + offset - tapPadding.topLeft;
    final Rect paintRect = Rect.fromLTWH(
      paintOffset.dx,
      paintOffset.dy,
      size.width + tapPadding.horizontal,
      size.height + tapPadding.vertical,
    );
    final Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0
      ..color = debugPaintExpandAreaColor;

    final Paint paint2 = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0
      ..color = debugPaintClipAreaColor;
    context.canvas.drawRect(paintRect, paint);
    context.canvas.drawRect(paintRect.intersect(parentRect), paint2);
  }

  @override
  void handleEvent(PointerEvent event, BoxHitTestEntry entry) {
    if (event is PointerDownEvent) {
      final _TmpGestureArenaMember member = _TmpGestureArenaMember(onTap: onTap);
      GestureBinding.instance.gestureArena.add(event.pointer, member);
    } else if (event is PointerUpEvent) {
      GestureBinding.instance.gestureArena.sweep(event.pointer);
    }
  }

  @override
  bool hitTestSelf(Offset position) => true;

  @override
  bool hitTestChildren(BoxHitTestResult result, {Offset? position}) {
    visitChildren((child) {
      if (child is RenderBox) {
        final BoxParentData parentData = child.parentData! as BoxParentData;
        if (child.hitTest(result, position: position! - parentData.offset)) {
          return;
        }
      }
    });

    return false;
  }

  @override
  bool hitTest(BoxHitTestResult result, {Offset? position}) {
    final Rect expandRect = Rect.fromLTWH(
      0 - tapPadding.left,
      0 - tapPadding.top,
      size.width + tapPadding.right + tapPadding.left,
      size.height + tapPadding.top + tapPadding.bottom,
    );
    if (expandRect.contains(position!)) {
      final bool hitTarget = hitTestChildren(result, position: position) || hitTestSelf(position);
      if (hitTarget) {
        result.add(BoxHitTestEntry(this, position));

        return true;
      }
    }

    return false;
  }
}
