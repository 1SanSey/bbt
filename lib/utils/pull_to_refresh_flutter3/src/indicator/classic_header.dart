/*
 *   Author: Jpeng
 *   Email: peng8350@gmail.com
 *   createTime:2018-05-14 17:39
 */

import 'package:bbt/utils/pull_to_refresh_flutter3/src/internals/refresh_indicator.dart';
import 'package:bbt/utils/pull_to_refresh_flutter3/src/smart_refresher.dart';
import 'package:flutter/material.dart' hide RefreshIndicator, RefreshIndicatorState;
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

/// wrap child in outside,mostly use in add background color and padding
typedef OuterBuilder = Widget Function(Widget child);

///the most common indicator,combine with a text and a icon
///
/// See also:
///
/// [ClassicFooter]
class ClassicHeader extends RefreshIndicator {
  /// a builder for re wrap child,If you need to change the boxExtent or background,padding etc.you need outerBuilder to reWrap child
  /// example:
  /// ```dart
  /// outerBuilder:(child){
  ///    return Container(
  ///       color:Colors.red,
  ///       child:child
  ///    );
  /// }
  /// ````
  /// In this example,it will help to add backgroundColor in indicator
  final OuterBuilder? outerBuilder;
  final String? releaseText;
  final String? idleText;
  final String? refreshingText;
  final String? completeText;
  final String? failedText;
  final Widget? canTwoLevelText;
  final Widget? releaseIcon;
  final Widget? idleIcon;
  final Widget? refreshingIcon;
  final Widget? completeIcon;
  final Widget? failedIcon;
  final Widget? canTwoLevelIcon;
  final Widget? twoLevelView;

  /// icon and text middle margin
  final double spacing;
  final IconPosition iconPos;

  final TextStyle textStyle;

  const ClassicHeader({
    Key? key,
    RefreshStyle refreshStyle = RefreshStyle.follow,
    double height = 60.0,
    Duration completeDuration = const Duration(milliseconds: 600),
    this.outerBuilder,
    this.textStyle = const TextStyle(color: Colors.grey),
    this.releaseText,
    this.refreshingText,
    this.canTwoLevelIcon,
    this.twoLevelView,
    this.canTwoLevelText,
    this.completeText,
    this.failedText,
    this.idleText,
    this.iconPos = IconPosition.left,
    this.spacing = 15.0,
    this.refreshingIcon,
    this.failedIcon = const Icon(Icons.error, color: Colors.grey),
    this.completeIcon = const Icon(Icons.done, color: Colors.grey),
    this.idleIcon = const Icon(Icons.arrow_downward, color: Colors.grey),
    this.releaseIcon = const Icon(Icons.refresh, color: Colors.grey),
  }) : super(
          key: key,
          refreshStyle: refreshStyle,
          completeDuration: completeDuration,
          height: height,
        );

  @override
  State createState() {
    return _ClassicHeaderState();
  }
}

class _ClassicHeaderState extends RefreshIndicatorState<ClassicHeader> {
  Widget _buildIcon(mode) {
    final icon = mode == RefreshStatus.canRefresh
        ? widget.releaseIcon
        : mode == RefreshStatus.idle
            ? widget.idleIcon
            : mode == RefreshStatus.completed
                ? widget.completeIcon
                : mode == RefreshStatus.failed
                    ? widget.failedIcon
                    : mode == RefreshStatus.canTwoLevel
                        ? widget.canTwoLevelIcon
                        : mode == RefreshStatus.canTwoLevel
                            ? widget.canTwoLevelIcon
                            : mode == RefreshStatus.refreshing
                                ? widget.refreshingIcon ??
                                    SizedBox(
                                      width: 25,
                                      height: 25,
                                      child: defaultTargetPlatform == TargetPlatform.iOS
                                          ? const CupertinoActivityIndicator()
                                          : const CircularProgressIndicator(strokeWidth: 2),
                                    )
                                : widget.twoLevelView;

    return icon ?? Container();
  }

  @override
  bool needReverseAll() {
    return false;
  }

