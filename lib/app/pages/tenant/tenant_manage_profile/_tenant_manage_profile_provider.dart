part of 'tenant_manage_profile.dart';

class TenantManageProfileNotifier extends ChangeNotifier {
  TenantManageProfileNotifier(
    this.userRepository, {
    required this.formFieldController,
    this.user,
  });
  final TenantProfileFormFieldNotifier formFieldController;
  final UserRepository userRepository;
  final User? user;

  //-------------------------Update Profile-------------------------//
  Future<Either<String?, User?>> handleUpdateProfile() async {
    final _userData = formFieldController.getModUser();
    return await userRepository.updateProfile(_userData);
  }
  //-------------------------Update Profile-------------------------//
}

final tenantManageProfileProvider = ChangeNotifierProvider.autoDispose(
  (ref) {
    final _formFieldController = ref.watch(tenantProfileFormFieldProvider);
    final _dependency = ref.watch(userRepositoryProvider.notifier);
    final _user = ref.watch(userRepositoryProvider).value;
    return TenantManageProfileNotifier(
      _dependency,
      formFieldController: _formFieldController,
      user: _user,
    );
  },
);
