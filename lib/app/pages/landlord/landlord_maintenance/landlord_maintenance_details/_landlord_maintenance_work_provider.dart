part of 'landlord_maintenance_details_view.dart';

class LandlordMaintenanceWorkNotifier extends ChangeNotifier {
  //-------------------------Form Field Props-------------------------//

  String? selectedLabor;
  late final costController = TextEditingController();
  late final commentController = TextEditingController();
}

final landlordMaintenanceWorkProvider = ChangeNotifierProvider.autoDispose(
  (ref) => LandlordMaintenanceWorkNotifier(),
);