  @override
  Widget buildContent(BuildContext context, RefreshStatus? mode) {
    final Widget iconWidget = _buildIcon(mode);
    final children = <Widget>[iconWidget];
    final Widget container = Wrap(
      spacing: widget.spacing,
      textDirection: widget.iconPos == IconPosition.left ? TextDirection.ltr : TextDirection.rtl,
      direction: widget.iconPos == IconPosition.bottom || widget.iconPos == IconPosition.top
          ? Axis.vertical
          : Axis.horizontal,
      crossAxisAlignment: WrapCrossAlignment.center,
      verticalDirection:
          widget.iconPos == IconPosition.bottom ? VerticalDirection.up : VerticalDirection.down,
      alignment: WrapAlignment.center,
      children: children,
    );

    return widget.outerBuilder != null
        ? widget.outerBuilder!(container)
        : SizedBox(
            child: Center(child: container),
            height: widget.height,
          );
  }
}

///the most common indicator,combine with a text and a icon
///
// See also:
//
// [ClassicHeader]
class ClassicFooter extends LoadIndicator {
  final String? idleText;
  final String? loadingText;
  final String? noDataText;
  final String? failedText;
  final String? canLoadingText;

  /// a builder for re wrap child,If you need to change the boxExtent or background,padding etc.you need outerBuilder to reWrap child
  /// example:
  /// ```dart
  /// outerBuilder:(child){
  ///    return Container(
  ///       color:Colors.red,
  ///       child:child
  ///    );
  /// }
  /// ````
  /// In this example,it will help to add backgroundColor in indicator
  final OuterBuilder? outerBuilder;

  final Widget? idleIcon;
  final Widget? loadingIcon;
  final Widget? noMoreIcon;
  final Widget? failedIcon;
  final Widget? canLoadingIcon;

  /// icon and text middle margin
  final double spacing;

  final IconPosition iconPos;

  final TextStyle textStyle;

  /// notice that ,this attrs only works for LoadStyle.ShowWhenLoading
  final Duration completeDuration;

  const ClassicFooter({
    Key? key,
    VoidCallback? onClick,
    LoadStyle loadStyle = LoadStyle.showAlways,
    double height = 60.0,
    this.outerBuilder,
    this.textStyle = const TextStyle(color: Colors.grey),
    this.loadingText,
    this.noDataText,
    this.noMoreIcon,
    this.idleText,
    this.failedText,
    this.canLoadingText,
    this.failedIcon = const Icon(Icons.error, color: Colors.grey),
    this.iconPos = IconPosition.left,
    this.spacing = 15.0,
    this.completeDuration = const Duration(milliseconds: 300),
    this.loadingIcon,
    this.canLoadingIcon = const Icon(Icons.autorenew, color: Colors.grey),
    this.idleIcon = const Icon(Icons.arrow_upward, color: Colors.grey),
  }) : super(
          key: key,
          loadStyle: loadStyle,
          height: height,
          onClick: onClick,
        );

  @override
  State<StatefulWidget> createState() {
    return _ClassicFooterState();
  }
}

class _ClassicFooterState extends LoadIndicatorState<ClassicFooter> {
  Widget _buildIcon(LoadStatus? mode) {
    final icon = mode == LoadStatus.loading
        ? widget.loadingIcon ??
            SizedBox(
              width: 25,
              height: 25,
              child: defaultTargetPlatform == TargetPlatform.iOS
                  ? const CupertinoActivityIndicator()
                  : const CircularProgressIndicator(strokeWidth: 2),
            )
        : mode == LoadStatus.noMore
            ? widget.noMoreIcon
            : mode == LoadStatus.failed
                ? widget.failedIcon
                : mode == LoadStatus.canLoading
                    ? widget.canLoadingIcon
                    : widget.idleIcon;

    return icon ?? Container();
  }

  @override
  Future endLoading() {
    return Future.delayed(widget.completeDuration);
  }

  @override
  Widget buildContent(BuildContext context, LoadStatus? mode) {
    final Widget iconWidget = _buildIcon(mode);
    final children = <Widget>[iconWidget];
    final Widget container = Wrap(
      spacing: widget.spacing,
      textDirection: widget.iconPos == IconPosition.left ? TextDirection.ltr : TextDirection.rtl,
      direction: widget.iconPos == IconPosition.bottom || widget.iconPos == IconPosition.top
          ? Axis.vertical
          : Axis.horizontal,
      crossAxisAlignment: WrapCrossAlignment.center,
      verticalDirection:
          widget.iconPos == IconPosition.bottom ? VerticalDirection.up : VerticalDirection.down,
      alignment: WrapAlignment.center,
      children: children,
    );

    return widget.outerBuilder != null
        ? widget.outerBuilder!(container)
        : SizedBox(
            height: widget.height,
            child: Center(
              child: container,
            ),
          );
  }
}

/// direction that icon should place to the text
enum IconPosition { left, right, top, bottom }
