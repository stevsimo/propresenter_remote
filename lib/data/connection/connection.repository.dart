import 'package:propresenter_api/propresenter_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'connection.repository.g.dart';

@riverpod
ConnectionRepository connectionRepository(ConnectionRepositoryRef ref) {
  return ConnectionRepository(
    client: ProApiClient(
      ProSettings(
        host: '',
        port: 0,
        remotePass: '',
        sdPass: '',
      ),
    ),
  );
}

@riverpod
ProApiClient client(ClientRef ref) {
  return ref.watch(connectionRepositoryProvider).client;
}

class ConnectionRepository {
  ConnectionRepository({required this.client});

  ProApiClient client;

  ProApiClient getConnection() {
    return client;
  }

  ProApiClient setConnection(ProSettings settings) {
    client = ProApiClient(
      settings,
    );
    return client;
  }
}
