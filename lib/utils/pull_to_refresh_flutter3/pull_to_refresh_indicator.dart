import 'package:bbt/utils/pull_to_refresh_flutter3/src/internals/refresh_indicator.dart';
import 'package:bbt/utils/pull_to_refresh_flutter3/src/smart_refresher.dart';
import 'package:flutter/material.dart' hide RefreshIndicator, RefreshIndicatorState;

// How much the scroll's drag gesture can overshoot the RefreshIndicator's
// displacement; max displacement = _kDragSizeFactorLimit * displacement.
const double _kDragSizeFactorLimit = 1.5;

/// Mostly use flutter inner's RefreshIndicator.
class PullToRefreshIndicator extends RefreshIndicator {
  /// See flutter RefreshIndicator documents,the meaning same with that.
  final String? semanticsLabel;

  /// See flutter RefreshIndicator documents,the meaning same with that.
  final String? semanticsValue;

  final Color? color;

  final double distance;

  final Color? backgroundColor;

  const PullToRefreshIndicator({
    Key? key,
    double height = 80.0,
    this.semanticsLabel,
    this.semanticsValue,
    this.color,
    double offset = 0,
    this.distance = 50.0,
    this.backgroundColor,
  }) : super(key: key, refreshStyle: RefreshStyle.front, offset: offset, height: height);

  @override
  State<StatefulWidget> createState() {
    return _MaterialClassicHeaderState();
  }
}

class _MaterialClassicHeaderState extends RefreshIndicatorState<PullToRefreshIndicator>
    with TickerProviderStateMixin {
  late ScrollPosition? _position;
  late Animation<Offset>? _positionFactor;
  Animation<Color?>? _valueColor;
  late AnimationController _scaleFactor;
  late AnimationController _positionController;
  late AnimationController _valueAni;

  @override
  void initState() {
    _valueAni = AnimationController(
      vsync: this,
      value: 0,
      lowerBound: 0,
      upperBound: 1,
      duration: const Duration(milliseconds: 500),
    );
    _valueAni.addListener(() {
      if (mounted && _position!.pixels <= 0) setState(() {});
    });
    _positionController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _scaleFactor = AnimationController(
      vsync: this,
      value: 1,
      lowerBound: 0,
      upperBound: 1,
      duration: const Duration(milliseconds: 300),
    );
    _positionFactor = _positionController.drive(
      Tween<Offset>(begin: const Offset(0, -1), end: Offset(0, widget.height / 44.0)),
    );
    super.initState();
  }

  @override
  void didUpdateWidget(covariant PullToRefreshIndicator oldWidget) {
    _position = Scrollable.of(context).position;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget buildContent(BuildContext context, RefreshStatus? mode) {
    return _buildIndicator(widget.backgroundColor ?? Colors.white);
  }

  Widget _buildIndicator(Color outerColor) {
    return SlideTransition(
      child: ScaleTransition(
        scale: _scaleFactor,
        child: Align(
          alignment: Alignment.topCenter,
          child: RefreshProgressIndicator(
            semanticsLabel:
                widget.semanticsLabel ??
                MaterialLocalizations.of(context).refreshIndicatorSemanticLabel,
            semanticsValue: widget.semanticsValue,
            value: floating ? null : _valueAni.value,
            valueColor: _valueColor,
            backgroundColor: outerColor,
          ),
        ),
      ),
      position: _positionFactor!,
    );
  }

  @override
  void onOffsetChange(double offset) {
    if (!floating) {
      _valueAni.value = offset / configuration!.headerTriggerDistance;
      _positionController.value = offset / configuration!.headerTriggerDistance;
    }
  }

  @override
  void onModeChange(RefreshStatus? mode) {
    if (mode == RefreshStatus.refreshing) {
      _positionController.value = widget.distance / widget.height;
      _scaleFactor.value = 1;
    }
    super.onModeChange(mode);
  }

  @override
  void resetValue() {
    _scaleFactor.value = 1.0;
    _positionController.value = 0.0;
    _valueAni.value = 0.0;
    super.resetValue();
  }

  @override
  void didChangeDependencies() {
    _position = Scrollable.of(context).position;
    _valueColor = _positionController.drive(
      ColorTween(
        begin: (widget.color ?? Theme.of(context).primaryColor).withValues(alpha: 0),
        end: (widget.color ?? Theme.of(context).primaryColor).withValues(alpha: 255 * 1),
      ).chain(CurveTween(curve: const Interval(0, 1.0 / _kDragSizeFactorLimit))),
    );
    super.didChangeDependencies();
  }

  @override
  Future<void> readyToRefresh() {
    return _positionController.animateTo(widget.distance / widget.height);
  }

  @override
  Future<void> endRefresh() {
    return _scaleFactor.animateTo(0);
  }

  @override
  void dispose() {
    _valueAni.dispose();
    _scaleFactor.dispose();
    _positionController.dispose();
    super.dispose();
  }
}
