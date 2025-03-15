import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:bbt/core/app_config.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class InitDatasources {
  InitDatasources._();

  static final instance = InitDatasources._();

  Future<void> initParse() async {
    await Parse().initialize(
      AppConfig.keyApplicationId,
      AppConfig.apiUri,
      clientKey: AppConfig.keyClient,
      autoSendSessionId: true,
    );
  }

  Future<void> initAppMetrica() async {
    await AppMetrica.activate(AppMetricaConfig(AppConfig.appMetricaKey));
  }
}
