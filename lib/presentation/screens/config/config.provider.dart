import 'package:propresenter_api/propresenter_api.dart';
import 'package:propresenter_remote/data/connection/connection.repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'config.provider.g.dart';

@riverpod
class Config extends _$Config {
  @override
  ProApiClient build() {
    return ref.watch(connectionRepositoryProvider).getConnection();
  }

  ProApiClient getConfig() {
    return ref.watch(connectionRepositoryProvider).getConnection();
  }

  Future<void> setConfig(ProSettings settings) async {
    state = ref.watch(connectionRepositoryProvider).setConnection(settings);
  }
}
