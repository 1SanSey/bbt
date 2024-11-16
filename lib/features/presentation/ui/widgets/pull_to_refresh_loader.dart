
import 'package:bbt/utils/haptic_util.dart';
import 'package:bbt/utils/pull_to_refresh_flutter3/pull_to_refresh_indicator.dart';
import 'package:bbt/utils/pull_to_refresh_flutter3/src/smart_refresher.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PullToRefreshLoader extends StatefulWidget {
  final Widget child;
  final Function onRefresh;
  final RefreshController? refreshController;
  final double distance;
  final bool isEnabled;

  const PullToRefreshLoader({
    Key? key,
    required this.child,
    required this.onRefresh,
    this.refreshController,
    this.distance = 50,
    this.isEnabled = true,
  }) : super(key: key);

  @override
  _PullToRefreshLoaderState createState() => _PullToRefreshLoaderState();
}

class _PullToRefreshLoaderState extends State<PullToRefreshLoader> {
  late RefreshController _refreshController;

  @override
  void initState() {
    super.initState();
    _refreshController = widget.refreshController ?? RefreshController();
  }

  Future<void> _onRefresh() async {
    await HapticUtil.lightImpact();

    await widget.onRefresh();

    // If failed,use refreshFailed().
    if (widget.refreshController == null) {
      await Future.delayed(const Duration(milliseconds: 500));
      _refreshController.refreshCompleted();
    }
  }

  Future<void> _onLoading() async {
    await Future<void>.delayed(const Duration(milliseconds: 1500)); 
    if (mounted) {
      setState(() {});
    }
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: widget.isEnabled,
      physics: kIsWeb ? const AlwaysScrollableScrollPhysics() : const BouncingScrollPhysics(),
      header: PullToRefreshIndicator(
        distance: widget.distance,
        color: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      controller: _refreshController,
      onRefresh: _onRefresh,
      onLoading: _onLoading,
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }
}
