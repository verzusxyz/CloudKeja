part of 'tenant_home_view.dart';

class TenantHomeViewNotifier extends ChangeNotifier {
  TenantHomeViewNotifier(this._repo);
  final PropertyRepository _repo;

  late final recomemdedProperties = FutureProvider.autoDispose(
    (_) => Future.microtask(() => _repo.getProperties(showRecommended: true)),
  );

  late final allProperties = FutureProvider.autoDispose(
    (_) => Future.microtask(_repo.getProperties),
  );
}

final tenantHomeViewProvider = ChangeNotifierProvider.autoDispose(
  (ref) => TenantHomeViewNotifier(ref.read(propertyRepoProvider)),
);
