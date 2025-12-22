///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsEl implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsEl({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
    TranslationMetadata<AppLocale, Translations>? meta,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta =
           meta ??
           TranslationMetadata(
             locale: AppLocale.el,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <el>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsEl _root = this; // ignore: unused_field

  @override
  TranslationsEl $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsEl(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsCommonEl common = _TranslationsCommonEl._(_root);
  @override
  late final _TranslationsExceptionsEl exceptions = _TranslationsExceptionsEl._(
    _root,
  );
  @override
  late final _TranslationsPromptEl prompt = _TranslationsPromptEl._(_root);
  @override
  late final _TranslationsFormEl form = _TranslationsFormEl._(_root);
  @override
  late final _TranslationsActionEl action = _TranslationsActionEl._(_root);
  @override
  late final _TranslationsPagesEl pages = _TranslationsPagesEl._(_root);
  @override
  late final _TranslationsEnumsEl enums = _TranslationsEnumsEl._(_root);
}

// Path: common
class _TranslationsCommonEl implements TranslationsCommonEn {
  _TranslationsCommonEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get profile => 'Προφίλ';
  @override
  String get language => 'Γλώσσα';
  @override
  String get subscriptionPlan => 'Σχέδιο συνδρομής';
  @override
  String get contactUs => 'Επικοινωνήστε μαζί μας';
  @override
  String get termsAndConditions => 'Όροι & Προϋποθέσεις';
  @override
  String get aboutUs => 'Σχετικά με εμάς';
  @override
  String get logout => 'Αποσύνδεση';
  @override
  String get editProfile => 'Επεξεργασία προφίλ';
  @override
  String get fullName => 'Πλήρες όνομα';
  @override
  String get email => 'Email';
  @override
  String get mobileNumber => 'Αριθμός κινητού τηλεφώνου';
  @override
  String get address => 'Διεύθυνση';
  @override
  String get postalCode => 'Ταχυδρομικός κώδικας';
  @override
  String get city => 'Πόλη';
  @override
  String get country => 'Χώρα';
  @override
  String get state => 'Πολιτεία';
  @override
  String get password => 'Κωδικός πρόσβασης';
  @override
  String get forgotPassword => 'Ξεχάσατε τον κωδικό πρόσβασης';
  @override
  String get tenant => 'Ενοικιαστής';
  @override
  String get landlord => 'Εκμισθωτής';
  @override
  String get cancelRenting => 'Ακύρωση ενοικίασης';
  @override
  String get startDate => 'Ημερομηνία έναρξης';
  @override
  String get endDate => 'Ημερομηνία λήξης';
  @override
  String get fromDate => 'Από ημερομηνία';
  @override
  String get toDate => 'Έως ημερομηνία';
  @override
  String get online => 'Online';
  @override
  String get bankList => 'Λίστα τραπεζών';
  @override
  String get withdrawMethod => 'Μέθοδος ανάληψης';
  @override
  String get uploadPaymentReceipt => 'Ανέβασμα απόδειξης πληρωμής';
  @override
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Σημείωση: '),
      note('Η πληρωμή απαιτεί χειροκίνητη έγκριση από τον διαχειριστή εντός'),
      const TextSpan(text: ' '),
      duraion('24~48 ώρες.'),
    ],
  );
  @override
  String get reviews => 'Κριτικές';
  @override
  String get description => 'Περιγραφή';
  @override
  String get about => 'Σχετικά';
  @override
  String get propertyTypes => 'Τύποι ακινήτων';
  @override
  String get features => 'Χαρακτηριστικά';
  @override
  String get floorPlans => 'Κάτοψη';
  @override
  String get buildingDetails => 'Λεπτομέρειες κτιρίου';
  @override
  String get buildingName => 'Όνομα κτιρίου';
  @override
  String get propertyAddress => 'Διεύθυνση ακινήτου';
  @override
  String get completionYear => 'Έτος ολοκλήρωσης';
  @override
  String get lotNumber => 'Αριθμός οικοπέδου';
  @override
  String get residentialType => 'Τύπος κατοικίας';
  @override
  String get furnishings => 'Επιπλώσεις';
  @override
  String get floorRange => 'Εύρος ορόφων';
  @override
  String get bedrooms => 'Υπνοδωμάτια';
  @override
  String get bathrooms => 'Μπάνια';
  @override
  String get propertySize => 'Μέγεθος ακινήτου';
  @override
  String get rentalPeriod => 'Περίοδος ενοικίασης';
  @override
  String get securityDeposit => 'Εγγύηση';
  @override
  String get utilityBill => 'Λογαριασμός κοινής ωφέλειας';
  @override
  String get facilities => 'Παροχές';
  @override
  String get amenities => 'Ανέσεις';
  @override
  String get expiringReason => 'Λόγος λήξης';
  @override
  String get tenantDetails => 'Στοιχεία ενοικιαστή';
  @override
  String get typeOfTenant => 'Τύπος ενοικιαστή';
  @override
  String get tenantName => 'Όνομα ενοικιαστή';
  @override
  String get nidPassport => 'NID/Διαβατήριο';
  @override
  String get nidPassportId => '${_root.common.nidPassport} ID';
  @override
  String get tenantId => 'Αναγνωριστικό ενοικιαστή';
  @override
  String get dateOfBirth => 'Ημερομηνία γέννησης';
  @override
  String get gender => 'Φύλο';
  @override
  String get nominee => 'Υποψήφιος';
  @override
  String get name => 'Όνομα';
  @override
  String get optional => 'Προαιρετικό';
  @override
  String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
  @override
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  @override
  late final _TranslationsCommonNomineeMobileEl nomineeMobile =
      _TranslationsCommonNomineeMobileEl._(_root);
  @override
  String get emergencyContact => 'Επείγουσα επαφή';
  @override
  String get relation => 'Σχέση';
  @override
  String get relationWith => '${_root.common.relation} Με';
  @override
  String get relationWithYou => '${_root.common.relationWith} Εσάς';
  @override
  String get company => 'Εταιρεία';
  @override
  String get companyName => '${_root.common.company} ${_root.common.name}';
  @override
  String get companySSMNo => '${_root.common.company} Αρ. SSM';
  @override
  String get workplace => 'Χώρος εργασίας';
  @override
  String get officePhoneNo => 'Αριθμός τηλεφώνου γραφείου';
  @override
  String get officeMobileNo => 'Γραφείο ${_root.common.mobileNumber}';
  @override
  String get vehicle => 'Όχημα';
  @override
  late final _TranslationsCommonVehiclesInfoEl vehiclesInfo =
      _TranslationsCommonVehiclesInfoEl._(_root);
  @override
  String get vehiclesType => '${_root.common.vehicle} Τύπος';
  @override
  late final _TranslationsCommonVehicleRegistrationNoEl vehicleRegistrationNo =
      _TranslationsCommonVehicleRegistrationNoEl._(_root);
  @override
  String get vehicleBrand => '${_root.common.vehicle} Μάρκα';
  @override
  String get rentProperty => 'Ενοικίαση ακινήτου';
  @override
  String get propertyDetails => 'Λεπτομέρειες ακινήτου';
  @override
  String get propertyId => 'Αναγνωριστικό ακινήτου';
  @override
  String get propertyType => 'Τύπος ακινήτου';
  @override
  String get propertyName => 'Όνομα ακινήτου';
  @override
  String get paymentDetails => 'Λεπτομέρειες πληρωμής';
  @override
  String get monthlyRent => 'Μηνιαίο ενοίκιο';
  @override
  String get thisMonthPayment => 'Πληρωμή αυτού του μήνα';
  @override
  String get totalPaidRent => 'Συνολικό πληρωμένο ενοίκιο';
  @override
  String get dueRent => 'Οφειλόμενο ενοίκιο';
  @override
  String get rentStartDate => 'Ενοίκιο ${_root.common.startDate}';
  @override
  String get rentEndDate => 'Ενοίκιο ${_root.common.endDate}';
  @override
  String get status => 'Κατάσταση';
  @override
  String get rentAgreementPdf => 'PDF συμφωνίας ενοικίασης';
  @override
  String get noFile => 'Κανένα αρχείο';
  @override
  String get tenantImageOp => 'Εικόνα ενοικιαστή ${_root.common.optional}';
  @override
  String get addNewVechicle => 'Προσθήκη νέων οχημάτων';
  @override
  String get uploadNidPassport => 'Ανέβασμα NID/Διαβατηρίου';
  @override
  String get nidPassportUploadNote =>
      'Θα γίνονται δεκτές μόνο εικόνες τύπου αρχείου. Όριο μεγέθους αρχείου έως 2,5 MB.';
  @override
  String get search => 'Αναζήτηση';
  @override
  String get sortBy => 'Ταξινόμηση κατά';
  @override
  String get subscription => 'Συνδρομή';
  @override
  String get downloading => 'Λήψη...';
  @override
  String get downloadSuccess => 'Το αρχείο λήφθηκε με επιτυχία!';
  @override
  String get addPropertyBannerTitle => 'Ψάχνετε να νοικιάσετε το ακίνητό σας;';
  @override
  String get application => 'Αίτηση';
  @override
  String get tenantHasPaidDeposit =>
      'Ο ενοικιαστής έχει πληρώσει την προκαταβολή.';
  @override
  String get askProcessingRentApplication =>
      'Είστε σίγουροι ότι επεξεργάζεστε αυτό το αίτημα για ενοικίαση ακινήτου;';
  @override
  String get dateAndTime => 'Ημερομηνία & ώρα';
  @override
  String get applicationDetails => 'Λεπτομέρειες αίτησης';
  @override
  String get depositStatus => 'Κατάσταση προκαταβολής';
  @override
  String get uploadRentAgreement => 'Ανέβασμα συμφωνίας ενοικίασης';
  @override
  String get uploadFilePDF => 'Ανέβασμα αρχείου (PDF)';
  @override
  String get askSelectRentAgreement =>
      'Παρακαλώ επιλέξτε ένα αρχείο συμφωνητικού.';
  @override
  String get landlordRentAgreementPDF => 'PDF συμφωνίας ενοικίασης εκμισθωτή';
  @override
  String get tenantRentAgreementPDF => 'PDF συμφωνίας ενοικίασης ενοικιαστή';
  @override
  TextSpan landlordApplicationApproveNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Σημείωση: '),
      note(
        'Εγκρίνετε την αίτηση μόνο αφού ο ενοικιαστής καταβάλει την προκαταβολή.',
      ),
    ],
  );
  @override
  String get reasonOfRejection => 'Λόγος απόρριψης';
  @override
  String get youveRejectedThisApplication => 'Απορρίψατε αυτήν την αίτηση';
  @override
  String get landlordDetails => 'Στοιχεία εκμισθωτή';
  @override
  String get landlordName => 'Όνομα εκμισθωτή';
  @override
  String get downloadRentAgreement => 'Λήψη συμφωνίας ενοικίασης';
  @override
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      const TextSpan(text: 'Αποδοχή '),
      toc('Όρων & Προϋποθέσεων'),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote1({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Σημείωση: '),
      note(
        'Παρακαλώ κατεβάστε και διαβάστε τη συμφωνία. Στείλτε την υπογεγραμμένη συμφωνία στον εκμισθωτή μέσω WhatsApp ή email.',
      ),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote2({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Σημείωση: '),
      note(
        'Ο εκμισθωτής εγκρίνει την αίτηση, όταν ο ενοικιαστής πληρώσει την εγγύηση, τους λογαριασμούς κοινής ωφέλειας και την προκαταβολή ενοικίου ενός μήνα.',
      ),
    ],
  );
  @override
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Συμφωνία ενοικίασης (PDF) '),
          complete('Πλήρης συμφωνία'),
        ],
      );
  @override
  TextSpan tenantApplicationDepositNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Σημείωση: '),
      note(
        'Ο εκμισθωτής εγκρίνει την αίτηση, όταν ο ενοικιαστής πληρώσει την εγγύηση, τους λογαριασμούς κοινής ωφέλειας και την προκαταβολή ενοικίου ενός μήνα.',
      ),
    ],
  );
  @override
  String get whatsapp => 'Whatsapp';
  @override
  String get applicationList => 'Λίστα αιτήσεων';
  @override
  String get viewDetails => 'Προβολή λεπτομερειών';
  @override
  String get searchHint => '${_root.common.search}...';
  @override
  String get home => 'Αρχική σελίδα';
  @override
  String get dashboard => 'Πίνακας ελέγχου';
  @override
  String get tenants => 'Ενοικιαστές';
  @override
  String get maintenance => 'Συντήρηση';
  @override
  String get maintenanceList => 'Λίστα συντήρησης';
  @override
  String get maintenanceReport => 'Αναφορά συντήρησης';
  @override
  String get labor => 'Εργασία';
  @override
  String get applications => 'Αιτήσεις';
  @override
  String get rentInvitation => 'Πρόσκληση ενοικίασης';
  @override
  String get payment => 'Πληρωμή';
  @override
  String get rentPayment => 'Πληρωμή ενοικίου';
  @override
  String get depositUtilityPayment =>
      'Πληρωμή προκαταβολής & λογαριασμών κοινής ωφέλειας';
  @override
  String get refundRequest => 'Αίτημα επιστροφής χρημάτων';
  @override
  String get withdrawRequest => 'Αίτημα ανάληψης';
  @override
  String get myProperty => 'Η ιδιοκτησία μου';
  @override
  String get myRent => 'Το ενοίκιό μου';
  @override
  String get wishlist => 'Λίστα επιθυμιών';
  @override
  String get properties => 'Ακίνητα';
  @override
  String get allProperties => 'Όλα τα ακίνητα';
  @override
  String get totalPropery => 'Συνολική ιδιοκτησία';
  @override
  String get occupied => 'Κατειλημμένο';
  @override
  String get vacant => 'Κενό';
  @override
  String get accounting => 'Λογιστική';
  @override
  String get totalIncome => 'Συνολικό εισόδημα';
  @override
  String get totalExpense => 'Συνολικά έξοδα';
  @override
  String get currentBalance => 'Τρέχον υπόλοιπο';
  @override
  String get totalWithdrawal => 'Συνολική (Ανάληψη)';
  @override
  String get totalProperties => 'Συνολικά ακίνητα';
  @override
  String get totalTenant => 'Συνολικός ενοικιαστής';
  @override
  String get totalRentPaid => 'Συνολικό ενοίκιο που καταβλήθηκε';
  @override
  String get totalRentDue => 'Συνολικό οφειλόμενο ενοίκιο';
  @override
  String get totalApplication => 'Συνολική αίτηση';
  @override
  String get pendingApplication => 'Εκκρεμής αίτηση';
  @override
  String get processingApplication => 'Αίτηση σε επεξεργασία';
  @override
  String get approveApplication => 'Έγκριση αίτησης';
  @override
  String get rejectApplication => 'Απόρριψη αίτησης';
  @override
  String get maintenanceCost => 'Κόστος συντήρησης';
  @override
  String get transactionSummary => 'Σύνοψη συναλλαγών';
  @override
  String get maintenanceRequest => 'Αίτημα συντήρησης';
  @override
  String get notifications => 'Ειδοποιήσεις';
  @override
  String get myProperties => 'Οι ιδιοκτησίες μου';
  @override
  String get recommendationProperties => 'Συνιστώμενα ακίνητα';
  @override
  String get laborList => 'Λίστα εργαζομένων';
  @override
  String get addLabor => 'Προσθήκη εργαζομένου';
  @override
  String get laborDetails => 'Στοιχεία εργαζομένου';
  @override
  String get laborSalary => 'Μισθός εργαζομένου';
  @override
  String get editLabor => 'Επεξεργασία εργαζομένου';
  @override
  String get addNewLabor => 'Προσθήκη νέου εργαζομένου';
  @override
  String get enterAmount => 'Εισαγωγή ποσού';
  @override
  String get maintenanceDetails => 'Λεπτομέρειες συντήρησης';
  @override
  String get laborName => 'Όνομα εργαζομένου';
  @override
  String get comment => 'Σχόλιο';
  @override
  String get image => 'Εικόνα';
  @override
  String get complete => 'Ολοκλήρωση';
  @override
  String get details => 'Λεπτομέρειες';
  @override
  String get title => 'Τίτλος';
  @override
  String get date => 'Ημερομηνία';
  @override
  String get reason => 'Λόγος';
  @override
  String get edit => 'Επεξεργασία';
  @override
  String get property => 'Ακίνητο';
  @override
  String get completeYourProfile => 'Συμπληρώστε το προφίλ σας';
  @override
  String get profileImage => 'Εικόνα προφίλ';
  @override
  String get imagePickHint =>
      'Μόνο εικόνα JPEG & PNG με μέγιστο μέγεθος 120x120 pixels.';
  @override
  String get invoiceId => 'Αναγνωριστικό τιμολογίου';
  @override
  String get depositAmount => 'Ποσό προκαταβολής';
  @override
  String get landlordPhone => 'Τηλέφωνο εκμισθωτή';
  @override
  String get rentalAdvance => 'Ενοίκιο (Προκαταβολή)';
  @override
  String get totalAmount => 'Συνολικό ποσό';
  @override
  String get rentalAmount => 'Ποσό ενοικίου';
  @override
  String get adminCharge => 'Χρέωση διαχειριστή';
  @override
  String get editAccount => 'Επεξεργασία λογαριασμού';
  @override
  String get addNewAccount => 'Προσθήκη νέου λογαριασμού';
  @override
  String get transactionId => 'Αναγνωριστικό συναλλαγής';
  @override
  String get transactionType => 'Τύπος συναλλαγής';
  @override
  String get requestDate => 'Ημερομηνία αίτησης';
  @override
  String get amount => 'Ποσό';
  @override
  String get fee => 'Χρέωση';
  @override
  String get paymentStatus => 'Κατάσταση πληρωμής';
  @override
  String get generatedTime => 'Χρόνος δημιουργίας';
  @override
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(
        text: 'Αυτή είναι μια αναφορά που δημιουργήθηκε από το σύστημα του ',
      ),
      appName,
    ],
  );
  @override
  String get withdrawHistory => 'Ιστορικό ανάληψης';
  @override
  String get history => 'Ιστορικό';
  @override
  String get withdrawAmount => 'Ποσό ανάληψης';
  @override
  String get availableBalance => 'Διαθέσιμο υπόλοιπο';
  @override
  String get withdrawCharge => 'Χρέωση ανάληψης';
  @override
  String get paymentMethod => 'Μέθοδος πληρωμής';
  @override
  String get requestSendSuccess => 'Το αίτημα στάλθηκε με επιτυχία!';
  @override
  String get paymentReceiptSubmitSuccess =>
      'Η απόδειξη πληρωμής υποβλήθηκε με επιτυχία.';
  @override
  String get refundReason => 'Λόγος επιστροφής χρημάτων';
  @override
  String get note => 'Σημείωση';
  @override
  String get refundReceiveSuccess => 'Η επιστροφή χρημάτων ελήφθη με επιτυχία.';
  @override
  String get downloadPaymentReceipt => 'Λήψη απόδειξης πληρωμής';
  @override
  String get invoice => 'Τιμολόγιο';
  @override
  String get selectPropertyToSeeInvoice =>
      'Επιλέξτε ακίνητο για να δείτε τον αριθμό τιμολογίου...';
  @override
  String get bankAccName => 'Όνομα τραπεζικού λογαριασμού';
  @override
  String get bankName => 'Όνομα τράπεζας';
  @override
  String get bankAccNum => 'Αριθμός τραπεζικού λογαριασμού';
  @override
  String get thankYou => 'Ευχαριστώ!';
  @override
  String get basicInfo => 'Βασικές πληροφορίες';
  @override
  String get descriptionPricing => 'Περιγραφή & Τιμολόγηση';
  @override
  String get contact => 'Επικοινωνία';
  @override
  String get photos => 'Φωτογραφίες';
  @override
  String get successfullySubmitted => 'Υποβλήθηκε με επιτυχία!';
  @override
  String get editProperty => 'Επεξεργασία ακινήτου';
  @override
  String get addNewProperty => 'Προσθήκη νέου ακινήτου';
  @override
  String get propertyManageRequestSuccess =>
      'Η αγγελία σας υποβλήθηκε για έλεγχο.';
  @override
  String get postAnotherProperty => 'Δημοσίευση άλλου ακινήτου';
  @override
  String get browseYourProperty => 'Περιήγηση στο ακίνητό σας';
  @override
  TextSpan stepIndicator({
    required InlineSpan step,
    required InlineSpan totalSteps,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Βήμα '),
      step,
      const TextSpan(text: ' από '),
      totalSteps,
    ],
  );
  @override
  String get whatWouldYouLikeToPost => 'Τι θα θέλατε να δημοσιεύσετε;';
  @override
  String get category => 'Κατηγορία';
  @override
  String get invalidCategory => 'Μη έγκυρη κατηγορία';
  @override
  String get unitNumber => 'Αριθμός μονάδας';
  @override
  String get sqft => 'τ.π.';
  @override
  String get propertySizeMustBeGreaterThan0 =>
      'Το μέγεθος του ακινήτου πρέπει να είναι μεγαλύτερο από μηδέν';
  @override
  String get whatAreTheFacility => 'Ποιες είναι οι παροχές;';
  @override
  String get whatAreTheAmenity => 'Ποιες είναι οι ανέσεις;';
  @override
  String get parkingLot => 'Χώρος στάθμευσης';
  @override
  String get houseType => 'Τύπος σπιτιού';
  @override
  String get value => 'Αξία';
  @override
  String get unitLotSize => 'Μέγεθος μονάδας / οικοπέδου';
  @override
  String get landSize => 'Μέγεθος γης';
  @override
  String get acres => 'έκταρ(ες)';
  @override
  String get roomSize => 'Μέγεθος δωματίου';
  @override
  String get askTenantPreference =>
      'Ποιες είναι οι προτιμήσεις σας για τον ενοικιαστή';
  @override
  String get couple => 'Ζευγάρι';
  @override
  String describeTheProperty({required String propertyType}) =>
      'Περιγράψτε το ${propertyType}';
  @override
  String get adTitle => 'Τίτλος αγγελίας';
  @override
  String get minimumRentalPeriod => 'Ελάχιστη περίοδος ενοικίασης';
  @override
  String get whatsappNumber => '${_root.common.whatsapp} Αριθμός';
  @override
  String get hideOrDisplayEmail => 'Απόκρυψη ή εμφάνιση διεύθυνσης email';
  @override
  String thankYouForPostingProperty({required String appName}) =>
      'Σας ευχαριστούμε για την δημοσίευση στο ${appName}!';
  @override
  String get propertyList => 'Λίστα ακινήτων';
  @override
  String get newInviteRent => 'Νέα πρόσκληση ενοικίασης';
  @override
  String get rentAgreement => 'Συμφωνία ενοικίασης';
  @override
  String get rentDetails => 'Λεπτομέρειες ενοικίασης';
  @override
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Σημείωση: '),
      note('Παρακαλώ περιμένετε να αποδεχτεί ο ενοικιαστής την πρόσκληση.'),
    ],
  );
  @override
  String get rent => 'Ενοίκιο';
  @override
  String get editTenant => 'Επεξεργασία ενοικιαστή';
  @override
  String get addNewTenant => 'Προσθήκη νέου ενοικιαστή';
  @override
  String get shareInstallLink => 'Κοινή χρήση συνδέσμου εγκατάστασης';
  @override
  String get tenantList => 'Λίστα ενοικιαστών';
  @override
  String get editMaintenanceRequest => 'Επεξεργασία αιτήματος συντήρησης';
  @override
  String get addNewMaintenance => 'Προσθήκη νέας συντήρησης';
  @override
  String get landlordId => 'Αναγνωριστικό εκμισθωτή';
  @override
  TextSpan tenantAgrementUnderReviewNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Σημείωση: '),
      note(
        'Η συμφωνία σας είναι υπό έλεγχο. Παρακαλώ περιμένετε μέχρι να εγκρίνει ο εκμισθωτής την ενοικίασή σας.',
      ),
    ],
  );
  @override
  String get editReview => 'Επεξεργασία κριτικής';
  @override
  String get writeAReview => 'Γράψτε μια κριτική';
  @override
  String get selectRating => 'Επιλέξτε βαθμολογία';
  @override
  String get enterYourOpinion => 'Εισάγετε τη γνώμη σας';
  @override
  String get askToEnterReviewMsg => 'Παρακαλώ εισάγετε ένα μήνυμα κριτικής';
  @override
  String get pressBackAgainToExit => 'Πατήστε ξανά πίσω για έξοδο.';
  @override
  String get selectPaymentMethod => 'Επιλέξτε μέθοδο πληρωμής';
  @override
  String get filter => 'Φίλτρο';
  @override
  String get perMonth => '/1 μήνα';
  @override
  String searchHintWithAppName({required String appName}) =>
      'Αναζητήστε οτιδήποτε στο ${appName}...';
}

// Path: exceptions
class _TranslationsExceptionsEl implements TranslationsExceptionsEn {
  _TranslationsExceptionsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get somethingWentWrong =>
      'Κάτι πήγε στραβά, παρακαλώ προσπαθήστε ξανά';
  @override
  String get noNidPassport => 'Δεν παρέχεται εικόνα NID/Διαβατηρίου.';
  @override
  String get noRentPropertyFound =>
      'Δεν βρέθηκε ακίνητο ενοικίασης για αυτόν τον ενοικιαστή.';
  @override
  String get noPropertyFoundWithKeyWord =>
      'Δεν βρέθηκε ακίνητο!\nΠαρακαλώ δοκιμάστε με διαφορετικές λέξεις-κλειδιά';
  @override
  String get noSubscriptionFoundRefreshPage =>
      'Δεν βρέθηκε πρόγραμμα συνδρομής!\nΠαρακαλώ ανανεώστε τη σελίδα και δοκιμάστε ξανά.';
  @override
  String invalidApiDataRefreshPage({required String dataType}) =>
      'Μη έγκυρες πληροφορίες ${dataType}! Παρακαλώ ανανεώστε τη σελίδα και δοκιμάστε ξανά.';
  @override
  String get invalidDownloadUrl => 'Μη έγκυρη διεύθυνση URL λήψης!';
  @override
  String failedToSaveFile({required String error}) =>
      'Αποτυχία αποθήκευσης του αρχείου! ${error}';
  @override
  String errorOpeningFile({required String error}) =>
      'Σφάλμα ανοίγματος του αρχείου! ${error}';
  @override
  String get noVehicleInfoProvided => 'Δεν παρέχονται πληροφορίες οχήματος.';
  @override
  String get yourApplicationRejected => 'Η αίτησή σας έχει απορριφθεί';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintEl
  noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintEl._(
    _root,
  );
  @override
  late final _TranslationsExceptionsNoPropertyFoundHintEl noPropertyFoundHint =
      _TranslationsExceptionsNoPropertyFoundHintEl._(_root);
  @override
  String get noImageProvided => 'Δεν παρέχεται εικόνα';
  @override
  late final _TranslationsExceptionsNoStatusMaintenantFoundEl
  noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundEl._(
    _root,
  );
  @override
  String get noDepositFound =>
      'Δεν βρέθηκε εγγύηση!\nΠαρακαλώ μπορείτε να δείτε τις εγγυήσεις όταν είναι διαθέσιμες';
  @override
  String get noRentPaymentFound =>
      'Δεν βρέθηκε πληρωμή ενοικίου!\nΠαρακαλώ μπορείτε να δείτε τις πληρωμές ενοικίου όταν είναι διαθέσιμες';
  @override
  String get transactionSummaryApiException =>
      'Αποτυχία λήψης σύνοψης συναλλαγών.';
  @override
  String get noWithdrawRequestFound =>
      'Δεν βρέθηκε αίτημα!\nΠαρακαλώ δημιουργήστε ένα αίτημα ανάληψης για να το δείτε εδώ.';
  @override
  String get withdrawRequestNotApproved =>
      'Αυτό το αίτημα ανάληψης δεν έχει εγκριθεί!.';
  @override
  String get nonZeroError =>
      'Παρακαλώ εισάγετε ένα έγκυρο ποσό μεγαλύτερο από το μηδέν.';
  @override
  String minAmountError({required String minValue}) =>
      'Το ποσό πρέπει να είναι τουλάχιστον ${minValue}.';
  @override
  String maxAmountError({required String maxValue}) =>
      'Το ποσό δεν πρέπει να υπερβαίνει το ${maxValue}.';
  @override
  String get selectPaymentMethodHint =>
      'Παρακαλώ επιλέξτε πρώτα μια μέθοδο πληρωμής.';
  @override
  late final _TranslationsExceptionsNoStatusRefundReqFoundEl
  noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundEl._(
    _root,
  );
  @override
  late final _TranslationsExceptionsRefundRequestHintEl refundRequestHint =
      _TranslationsExceptionsRefundRequestHintEl._(_root);
  @override
  String oneToTenRequiredField({required String value}) =>
      'Παρακαλώ επιλέξτε τον αριθμό των ${value}';
  @override
  String get invalidDateRange => 'Μη έγκυρη σειρά ημερομηνιών.';
  @override
  String valueMustBeGreaterThanZero({required String value}) =>
      'Το ${value} πρέπει να είναι μεγαλύτερο από το μηδέν.';
  @override
  late final _TranslationsExceptionsEditPropertyEl editProperty =
      _TranslationsExceptionsEditPropertyEl._(_root);
  @override
  late final _TranslationsExceptionsRentInvitationEl rentInvitation =
      _TranslationsExceptionsRentInvitationEl._(_root);
  @override
  String get notenantFoundList =>
      'Κανένας ενοικιαστής!\nΠαρακαλώ προσθέστε έναν ενοικιαστή για να τον δείτε εδώ.';
  @override
  String get noFeaturesProvided => 'Δεν παρέχονται χαρακτηριστικά.';
  @override
  String get noNotificationFound =>
      'Δεν υπάρχει διαθέσιμη ειδοποίηση.\nΜπορείτε να δείτε την ειδοποίησή σας εδώ όταν είναι διαθέσιμη.';
}

// Path: prompt
class _TranslationsPromptEl implements TranslationsPromptEn {
  _TranslationsPromptEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLogoutEl logout = _TranslationsPromptLogoutEl._(
    _root,
  );
  @override
  late final _TranslationsPromptApplicationEl application =
      _TranslationsPromptApplicationEl._(_root);
  @override
  late final _TranslationsPromptLaborEl labor = _TranslationsPromptLaborEl._(
    _root,
  );
  @override
  late final _TranslationsPromptMaintenanceRequestEl maintenanceRequest =
      _TranslationsPromptMaintenanceRequestEl._(_root);
  @override
  late final _TranslationsPromptWithdrawMethodEl withdrawMethod =
      _TranslationsPromptWithdrawMethodEl._(_root);
  @override
  late final _TranslationsPromptUnsavedChangesEl unsavedChanges =
      _TranslationsPromptUnsavedChangesEl._(_root);
  @override
  late final _TranslationsPromptPropertyEl property =
      _TranslationsPromptPropertyEl._(_root);
  @override
  late final _TranslationsPromptRentInvitationEl rentInvitation =
      _TranslationsPromptRentInvitationEl._(_root);
  @override
  late final _TranslationsPromptSessionExpiredEl sessionExpired =
      _TranslationsPromptSessionExpiredEl._(_root);
  @override
  late final _TranslationsPromptNoInternetEl noInternet =
      _TranslationsPromptNoInternetEl._(_root);
  @override
  late final _TranslationsPromptPermissionHandlerEl permissionHandler =
      _TranslationsPromptPermissionHandlerEl._(_root);
  @override
  late final _TranslationsPromptImagePickerEl imagePicker =
      _TranslationsPromptImagePickerEl._(_root);
  @override
  late final _TranslationsPromptVerificationDialogEl verificationDialog =
      _TranslationsPromptVerificationDialogEl._(_root);
  @override
  late final _TranslationsPromptNotificationEl notification =
      _TranslationsPromptNotificationEl._(_root);
}

// Path: form
class _TranslationsFormEl implements TranslationsFormEn {
  _TranslationsFormEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormFullNameEl fullName =
      _TranslationsFormFullNameEl._(_root);
  @override
  late final _TranslationsFormEmailEl email = _TranslationsFormEmailEl._(_root);
  @override
  late final _TranslationsFormPasswordEl password =
      _TranslationsFormPasswordEl._(_root);
  @override
  late final _TranslationsFormConfirmPasswordEl confirmPassword =
      _TranslationsFormConfirmPasswordEl._(_root);
  @override
  late final _TranslationsFormMobileNumberEl mobileNumber =
      _TranslationsFormMobileNumberEl._(_root);
  @override
  late final _TranslationsFormAddress1El address1 =
      _TranslationsFormAddress1El._(_root);
  @override
  late final _TranslationsFormAddress2El address2 =
      _TranslationsFormAddress2El._(_root);
  @override
  late final _TranslationsFormPostalCodeEl postalCode =
      _TranslationsFormPostalCodeEl._(_root);
  @override
  late final _TranslationsFormCityEl city = _TranslationsFormCityEl._(_root);
  @override
  late final _TranslationsFormStateEl state = _TranslationsFormStateEl._(_root);
  @override
  late final _TranslationsFormCountryEl country = _TranslationsFormCountryEl._(
    _root,
  );
  @override
  late final _TranslationsFormOtpEl otp = _TranslationsFormOtpEl._(_root);
  @override
  late final _TranslationsFormTitleEl title = _TranslationsFormTitleEl._(_root);
  @override
  late final _TranslationsFormDateEl date = _TranslationsFormDateEl._(_root);
  @override
  late final _TranslationsFormReasonEl reason = _TranslationsFormReasonEl._(
    _root,
  );
  @override
  late final _TranslationsFormWithdrawMethodEl withdrawMethod =
      _TranslationsFormWithdrawMethodEl._(_root);
  @override
  late final _TranslationsFormFileFieldEl fileField =
      _TranslationsFormFileFieldEl._(_root);
  @override
  late final _TranslationsFormNoteEl note = _TranslationsFormNoteEl._(_root);
  @override
  late final _TranslationsFormGenderEl gender = _TranslationsFormGenderEl._(
    _root,
  );
  @override
  late final _TranslationsFormAnyFieldEl anyField =
      _TranslationsFormAnyFieldEl._(_root);
  @override
  late final _TranslationsFormAnyDropdownEl anyDropdown =
      _TranslationsFormAnyDropdownEl._(_root);
}

// Path: action
class _TranslationsActionEl implements TranslationsActionEn {
  _TranslationsActionEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get next => 'Επόμενο';
  @override
  String get getStarted => 'Ξεκινήστε';
  @override
  String get skip => 'Παράλειψη';
  @override
  String get select => 'Επιλογή';
  @override
  String get save => 'Αποθήκευση';
  @override
  String get signIn => 'Σύνδεση';
  @override
  String get signUp => 'Εγγραφή';
  @override
  String get kContinue => 'Συνέχεια';
  @override
  String get clearAll => 'Εκκαθάριση όλων';
  @override
  String get cancelRenting => _root.common.cancelRenting;
  @override
  String get send => 'Αποστολή';
  @override
  String get pay => 'Πληρωμή';
  @override
  String get remove => 'Αφαίρεση';
  @override
  String get goBack => 'Επιστροφή';
  @override
  String get buyNow => 'Αγορά τώρα';
  @override
  String get no => 'Όχι';
  @override
  String get open => 'Άνοιγμα';
  @override
  String get addProperty => 'Προσθήκη ακινήτου';
  @override
  String get process => 'Επεξεργασία';
  @override
  String get approve => 'Έγκριση';
  @override
  String get reject => 'Απόρριψη';
  @override
  String get viewRent => 'Προβολή ενοικίου';
  @override
  String get openNavigationMenu => 'Άνοιγμα μενού πλοήγησης';
  @override
  String get seeAll => 'Δείτε όλα';
  @override
  String get update => 'Ενημέρωση';
  @override
  String get printTransaction => 'Εκτύπωση συναλλαγής';
  @override
  String get payoutRequest => 'Αίτημα πληρωμής';
  @override
  String get addNew => '+ Προσθήκη νέου';
  @override
  String get sendRequest => 'Αποστολή αιτήματος';
  @override
  String get print => 'Εκτύπωση';
  @override
  String get requestForRefund => 'Αίτημα για επιστροφή χρημάτων';
  @override
  String get previous => 'Προηγούμενο';
  @override
  String get delete => 'Διαγραφή';
  @override
  String get applyProperty => 'Εφαρμογή ακινήτου';
  @override
  String get viewApplication => 'Προβολή αίτησης';
  @override
  String get inviteTenant => 'Πρόσκληση ενοικιαστή';
  @override
  String get inviteRent => 'Πρόσκληση ενοικίασης';
  @override
  String get cancel => 'Ακύρωση';
  @override
  String get accept => 'Αποδοχή';
  @override
  String get submit => 'Υποβολή';
  @override
  String get yes => 'Ναι';
  @override
  String get okay => 'Εντάξει';
  @override
  String get confirm => 'Επιβεβαίωση';
  @override
  String get apply => 'Εφαρμογή';
  @override
  String get reset => 'Επαναφορά';
  @override
  String get retry => 'Επανάληψη';
  @override
  String get viewAll => 'Προβολή όλα';
}

// Path: pages
class _TranslationsPagesEl implements TranslationsPagesEn {
  _TranslationsPagesEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesLanguageEl language =
      _TranslationsPagesLanguageEl._(_root);
  @override
  late final _TranslationsPagesOnboardEl onboard =
      _TranslationsPagesOnboardEl._(_root);
  @override
  late final _TranslationsPagesSignInEl signIn = _TranslationsPagesSignInEl._(
    _root,
  );
  @override
  late final _TranslationsPagesForgotPasswordEl forgotPassword =
      _TranslationsPagesForgotPasswordEl._(_root);
  @override
  late final _TranslationsPagesOtpVerificationEl otpVerification =
      _TranslationsPagesOtpVerificationEl._(_root);
  @override
  late final _TranslationsPagesResetPasswordEl resetPassword =
      _TranslationsPagesResetPasswordEl._(_root);
  @override
  late final _TranslationsPagesSignUpEl signUp = _TranslationsPagesSignUpEl._(
    _root,
  );
  @override
  late final _TranslationsPagesWelcomeEl welcome =
      _TranslationsPagesWelcomeEl._(_root);
  @override
  late final _TranslationsPagesAboutUsEl aboutUs =
      _TranslationsPagesAboutUsEl._(_root);
  @override
  late final _TranslationsPagesTermsAndConditionsEl termsAndConditions =
      _TranslationsPagesTermsAndConditionsEl._(_root);
  @override
  late final _TranslationsPagesNotificationListEl notificationList =
      _TranslationsPagesNotificationListEl._(_root);
  @override
  late final _TranslationsPagesContactUsEl contactUs =
      _TranslationsPagesContactUsEl._(_root);
  @override
  late final _TranslationsPagesCancelRentingEl cancelRenting =
      _TranslationsPagesCancelRentingEl._(_root);
  @override
  late final _TranslationsPagesInvoiceDetailsEl invoiceDetails =
      _TranslationsPagesInvoiceDetailsEl._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentEl offlinePayment =
      _TranslationsPagesOfflinePaymentEl._(_root);
  @override
  late final _TranslationsPagesPaymentStatusEl paymentStatus =
      _TranslationsPagesPaymentStatusEl._(_root);
  @override
  late final _TranslationsPagesPropertyDetailsEl propertyDetails =
      _TranslationsPagesPropertyDetailsEl._(_root);
  @override
  late final _TranslationsPagesSearchEl search = _TranslationsPagesSearchEl._(
    _root,
  );
  @override
  late final _TranslationsPagesSubscriptionPlanEl subscriptionPlan =
      _TranslationsPagesSubscriptionPlanEl._(_root);
  @override
  late final _TranslationsPagesLandlordMaintenanceReportEl
  landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportEl._(
    _root,
  );
}

// Path: enums
class _TranslationsEnumsEl implements TranslationsEnumsEn {
  _TranslationsEnumsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsEnumsPropertyStatusEl propertyStatus =
      _TranslationsEnumsPropertyStatusEl._(_root);
  @override
  late final _TranslationsEnumsPropertyTypeEl propertyType =
      _TranslationsEnumsPropertyTypeEl._(_root);
  @override
  late final _TranslationsEnumsApplicationStatusEl applicationStatus =
      _TranslationsEnumsApplicationStatusEl._(_root);
  @override
  late final _TranslationsEnumsMyRentStatusEl myRentStatus =
      _TranslationsEnumsMyRentStatusEl._(_root);
  @override
  late final _TranslationsEnumsMaintenanceStatusEl maintenanceStatus =
      _TranslationsEnumsMaintenanceStatusEl._(_root);
  @override
  late final _TranslationsEnumsTenantProfileTypeEl tenantProfileType =
      _TranslationsEnumsTenantProfileTypeEl._(_root);
  @override
  late final _TranslationsEnumsTenantTypeEl tenantType =
      _TranslationsEnumsTenantTypeEl._(_root);
  @override
  late final _TranslationsEnumsPaymentStatusEl paymentStatus =
      _TranslationsEnumsPaymentStatusEl._(_root);
  @override
  late final _TranslationsEnumsPaymentOptionsEl paymentOptions =
      _TranslationsEnumsPaymentOptionsEl._(_root);
  @override
  late final _TranslationsEnumsPaymentTypeEl paymentType =
      _TranslationsEnumsPaymentTypeEl._(_root);
  @override
  late final _TranslationsEnumsGenderEl gender = _TranslationsEnumsGenderEl._(
    _root,
  );
  @override
  late final _TranslationsEnumsEcRelationEl ecRelation =
      _TranslationsEnumsEcRelationEl._(_root);
  @override
  late final _TranslationsEnumsVehicleTypeEl vehicleType =
      _TranslationsEnumsVehicleTypeEl._(_root);
  @override
  late final _TranslationsEnumsSortByEl sortBy = _TranslationsEnumsSortByEl._(
    _root,
  );
  @override
  late final _TranslationsEnumsResidentialTypeEl residentialType =
      _TranslationsEnumsResidentialTypeEl._(_root);
  @override
  late final _TranslationsEnumsFloorRangeEl floorRange =
      _TranslationsEnumsFloorRangeEl._(_root);
  @override
  late final _TranslationsEnumsFurnishingsEl furnishings =
      _TranslationsEnumsFurnishingsEl._(_root);
  @override
  late final _TranslationsEnumsCommercialPropertyTypeEl commercialPropertyType =
      _TranslationsEnumsCommercialPropertyTypeEl._(_root);
  @override
  late final _TranslationsEnumsLandPropertyTypeEl landPropertyType =
      _TranslationsEnumsLandPropertyTypeEl._(_root);
  @override
  late final _TranslationsEnumsResidentPropertyTypeEl residentPropertyType =
      _TranslationsEnumsResidentPropertyTypeEl._(_root);
  @override
  late final _TranslationsEnumsMinimumRentalPeriodEl minimumRentalPeriod =
      _TranslationsEnumsMinimumRentalPeriodEl._(_root);
  @override
  late final _TranslationsEnumsDropdownDateFilterEl dropdownDateFilter =
      _TranslationsEnumsDropdownDateFilterEl._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobileEl
    implements TranslationsCommonNomineeMobileEn {
  _TranslationsCommonNomineeMobileEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get short => '${_root.common.nominee} Αρ. Κιν.';
  @override
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoEl
    implements TranslationsCommonVehiclesInfoEn {
  _TranslationsCommonVehiclesInfoEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get plain => 'Πληροφορίες οχημάτων';
  @override
  String get optional => 'Πληροφορίες οχημάτων (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoEl
    implements TranslationsCommonVehicleRegistrationNoEn {
  _TranslationsCommonVehicleRegistrationNoEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get normal => 'Αρ. κυκλοφορίας οχήματος';
  @override
  String get short => 'Αρ. κυκλοφορίας';
  @override
  String get alt => 'Αρ. πινακίδας';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintEl
    implements TranslationsExceptionsNoApplicationFoundHintEn {
  _TranslationsExceptionsNoApplicationFoundHintEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String template({required String subject}) =>
      'Δεν βρέθηκε αίτηση!\n${subject} θα εμφανιστεί εδώ όταν είναι διαθέσιμη.';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSubjectsEl subjects =
      _TranslationsExceptionsNoApplicationFoundHintSubjectsEl._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintEl
    implements TranslationsExceptionsNoPropertyFoundHintEn {
  _TranslationsExceptionsNoPropertyFoundHintEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get landlordHome =>
      'Δεν βρέθηκε ακίνητο!\nΠαρακαλώ προσθέστε ένα ακίνητο για να το δείτε εδώ.';
  @override
  String get tenantRecommended =>
      'Δεν βρέθηκαν προτεινόμενα ακίνητα\nΠαρακαλώ δοκιμάστε ξανά αργότερα.';
  @override
  String get tenantAllProperty =>
      'Τα ακίνητα δεν είναι διαθέσιμα\nΠαρακαλώ δοκιμάστε ξανά αργότερα.';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundEl
    implements TranslationsExceptionsNoStatusMaintenantFoundEn {
  _TranslationsExceptionsNoStatusMaintenantFoundEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Δεν βρέθηκε ${status} συντήρηση.';
  @override
  String get tenant =>
      'Δεν βρέθηκε συντήρηση! Μπορείτε να δημιουργήσετε αίτημα συντήρησης για να το δείτε εδώ.';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundEl
    implements TranslationsExceptionsNoStatusRefundReqFoundEn {
  _TranslationsExceptionsNoStatusRefundReqFoundEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Δεν βρέθηκε αίτημα επιστροφής χρημάτων ${status}!\nΜπορείτε να δείτε το αίτημα επιστροφής χρημάτων εδώ όταν είναι διαθέσιμο.';
  @override
  String get tenant =>
      'Δεν βρέθηκε αίτημα επιστροφής χρημάτων!\nΜπορείτε να δημιουργήσετε αίτημα επιστροφής χρημάτων για να το δείτε εδώ.';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintEl
    implements TranslationsExceptionsRefundRequestHintEn {
  _TranslationsExceptionsRefundRequestHintEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get inTenantList =>
      'Ο ενοικιαστής θα εγκρίνει την επιστροφή χρημάτων όταν λάβει τα χρήματα πίσω';
  @override
  String get tenantReqSuccess =>
      'Θα εξετάσουμε το αίτημα επιστροφής χρημάτων και θα το εγκρίνουμε εντός 24 ωρών.';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertyEl
    implements TranslationsExceptionsEditPropertyEn {
  _TranslationsExceptionsEditPropertyEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get rentalChange =>
      'Η ιδιοκτησία ενοικίασης αλλάζει. Πρέπει να είναι έγκυρη (σε ισχύ) μόνο για την πληρωμή ενοικίου του επόμενου μήνα.';
  @override
  String get deleteOnRent =>
      'Το ακίνητό σας έχει ήδη ενοικιαστεί από τον ενοικιαστή. Δεν μπορείτε να το διαγράψετε μέχρι να αφαιρέσετε πρώτα τον ενοικιαστή';
  @override
  String get alreayRented =>
      'Αυτό το ακίνητο είναι ήδη ενοικιασμένο. Παρακαλώ δοκιμάστε ξανά αργότερα.\nΉ μπορείτε να επικοινωνήσετε με τον εκμισθωτή για περισσότερες πληροφορίες.';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationEl
    implements TranslationsExceptionsRentInvitationEn {
  _TranslationsExceptionsRentInvitationEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get landlordNoRentInvitation =>
      'Δεν βρέθηκε πρόσκληση ενοικίασης!\nΠαρακαλώ δημιουργήστε μια πρόσκληση ενοικίασης για να τη δείτε εδώ.';
  @override
  String get tenantNoRentInvitation =>
      'Δεν βρέθηκε πρόσκληση ενοικίασης!\nΜπορείτε να δείτε την πρόσκληση ενοικίασης εδώ όταν είναι διαθέσιμη.';
}

// Path: prompt.logout
class _TranslationsPromptLogoutEl implements TranslationsPromptLogoutEn {
  _TranslationsPromptLogoutEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get title => _root.common.logout;
  @override
  String get message => 'Είστε σίγουροι ότι θέλετε να αποσυνδεθείτε;';
}

// Path: prompt.application
class _TranslationsPromptApplicationEl
    implements TranslationsPromptApplicationEn {
  _TranslationsPromptApplicationEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Γιατί απορρίπτετε αυτήν την αίτηση;';
  @override
  late final _TranslationsPromptApplicationApplicationSentEl applicationSent =
      _TranslationsPromptApplicationApplicationSentEl._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborEl implements TranslationsPromptLaborEn {
  _TranslationsPromptLaborEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLaborDeleteEl delete =
      _TranslationsPromptLaborDeleteEl._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestEl
    implements TranslationsPromptMaintenanceRequestEn {
  _TranslationsPromptMaintenanceRequestEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Γιατί απορρίπτεται αυτό το αίτημα;';
  @override
  String get processTitle =>
      'Είστε σίγουροι ότι επεξεργάζεστε αυτό το αίτημα συντήρησης;';
  @override
  String get completeTitle => 'Η εργασία ολοκληρώθηκε;';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodEl
    implements TranslationsPromptWithdrawMethodEn {
  _TranslationsPromptWithdrawMethodEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get deleteTitle => 'Διαγραφή μεθόδου ανάληψης;';
  @override
  String get deleteDescription =>
      'Είστε σίγουροι ότι θέλετε να διαγράψετε αυτήν τη μέθοδο ανάληψης;';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesEl
    implements TranslationsPromptUnsavedChangesEn {
  _TranslationsPromptUnsavedChangesEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Είστε σίγουροι ότι θέλετε να επιστρέψετε;';
  @override
  String get message => 'Τα πεδία που έχουν αλλάξει δεν θα αποθηκευτούν!';
}

// Path: prompt.property
class _TranslationsPromptPropertyEl implements TranslationsPromptPropertyEn {
  _TranslationsPromptPropertyEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptPropertyDeleteEl delete =
      _TranslationsPromptPropertyDeleteEl._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationEl
    implements TranslationsPromptRentInvitationEn {
  _TranslationsPromptRentInvitationEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptRentInvitationLandlordApproveEl
  landlordApprove = _TranslationsPromptRentInvitationLandlordApproveEl._(_root);
  @override
  late final _TranslationsPromptRentInvitationTenantAcceptEl tenantAccept =
      _TranslationsPromptRentInvitationTenantAcceptEl._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredEl
    implements TranslationsPromptSessionExpiredEn {
  _TranslationsPromptSessionExpiredEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Η συνεδρία έληξε';
  @override
  String get message => 'Η συνεδρία σας έχει λήξει. Παρακαλώ συνδεθείτε ξανά';
  @override
  String get action => 'Σύνδεση';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetEl
    implements TranslationsPromptNoInternetEn {
  _TranslationsPromptNoInternetEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Δεν υπάρχει σύνδεση στο Διαδίκτυο';
  @override
  String get message =>
      'Παρακαλώ ελέγξτε τη σύνδεση Wi-Fi ή κινητού δικτύου και δοκιμάστε ξανά';
  @override
  String get action => 'Δοκιμάστε ξανά';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerEl
    implements TranslationsPromptPermissionHandlerEn {
  _TranslationsPromptPermissionHandlerEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Απαιτείται άδεια!';
  @override
  String get message =>
      'Πρέπει να παραχωρήσετε δικαιώματα στις ρυθμίσεις της εφαρμογής. Θα θέλατε να ανοίξετε τις ρυθμίσεις τώρα;';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerEl
    implements TranslationsPromptImagePickerEn {
  _TranslationsPromptImagePickerEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Επιλέξτε επιλογή';
  @override
  String get gallery => 'Συλλογή';
  @override
  String get camera => 'Κάμερα';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogEl
    implements TranslationsPromptVerificationDialogEn {
  _TranslationsPromptVerificationDialogEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Επαληθεύστε το email σας';
  @override
  String get message => 'Έχουμε στείλει ένα email με κωδικό επαλήθευσης';
  @override
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message} στο ${email}';
}

// Path: prompt.notification
class _TranslationsPromptNotificationEl
    implements TranslationsPromptNotificationEn {
  _TranslationsPromptNotificationEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get clearTitle => 'Εκκαθάριση ειδοποιήσεων;';
  @override
  String get clearMessage =>
      'Είστε σίγουροι ότι θέλετε να εκκαθαρίσετε όλες τις ειδοποιήσεις;';
}

// Path: form.fullName
class _TranslationsFormFullNameEl implements TranslationsFormFullNameEn {
  _TranslationsFormFullNameEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.fullName;
  @override
  String get hint => 'Εισαγάγετε ${_root.common.fullName}';
  @override
  late final _TranslationsFormFullNameErrorsEl errors =
      _TranslationsFormFullNameErrorsEl._(_root);
}

// Path: form.email
class _TranslationsFormEmailEl implements TranslationsFormEmailEn {
  _TranslationsFormEmailEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.email;
  @override
  String get hint => 'Εισαγάγετε το ${_root.common.email} σας';
  @override
  late final _TranslationsFormEmailErrorsEl errors =
      _TranslationsFormEmailErrorsEl._(_root);
}

// Path: form.password
class _TranslationsFormPasswordEl implements TranslationsFormPasswordEn {
  _TranslationsFormPasswordEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.password;
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormPasswordErrorsEl errors =
      _TranslationsFormPasswordErrorsEl._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordEl
    implements TranslationsFormConfirmPasswordEn {
  _TranslationsFormConfirmPasswordEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Επιβεβαίωση ${_root.common.password}';
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormConfirmPasswordErrorsEl errors =
      _TranslationsFormConfirmPasswordErrorsEl._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberEl
    implements TranslationsFormMobileNumberEn {
  _TranslationsFormMobileNumberEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.mobileNumber;
  @override
  String get hint => '(+60) 555-0123';
  @override
  late final _TranslationsFormMobileNumberErrorsEl errors =
      _TranslationsFormMobileNumberErrorsEl._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1El implements TranslationsFormAddress1En {
  _TranslationsFormAddress1El._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 1';
  @override
  String get hint => 'Αριθμός σπιτιού και όνομα οδού';
  @override
  late final _TranslationsFormAddress1ErrorsEl errors =
      _TranslationsFormAddress1ErrorsEl._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2El implements TranslationsFormAddress2En {
  _TranslationsFormAddress2El._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 2';
  @override
  String get hint => 'Διαμέρισμα, σουίτα, μονάδα, κ.λπ.';
  @override
  late final _TranslationsFormAddress2ErrorsEl errors =
      _TranslationsFormAddress2ErrorsEl._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodeEl implements TranslationsFormPostalCodeEn {
  _TranslationsFormPostalCodeEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.postalCode;
  @override
  String get hint => 'Εισαγάγετε ${_root.common.postalCode}';
  @override
  late final _TranslationsFormPostalCodeErrorsEl errors =
      _TranslationsFormPostalCodeErrorsEl._(_root);
}

// Path: form.city
class _TranslationsFormCityEl implements TranslationsFormCityEn {
  _TranslationsFormCityEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.city;
  @override
  String get hint => 'Εισαγάγετε το όνομα ${_root.common.city}.';
  @override
  late final _TranslationsFormCityErrorsEl errors =
      _TranslationsFormCityErrorsEl._(_root);
}

// Path: form.state
class _TranslationsFormStateEl implements TranslationsFormStateEn {
  _TranslationsFormStateEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.state;
  @override
  String get hint => 'Εισαγάγετε το όνομα ${_root.common.state}.';
  @override
  late final _TranslationsFormStateErrorsEl errors =
      _TranslationsFormStateErrorsEl._(_root);
}

// Path: form.country
class _TranslationsFormCountryEl implements TranslationsFormCountryEn {
  _TranslationsFormCountryEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.country;
  @override
  String get hint => 'Επιλέξτε ${_root.common.country}.';
  @override
  late final _TranslationsFormCountryErrorsEl errors =
      _TranslationsFormCountryErrorsEl._(_root);
}

// Path: form.otp
class _TranslationsFormOtpEl implements TranslationsFormOtpEn {
  _TranslationsFormOtpEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormOtpErrorsEl errors =
      _TranslationsFormOtpErrorsEl._(_root);
}

// Path: form.title
class _TranslationsFormTitleEl implements TranslationsFormTitleEn {
  _TranslationsFormTitleEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Τίτλος';
  @override
  String get hint => 'Εισαγωγή τίτλου';
  @override
  late final _TranslationsFormTitleErrorsEl errors =
      _TranslationsFormTitleErrorsEl._(_root);
}

// Path: form.date
class _TranslationsFormDateEl implements TranslationsFormDateEn {
  _TranslationsFormDateEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Επιλέξτε ${_root.form.date.label(label: label)}';
  @override
  late final _TranslationsFormDateErrorsEl errors =
      _TranslationsFormDateErrorsEl._(_root);
}

// Path: form.reason
class _TranslationsFormReasonEl implements TranslationsFormReasonEn {
  _TranslationsFormReasonEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Λόγος';
  @override
  String get hint => 'Εισαγωγή λόγου';
  @override
  late final _TranslationsFormReasonErrorsEl errors =
      _TranslationsFormReasonErrorsEl._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodEl
    implements TranslationsFormWithdrawMethodEn {
  _TranslationsFormWithdrawMethodEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.withdrawMethod;
  @override
  String get hint => 'Επιλέξτε ${_root.common.withdrawMethod}';
  @override
  late final _TranslationsFormWithdrawMethodErrorsEl errors =
      _TranslationsFormWithdrawMethodErrorsEl._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldEl implements TranslationsFormFileFieldEn {
  _TranslationsFormFileFieldEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) => 'Ανέβασμα ${label}';
  @override
  late final _TranslationsFormFileFieldErrorsEl errors =
      _TranslationsFormFileFieldErrorsEl._(_root);
}

// Path: form.note
class _TranslationsFormNoteEl implements TranslationsFormNoteEn {
  _TranslationsFormNoteEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String label({required String note}) => '${note}';
  @override
  String hint({required String note}) =>
      'Εισαγωγή ${_root.form.note.label(note: note)}';
  @override
  late final _TranslationsFormNoteErrorsEl errors =
      _TranslationsFormNoteErrorsEl._(_root);
}

// Path: form.gender
class _TranslationsFormGenderEl implements TranslationsFormGenderEn {
  _TranslationsFormGenderEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.gender;
  @override
  String get hint => 'Επιλέξτε ${_root.common.gender}';
  @override
  late final _TranslationsFormGenderErrorsEl errors =
      _TranslationsFormGenderErrorsEl._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldEl implements TranslationsFormAnyFieldEn {
  _TranslationsFormAnyFieldEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Εισαγωγή ${_root.form.anyField.label(label: label)}';
  @override
  late final _TranslationsFormAnyFieldErrorsEl errors =
      _TranslationsFormAnyFieldErrorsEl._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownEl implements TranslationsFormAnyDropdownEn {
  _TranslationsFormAnyDropdownEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Επιλέξτε ${_root.form.anyDropdown.label(label: label)}';
  @override
  late final _TranslationsFormAnyDropdownErrorsEl errors =
      _TranslationsFormAnyDropdownErrorsEl._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguageEl implements TranslationsPagesLanguageEn {
  _TranslationsPagesLanguageEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardEl implements TranslationsPagesOnboardEn {
  _TranslationsPagesOnboardEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataEl onboardData =
      _TranslationsPagesOnboardOnboardDataEl._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInEl implements TranslationsPagesSignInEn {
  _TranslationsPagesSignInEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Καλώς ήρθατε πίσω';
  @override
  String get subtitle =>
      'Συνδεθείτε τώρα για να ξεκινήσετε ένα καταπληκτικό ταξίδι.';
  @override
  late final _TranslationsPagesSignInExtraEl extra =
      _TranslationsPagesSignInExtraEl._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordEl
    implements TranslationsPagesForgotPasswordEn {
  _TranslationsPagesForgotPasswordEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ξεχάσατε τον κωδικό πρόσβασης';
  @override
  String get subtitle =>
      'Εισαγάγετε τη διεύθυνση email σας για να ανακτήσετε τον κωδικό πρόσβασης.';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationEl
    implements TranslationsPagesOtpVerificationEn {
  _TranslationsPagesOtpVerificationEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Επαλήθευση';
  @override
  String subtitle({required String email}) =>
      'Ένας 4-ψήφιος κωδικός έχει σταλεί στη διεύθυνση email σας. ${email}';
  @override
  late final _TranslationsPagesOtpVerificationExtraEl extra =
      _TranslationsPagesOtpVerificationExtraEl._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordEl
    implements TranslationsPagesResetPasswordEn {
  _TranslationsPagesResetPasswordEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Επαναφορά κωδικού πρόσβασης';
  @override
  String get subtitle =>
      'Επαναφέρετε τον κωδικό πρόσβασης για ανάκτηση και σύνδεση στον λογαριασμό σας';
  @override
  late final _TranslationsPagesResetPasswordExtraEl extra =
      _TranslationsPagesResetPasswordExtraEl._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpEl implements TranslationsPagesSignUpEn {
  _TranslationsPagesSignUpEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Δημιουργήστε έναν λογαριασμό';
  @override
  String get subtitle =>
      'Εγγραφείτε τώρα για να ξεκινήσετε ένα καταπληκτικό ταξίδι';
  @override
  late final _TranslationsPagesSignUpExtraEl extra =
      _TranslationsPagesSignUpExtraEl._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomeEl implements TranslationsPagesWelcomeEn {
  _TranslationsPagesWelcomeEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ποιος είσαι?';
  @override
  String get subtitle => 'Παρακαλώ επιλέξτε την παρακάτω επιλογή.';
  @override
  late final _TranslationsPagesWelcomeExtraEl extra =
      _TranslationsPagesWelcomeExtraEl._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsEl implements TranslationsPagesAboutUsEn {
  _TranslationsPagesAboutUsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsEl
    implements TranslationsPagesTermsAndConditionsEn {
  _TranslationsPagesTermsAndConditionsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListEl
    implements TranslationsPagesNotificationListEn {
  _TranslationsPagesNotificationListEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Ειδοποιήσεις';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsEl implements TranslationsPagesContactUsEn {
  _TranslationsPagesContactUsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.contactUs;
  @override
  late final _TranslationsPagesContactUsExtraEl extra =
      _TranslationsPagesContactUsExtraEl._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingEl
    implements TranslationsPagesCancelRentingEn {
  _TranslationsPagesCancelRentingEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.cancelRenting;
  @override
  String get title => 'Γιατί ${_root.common.cancelRenting};';
  @override
  late final _TranslationsPagesCancelRentingFormEl form =
      _TranslationsPagesCancelRentingFormEl._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsEl
    implements TranslationsPagesInvoiceDetailsEn {
  _TranslationsPagesInvoiceDetailsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentEl
    implements TranslationsPagesOfflinePaymentEn {
  _TranslationsPagesOfflinePaymentEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Πληρωμή εκτός σύνδεσης';
  @override
  late final _TranslationsPagesOfflinePaymentFormEl form =
      _TranslationsPagesOfflinePaymentFormEl._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentExtraEl extra =
      _TranslationsPagesOfflinePaymentExtraEl._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusEl
    implements TranslationsPagesPaymentStatusEn {
  _TranslationsPagesPaymentStatusEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPaymentStatusSuccessEl success =
      _TranslationsPagesPaymentStatusSuccessEl._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFailEl fail =
      _TranslationsPagesPaymentStatusFailEl._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsEl
    implements TranslationsPagesPropertyDetailsEn {
  _TranslationsPagesPropertyDetailsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPropertyDetailsExtraEl extra =
      _TranslationsPagesPropertyDetailsExtraEl._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchEl implements TranslationsPagesSearchEn {
  _TranslationsPagesSearchEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Αναζήτηση';
  @override
  late final _TranslationsPagesSearchExtraEl extra =
      _TranslationsPagesSearchExtraEl._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanEl
    implements TranslationsPagesSubscriptionPlanEn {
  _TranslationsPagesSubscriptionPlanEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Επιλέξτε το πρόγραμμά σας';
  @override
  late final _TranslationsPagesSubscriptionPlanExtraEl extra =
      _TranslationsPagesSubscriptionPlanExtraEl._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportEl
    implements TranslationsPagesLandlordMaintenanceReportEn {
  _TranslationsPagesLandlordMaintenanceReportEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Συνολικό Κόστος Συντήρησης: '),
      amount,
    ],
  );
  @override
  String get maintenancePending =>
      '${_root.common.maintenance} ${_root.enums.maintenanceStatus.pending}';
  @override
  String get maintenanceProcessing =>
      '${_root.common.maintenance} ${_root.enums.maintenanceStatus.processing}';
  @override
  String get maintenanceCompleted =>
      '${_root.common.maintenance} ${_root.enums.maintenanceStatus.completed}';
  @override
  String get maintenanceRejected =>
      '${_root.common.maintenance} ${_root.enums.maintenanceStatus.rejected}';
}

// Path: enums.propertyStatus
class _TranslationsEnumsPropertyStatusEl
    implements TranslationsEnumsPropertyStatusEn {
  _TranslationsEnumsPropertyStatusEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get allProperty => 'Όλα τα ακίνητα';
  @override
  String get pending => 'Εκκρεμεί';
  @override
  String get active => 'Ενεργό';
  @override
  String get inactive => 'Ανενεργό';
  @override
  String get rejected => 'Απορρίφθηκε';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypeEl
    implements TranslationsEnumsPropertyTypeEn {
  _TranslationsEnumsPropertyTypeEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get apartmentCondominium => 'Διαμέρισμα/Συγκρότημα κατοικιών';
  @override
  String get house => 'Σπίτι';
  @override
  String get commercialProperty => 'Εμπορικό ακίνητο';
  @override
  String get land => 'Γη';
  @override
  String get room => 'Δωμάτιο';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusEl
    implements TranslationsEnumsApplicationStatusEn {
  _TranslationsEnumsApplicationStatusEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Όλα';
  @override
  String get pending => 'Εκκρεμεί';
  @override
  String get processing => 'Σε επεξεργασία';
  @override
  String get approved => 'Εγκρίθηκε';
  @override
  String get rejected => 'Απορρίφθηκε';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusEl
    implements TranslationsEnumsMyRentStatusEn {
  _TranslationsEnumsMyRentStatusEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Εκκρεμεί';
  @override
  String get processing => 'Σε επεξεργασία';
  @override
  String get active => 'Ενεργό';
  @override
  String get expired => 'Έληξε';
  @override
  String get cancelled => 'Ακυρώθηκε';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusEl
    implements TranslationsEnumsMaintenanceStatusEn {
  _TranslationsEnumsMaintenanceStatusEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Εκκρεμεί';
  @override
  String get processing => 'Σε επεξεργασία';
  @override
  String get rejected => 'Απορρίφθηκε';
  @override
  String get completed => 'Ολοκληρώθηκε';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypeEl
    implements TranslationsEnumsTenantProfileTypeEn {
  _TranslationsEnumsTenantProfileTypeEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get privateIndividual => 'Ιδιώτης (Άτομο)';
  @override
  String get company => 'Εταιρεία';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypeEl implements TranslationsEnumsTenantTypeEn {
  _TranslationsEnumsTenantTypeEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get newTenant => 'Νέος ενοικιαστής';
  @override
  String get activeTenant => 'Ενεργός ενοικιαστής';
  @override
  String get expiredTenant => 'Ενοικιαστής που έληξε';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusEl
    implements TranslationsEnumsPaymentStatusEn {
  _TranslationsEnumsPaymentStatusEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Όλα';
  @override
  String get pending => 'Εκκρεμεί';
  @override
  String get paid => 'Πληρωμένο';
  @override
  String get unpaid => 'Απλήρωτο';
  @override
  String get rejected => 'Απορρίφθηκε';
  @override
  String get refund => 'Επιστροφή χρημάτων';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsEl
    implements TranslationsEnumsPaymentOptionsEn {
  _TranslationsEnumsPaymentOptionsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get onlinePayment => 'Online πληρωμή';
  @override
  String get offlinePayment => 'Πληρωμή εκτός σύνδεσης';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypeEl
    implements TranslationsEnumsPaymentTypeEn {
  _TranslationsEnumsPaymentTypeEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get securityDeposit => 'Εγγύηση';
  @override
  String get rentPayment => 'Πληρωμή ενοικίου';
  @override
  String get subscription => 'Συνδρομή';
}

// Path: enums.gender
class _TranslationsEnumsGenderEl implements TranslationsEnumsGenderEn {
  _TranslationsEnumsGenderEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get male => 'Άρρεν';
  @override
  String get female => 'Θήλυ';
  @override
  String get other => 'Άλλο';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationEl implements TranslationsEnumsEcRelationEn {
  _TranslationsEnumsEcRelationEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get wife => 'Σύζυγος';
  @override
  String get parent => 'Γονέας';
  @override
  String get friend => 'Φίλος';
  @override
  String get brother => 'Αδελφός';
  @override
  String get sister => 'Αδελφή';
  @override
  String get child => 'Παιδί';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypeEl
    implements TranslationsEnumsVehicleTypeEn {
  _TranslationsEnumsVehicleTypeEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get car => 'Αυτοκίνητο';
  @override
  String get motorcycles => 'Μοτοσικλέτες';
  @override
  String get lorry => 'Φορτηγό';
}

// Path: enums.sortBy
class _TranslationsEnumsSortByEl implements TranslationsEnumsSortByEn {
  _TranslationsEnumsSortByEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get lowToHigh => 'Από χαμηλό σε υψηλό';
  @override
  String get highToLow => 'Από υψηλό σε χαμηλό';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypeEl
    implements TranslationsEnumsResidentialTypeEn {
  _TranslationsEnumsResidentialTypeEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get flat => 'Διαμέρισμα';
  @override
  String get apartment => 'Διαμέρισμα';
  @override
  String get condominium => 'Συγκρότημα κατοικιών';
  @override
  String get serviceResidence => 'Κατοικία υπηρεσιών';
  @override
  String get studio => 'Στούντιο';
  @override
  String get duplex => 'Διώροφο';
  @override
  String get townhouseCondo => 'Συγκρότημα κατοικιών σε σειρά';
  @override
  String get others => 'Άλλα';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangeEl implements TranslationsEnumsFloorRangeEn {
  _TranslationsEnumsFloorRangeEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get high => 'Υψηλός';
  @override
  String get medium => 'Μεσαίος';
  @override
  String get low => 'Χαμηλός';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsEl
    implements TranslationsEnumsFurnishingsEn {
  _TranslationsEnumsFurnishingsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get fullyFurnished => 'Πλήρως επιπλωμένο';
  @override
  String get partiallyFurnished => 'Μερικώς επιπλωμένο';
  @override
  String get notFurnished => 'Χωρίς έπιπλα';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypeEl
    implements TranslationsEnumsCommercialPropertyTypeEn {
  _TranslationsEnumsCommercialPropertyTypeEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get officeSpace => 'Επαγγελματικός χώρος';
  @override
  String get retailSpace => 'Χώρος λιανικής πώλησης';
  @override
  String get shopLot => 'Κατάστημα';
  @override
  String get warehouseFactory => 'Αποθήκη / Εργοστάσιο';
  @override
  String get hotelResort => 'Ξενοδοχείο / θέρετρο';
  @override
  String get sofo => 'Sofo';
  @override
  String get soho => 'Soho';
  @override
  String get sovo => 'Sovo';
  @override
  String get others => 'Άλλα';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypeEl
    implements TranslationsEnumsLandPropertyTypeEn {
  _TranslationsEnumsLandPropertyTypeEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get residential => 'Οικιστική';
  @override
  String get industrial => 'Βιομηχανική';
  @override
  String get agricultural => 'Αγροτική';
  @override
  String get commercial => 'Εμπορική';
  @override
  String get mixedDevelopment => 'Μικτή ανάπτυξη';
  @override
  String get others => 'Άλλα';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypeEl
    implements TranslationsEnumsResidentPropertyTypeEn {
  _TranslationsEnumsResidentPropertyTypeEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get condo => 'Συγκρότημα κατοικιών / Κατοικία υπηρεσιών / Ρετιρέ';
  @override
  String get apartment => 'Διαμέρισμα / Σοφίτα';
  @override
  String get house => 'Σπίτια';
  @override
  String get shoplot => 'Κατάστημα';
  @override
  String get sharing => 'Μοιράζοντας ένα σπίτι / Διαμέρισμα';
  @override
  String get others => 'Άλλα';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodEl
    implements TranslationsEnumsMinimumRentalPeriodEn {
  _TranslationsEnumsMinimumRentalPeriodEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get sixMonths => '6 μήνες';
  @override
  String get oneYear => '1 έτος';
  @override
  String get oneAndHalfYears => '1,5 χρόνια';
  @override
  String get twoYears => '2 χρόνια';
  @override
  String get twoAndHalfYears => '2,5 χρόνια';
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterEl
    implements TranslationsEnumsDropdownDateFilterEn {
  _TranslationsEnumsDropdownDateFilterEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get daily => 'Ημερήσια';
  @override
  String get weekly => 'Εβδομαδιαία';
  @override
  String get monthly => 'Μηνιαία';
  @override
  String get yearly => 'Ετήσια';
  @override
  String get custom => 'Προσαρμοσμένη';
}

// Path: exceptions.noApplicationFoundHint.subjects
class _TranslationsExceptionsNoApplicationFoundHintSubjectsEl
    implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  _TranslationsExceptionsNoApplicationFoundHintSubjectsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get tenant => 'Η αίτησή σας';
  @override
  String get landlord => 'Η αίτηση του ενοικιαστή';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentEl
    implements TranslationsPromptApplicationApplicationSentEn {
  _TranslationsPromptApplicationApplicationSentEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get successfully => 'Η αίτηση στάλθηκε με επιτυχία!';
  @override
  String get sucessDescription =>
      'Μπορείτε να δείτε αυτήν την αίτηση στη λίστα αιτήσεών σας';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeleteEl
    implements TranslationsPromptLaborDeleteEn {
  _TranslationsPromptLaborDeleteEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Διαγραφή εργαζομένου;';
  @override
  String get description =>
      'Είστε σίγουροι ότι θέλετε να διαγράψετε αυτόν τον εργαζόμενο;';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeleteEl
    implements TranslationsPromptPropertyDeleteEn {
  _TranslationsPromptPropertyDeleteEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Διαγραφή ακινήτου;';
  @override
  String get message =>
      'Είστε σίγουροι ότι θέλετε να διαγράψετε αυτό το ακίνητο;';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApproveEl
    implements TranslationsPromptRentInvitationLandlordApproveEn {
  _TranslationsPromptRentInvitationLandlordApproveEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get title =>
      'Είστε σίγουροι ότι θέλετε να εγκρίνετε αυτήν την ενοικίαση;';
  @override
  String get description =>
      'Βεβαιωθείτε ότι έχετε εξετάσει τη συμφωνία που έχει υπογράψει ο ενοικιαστής.';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptEl
    implements TranslationsPromptRentInvitationTenantAcceptEn {
  _TranslationsPromptRentInvitationTenantAcceptEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get title =>
      'Είστε σίγουροι ότι θέλετε να αποδεχτείτε αυτήν την πρόσκληση;';
  @override
  String get description =>
      'Βεβαιωθείτε ότι έχετε κατεβάσει το αρχείο PDF της συμφωνίας!';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsEl
    implements TranslationsFormFullNameErrorsEn {
  _TranslationsFormFullNameErrorsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Παρακαλώ εισάγετε το ${_root.common.fullName} σας';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsEl implements TranslationsFormEmailErrorsEn {
  _TranslationsFormEmailErrorsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Παρακαλώ εισάγετε τη διεύθυνση ${_root.common.email} σας';
  @override
  String get invalid => '⦸ Μη έγκυρο email, παρακαλώ δοκιμάστε ξανά';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsEl
    implements TranslationsFormPasswordErrorsEn {
  _TranslationsFormPasswordErrorsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Παρακαλώ εισάγετε τον ${_root.common.password} σας';
  @override
  String minLength({required Object count}) =>
      'Ο κωδικός πρόσβασης πρέπει να έχει τουλάχιστον ${count} χαρακτήρες!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsEl
    implements TranslationsFormConfirmPasswordErrorsEn {
  _TranslationsFormConfirmPasswordErrorsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Παρακαλώ εισάγετε τον ${_root.common.password} σας';
  @override
  String get notMatched => 'Η επιβεβαίωση κωδικού πρόσβασης δεν ταιριάζει!';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsEl
    implements TranslationsFormMobileNumberErrorsEn {
  _TranslationsFormMobileNumberErrorsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Παρακαλώ εισάγετε τον ${_root.common.mobileNumber} σας';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsEl
    implements TranslationsFormAddress1ErrorsEn {
  _TranslationsFormAddress1ErrorsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Παρακαλώ εισάγετε το ${_root.form.address1.label} σας';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsEl
    implements TranslationsFormAddress2ErrorsEn {
  _TranslationsFormAddress2ErrorsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Παρακαλώ εισάγετε το ${_root.form.address2.label} σας';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsEl
    implements TranslationsFormPostalCodeErrorsEn {
  _TranslationsFormPostalCodeErrorsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Παρακαλώ εισάγετε το ${_root.common.postalCode} σας';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsEl implements TranslationsFormCityErrorsEn {
  _TranslationsFormCityErrorsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Παρακαλώ εισάγετε το όνομα ${_root.common.city} σας.';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsEl implements TranslationsFormStateErrorsEn {
  _TranslationsFormStateErrorsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Παρακαλώ εισάγετε το όνομα ${_root.common.state} σας.';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsEl
    implements TranslationsFormCountryErrorsEn {
  _TranslationsFormCountryErrorsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Παρακαλώ επιλέξτε το ${_root.common.country} σας';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsEl implements TranslationsFormOtpErrorsEn {
  _TranslationsFormOtpErrorsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Παρακαλώ εισάγετε το otp.';
  @override
  String get invalid => 'Παρακαλώ εισάγετε σωστό otp.';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsEl implements TranslationsFormTitleErrorsEn {
  _TranslationsFormTitleErrorsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Παρακαλώ εισάγετε τίτλο';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsEl implements TranslationsFormDateErrorsEn {
  _TranslationsFormDateErrorsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Παρακαλώ επιλέξτε ${_root.form.date.label(label: label)}';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsEl
    implements TranslationsFormReasonErrorsEn {
  _TranslationsFormReasonErrorsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Παρακαλώ εισάγετε λόγο';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsEl
    implements TranslationsFormWithdrawMethodErrorsEn {
  _TranslationsFormWithdrawMethodErrorsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Παρακαλώ επιλέξτε ${_root.common.withdrawMethod}';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsEl
    implements TranslationsFormFileFieldErrorsEn {
  _TranslationsFormFileFieldErrorsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) => 'Παρακαλώ επιλέξτε ${label}';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsEl implements TranslationsFormNoteErrorsEn {
  _TranslationsFormNoteErrorsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String required({required String note}) =>
      'Παρακαλώ εισάγετε ${_root.form.note.label(note: note)}';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsEl
    implements TranslationsFormGenderErrorsEn {
  _TranslationsFormGenderErrorsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Παρακαλώ επιλέξτε ${_root.common.gender}';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsEl
    implements TranslationsFormAnyFieldErrorsEn {
  _TranslationsFormAnyFieldErrorsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Παρακαλώ εισάγετε ${_root.form.anyField.label(label: label)}';
  @override
  String get invalid => 'Παρακαλώ εισάγετε έγκυρο @form.anyField.label';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsEl
    implements TranslationsFormAnyDropdownErrorsEn {
  _TranslationsFormAnyDropdownErrorsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Παρακαλώ επιλέξτε ${_root.form.anyDropdown.label(label: label)}';
  @override
  String get invalid => 'Παρακαλώ επιλέξτε έγκυρο @form.anyDropdown.label';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataEl
    implements TranslationsPagesOnboardOnboardDataEn {
  _TranslationsPagesOnboardOnboardDataEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataData1El data1 =
      _TranslationsPagesOnboardOnboardDataData1El._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData2El data2 =
      _TranslationsPagesOnboardOnboardDataData2El._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData3El data3 =
      _TranslationsPagesOnboardOnboardDataData3El._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraEl
    implements TranslationsPagesSignInExtraEn {
  _TranslationsPagesSignInExtraEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get rememberMe => 'Να με θυμάσαι';
  @override
  TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(
    children: [
      const TextSpan(text: 'Δεν έχετε λογαριασμό; '),
      getStarted(_root.action.getStarted),
    ],
  );
  @override
  String get forgotPassword => '${_root.common.forgotPassword};';
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraEl
    implements TranslationsPagesOtpVerificationExtraEn {
  _TranslationsPagesOtpVerificationExtraEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOtpVerificationExtraCodeResendEl codeResend =
      _TranslationsPagesOtpVerificationExtraCodeResendEl._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraEl
    implements TranslationsPagesResetPasswordExtraEn {
  _TranslationsPagesResetPasswordExtraEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesResetPasswordExtraDialogEl dialog =
      _TranslationsPagesResetPasswordExtraDialogEl._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraEl
    implements TranslationsPagesSignUpExtraEn {
  _TranslationsPagesSignUpExtraEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(
    children: [
      const TextSpan(text: 'Έχετε λογαριασμό; '),
      signIn(_root.action.signIn),
    ],
  );
}

// Path: pages.welcome.extra
class _TranslationsPagesWelcomeExtraEl
    implements TranslationsPagesWelcomeExtraEn {
  _TranslationsPagesWelcomeExtraEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get landlordTag => 'Διαχειριστείτε τις ιδιοκτησίες σας';
  @override
  String get tenantTag => 'Συνδεθείτε στον λογαριασμό ενοικίασής σας';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraEl
    implements TranslationsPagesContactUsExtraEn {
  _TranslationsPagesContactUsExtraEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get messageHint => 'Μήνυμα...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormEl
    implements TranslationsPagesCancelRentingFormEn {
  _TranslationsPagesCancelRentingFormEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesCancelRentingFormReasonEl reason =
      _TranslationsPagesCancelRentingFormReasonEl._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormEl
    implements TranslationsPagesOfflinePaymentFormEn {
  _TranslationsPagesOfflinePaymentFormEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOfflinePaymentFormPaymentNoteEl paymentNote =
      _TranslationsPagesOfflinePaymentFormPaymentNoteEl._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraEl
    implements TranslationsPagesOfflinePaymentExtraEn {
  _TranslationsPagesOfflinePaymentExtraEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Ποσό πληρωμής: '),
      amount,
    ],
  );
  @override
  String get accountHolderName => 'Όνομα κατόχου λογαριασμού';
  @override
  String get accountNumber => 'Αριθμός λογαριασμού';
  @override
  String get swiftCode => 'Κωδικός Swift';
  @override
  String get branch => 'Υποκατάστημα';
  @override
  TextSpan fileTypeHint({
    required InlineSpanBuilder fileType,
    required InlineSpanBuilder fileSize,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Επιλέξτε αρχεία μορφής '),
      fileType('JPG, PNG,PDF'),
      const TextSpan(text: ' ή μόνο '),
      fileType('DOC'),
      const TextSpan(text: '. Μέγεθος αρχείου '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessEl
    implements TranslationsPagesPaymentStatusSuccessEn {
  _TranslationsPagesPaymentStatusSuccessEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Προβολή τιμολογίου';
  @override
  String get title => _root.common.thankYou;
  @override
  String get description =>
      'Θα εξετάσουμε την πληρωμή και θα την εγκρίνουμε εντός 24 ωρών.';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailEl
    implements TranslationsPagesPaymentStatusFailEn {
  _TranslationsPagesPaymentStatusFailEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Δοκιμάστε ξανά';
  @override
  String get title => 'Oops! Η πληρωμή απέτυχε';
  @override
  String get description =>
      'Η συναλλαγή σας απέτυχε λόγω κάποιου τεχνικού σφάλματος.';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraEl
    implements TranslationsPagesPropertyDetailsExtraEn {
  _TranslationsPagesPropertyDetailsExtraEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  TextSpan landlord({required InlineSpan landlordName}) => TextSpan(
    children: [
      TextSpan(text: '${_root.common.landlord}: '),
      landlordName,
    ],
  );
  @override
  TextSpan ratingReviews({
    required InlineSpan rating,
    required InlineSpanBuilder reviews,
  }) => TextSpan(
    children: [
      rating,
      const TextSpan(text: ' '),
      reviews(_root.common.reviews),
    ],
  );
  @override
  TextSpan features({required InlineSpanBuilder fa}) => TextSpan(
    children: [
      const TextSpan(text: 'Χαρακτηριστικά '),
      fa('(Παροχές & Ανέσεις)'),
    ],
  );
  @override
  String get selectRentalPeriod => 'Επιλέξτε περίοδο ενοικίασης';
  @override
  String get writeAReview => '+ Γράψτε μια κριτική';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraEl
    implements TranslationsPagesSearchExtraEn {
  _TranslationsPagesSearchExtraEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Αναζητήστε οικόπεδα, διαμερίσματα, δωμάτια...';
  @override
  String get noRecentSearch => 'Δεν έχετε πρόσφατες αναζητήσεις.';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraEl
    implements TranslationsPagesSubscriptionPlanExtraEn {
  _TranslationsPagesSubscriptionPlanExtraEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get subscriptionPaymentSuccess =>
      'Η πληρωμή συνδρομής έγινε με επιτυχία.\nΤώρα μπορείτε να έχετε πρόσβαση στις λειτουργίες της συνδρομής.';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1El
    implements TranslationsPagesOnboardOnboardDataData1En {
  _TranslationsPagesOnboardOnboardDataData1El._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Βρείτε το ακίνητό σας';
  @override
  String get description =>
      'Έχουμε κάνει πολύ εύκολο να βρείτε ένα μέρος που να ταιριάζει στη ζωή σας - είτε πρόκειται για ένα δωμάτιο, ένα διαμέρισμα ή ένα σπίτι.';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2El
    implements TranslationsPagesOnboardOnboardDataData2En {
  _TranslationsPagesOnboardOnboardDataData2El._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Διαμέρισμα στην πόλη';
  @override
  String get description =>
      'Σας εξοικονομούμε χρόνο αντιστοιχίζοντάς σας γρήγορα με το τέλειο ακίνητο πριν χαθεί, ώστε να μπορείτε να απολαύσετε το νέο σας σπίτι ή να καταχωρίσετε το δικό σας δωρεάν.';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3El
    implements TranslationsPagesOnboardOnboardDataData3En {
  _TranslationsPagesOnboardOnboardDataData3El._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Το άνετο σπίτι σας';
  @override
  String get description =>
      'Αν ψάχνετε για ένα μέρος για να ζήσετε, τότε ρίξτε μια ματιά στα σπίτια μας προς ενοικίαση. Έχουμε μια μεγάλη γκάμα σπιτιών για να διαλέξετε σε όλη τη χώρα.';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendEl
    implements TranslationsPagesOtpVerificationExtraCodeResendEn {
  _TranslationsPagesOtpVerificationExtraCodeResendEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String codeSendIn({required Object minutes, required Object seconds}) =>
      'Ο κωδικός θα σταλεί σε ${minutes}:${seconds}';
  @override
  TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(
    children: [
      const TextSpan(text: ' '),
      resendCode('Επανάληψη αποστολής κωδικού'),
      const TextSpan(text: ' '),
    ],
  );
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogEl
    implements TranslationsPagesResetPasswordExtraDialogEn {
  _TranslationsPagesResetPasswordExtraDialogEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Αλλαγή με επιτυχία!';
  @override
  String get subtitle =>
      'Συνδεθείτε με τον νέο σας κωδικό πρόσβασης.\nΑνακατεύθυνση στη Σύνδεση...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonEl
    implements TranslationsPagesCancelRentingFormReasonEn {
  _TranslationsPagesCancelRentingFormReasonEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Γράψτε τον λόγο';
  @override
  late final _TranslationsPagesCancelRentingFormReasonErrorsEl errors =
      _TranslationsPagesCancelRentingFormReasonErrorsEl._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNoteEl
    implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  _TranslationsPagesOfflinePaymentFormPaymentNoteEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Σημείωση πληρωμής (${_root.common.optional})';
  @override
  String get hint => 'Εισαγάγετε κάποιο κείμενο...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsEl
    implements TranslationsPagesCancelRentingFormReasonErrorsEn {
  _TranslationsPagesCancelRentingFormReasonErrorsEl._(this._root);

  final TranslationsEl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Παρακαλώ εισάγετε τον λόγο ακύρωσης της ενοικίασης';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsEl {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return 'Προφίλ';
      case 'common.language':
        return 'Γλώσσα';
      case 'common.subscriptionPlan':
        return 'Σχέδιο συνδρομής';
      case 'common.contactUs':
        return 'Επικοινωνήστε μαζί μας';
      case 'common.termsAndConditions':
        return 'Όροι & Προϋποθέσεις';
      case 'common.aboutUs':
        return 'Σχετικά με εμάς';
      case 'common.logout':
        return 'Αποσύνδεση';
      case 'common.editProfile':
        return 'Επεξεργασία προφίλ';
      case 'common.fullName':
        return 'Πλήρες όνομα';
      case 'common.email':
        return 'Email';
      case 'common.mobileNumber':
        return 'Αριθμός κινητού τηλεφώνου';
      case 'common.address':
        return 'Διεύθυνση';
      case 'common.postalCode':
        return 'Ταχυδρομικός κώδικας';
      case 'common.city':
        return 'Πόλη';
      case 'common.country':
        return 'Χώρα';
      case 'common.state':
        return 'Πολιτεία';
      case 'common.password':
        return 'Κωδικός πρόσβασης';
      case 'common.forgotPassword':
        return 'Ξεχάσατε τον κωδικό πρόσβασης';
      case 'common.tenant':
        return 'Ενοικιαστής';
      case 'common.landlord':
        return 'Εκμισθωτής';
      case 'common.cancelRenting':
        return 'Ακύρωση ενοικίασης';
      case 'common.startDate':
        return 'Ημερομηνία έναρξης';
      case 'common.endDate':
        return 'Ημερομηνία λήξης';
      case 'common.fromDate':
        return 'Από ημερομηνία';
      case 'common.toDate':
        return 'Έως ημερομηνία';
      case 'common.online':
        return 'Online';
      case 'common.bankList':
        return 'Λίστα τραπεζών';
      case 'common.withdrawMethod':
        return 'Μέθοδος ανάληψης';
      case 'common.uploadPaymentReceipt':
        return 'Ανέβασμα απόδειξης πληρωμής';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Σημείωση: '),
            note(
              'Η πληρωμή απαιτεί χειροκίνητη έγκριση από τον διαχειριστή εντός',
            ),
            const TextSpan(text: ' '),
            duraion('24~48 ώρες.'),
          ],
        );
      case 'common.reviews':
        return 'Κριτικές';
      case 'common.description':
        return 'Περιγραφή';
      case 'common.about':
        return 'Σχετικά';
      case 'common.propertyTypes':
        return 'Τύποι ακινήτων';
      case 'common.features':
        return 'Χαρακτηριστικά';
      case 'common.floorPlans':
        return 'Κάτοψη';
      case 'common.buildingDetails':
        return 'Λεπτομέρειες κτιρίου';
      case 'common.buildingName':
        return 'Όνομα κτιρίου';
      case 'common.propertyAddress':
        return 'Διεύθυνση ακινήτου';
      case 'common.completionYear':
        return 'Έτος ολοκλήρωσης';
      case 'common.lotNumber':
        return 'Αριθμός οικοπέδου';
      case 'common.residentialType':
        return 'Τύπος κατοικίας';
      case 'common.furnishings':
        return 'Επιπλώσεις';
      case 'common.floorRange':
        return 'Εύρος ορόφων';
      case 'common.bedrooms':
        return 'Υπνοδωμάτια';
      case 'common.bathrooms':
        return 'Μπάνια';
      case 'common.propertySize':
        return 'Μέγεθος ακινήτου';
      case 'common.rentalPeriod':
        return 'Περίοδος ενοικίασης';
      case 'common.securityDeposit':
        return 'Εγγύηση';
      case 'common.utilityBill':
        return 'Λογαριασμός κοινής ωφέλειας';
      case 'common.facilities':
        return 'Παροχές';
      case 'common.amenities':
        return 'Ανέσεις';
      case 'common.expiringReason':
        return 'Λόγος λήξης';
      case 'common.tenantDetails':
        return 'Στοιχεία ενοικιαστή';
      case 'common.typeOfTenant':
        return 'Τύπος ενοικιαστή';
      case 'common.tenantName':
        return 'Όνομα ενοικιαστή';
      case 'common.nidPassport':
        return 'NID/Διαβατήριο';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} ID';
      case 'common.tenantId':
        return 'Αναγνωριστικό ενοικιαστή';
      case 'common.dateOfBirth':
        return 'Ημερομηνία γέννησης';
      case 'common.gender':
        return 'Φύλο';
      case 'common.nominee':
        return 'Υποψήφιος';
      case 'common.name':
        return 'Όνομα';
      case 'common.optional':
        return 'Προαιρετικό';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.name}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} Αρ. Κιν.';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return 'Επείγουσα επαφή';
      case 'common.relation':
        return 'Σχέση';
      case 'common.relationWith':
        return '${_root.common.relation} Με';
      case 'common.relationWithYou':
        return '${_root.common.relationWith} Εσάς';
      case 'common.company':
        return 'Εταιρεία';
      case 'common.companyName':
        return '${_root.common.company} ${_root.common.name}';
      case 'common.companySSMNo':
        return '${_root.common.company} Αρ. SSM';
      case 'common.workplace':
        return 'Χώρος εργασίας';
      case 'common.officePhoneNo':
        return 'Αριθμός τηλεφώνου γραφείου';
      case 'common.officeMobileNo':
        return 'Γραφείο ${_root.common.mobileNumber}';
      case 'common.vehicle':
        return 'Όχημα';
      case 'common.vehiclesInfo.plain':
        return 'Πληροφορίες οχημάτων';
      case 'common.vehiclesInfo.optional':
        return 'Πληροφορίες οχημάτων (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} Τύπος';
      case 'common.vehicleRegistrationNo.normal':
        return 'Αρ. κυκλοφορίας οχήματος';
      case 'common.vehicleRegistrationNo.short':
        return 'Αρ. κυκλοφορίας';
      case 'common.vehicleRegistrationNo.alt':
        return 'Αρ. πινακίδας';
      case 'common.vehicleBrand':
        return '${_root.common.vehicle} Μάρκα';
      case 'common.rentProperty':
        return 'Ενοικίαση ακινήτου';
      case 'common.propertyDetails':
        return 'Λεπτομέρειες ακινήτου';
      case 'common.propertyId':
        return 'Αναγνωριστικό ακινήτου';
      case 'common.propertyType':
        return 'Τύπος ακινήτου';
      case 'common.propertyName':
        return 'Όνομα ακινήτου';
      case 'common.paymentDetails':
        return 'Λεπτομέρειες πληρωμής';
      case 'common.monthlyRent':
        return 'Μηνιαίο ενοίκιο';
      case 'common.thisMonthPayment':
        return 'Πληρωμή αυτού του μήνα';
      case 'common.totalPaidRent':
        return 'Συνολικό πληρωμένο ενοίκιο';
      case 'common.dueRent':
        return 'Οφειλόμενο ενοίκιο';
      case 'common.rentStartDate':
        return 'Ενοίκιο ${_root.common.startDate}';
      case 'common.rentEndDate':
        return 'Ενοίκιο ${_root.common.endDate}';
      case 'common.status':
        return 'Κατάσταση';
      case 'common.rentAgreementPdf':
        return 'PDF συμφωνίας ενοικίασης';
      case 'common.noFile':
        return 'Κανένα αρχείο';
      case 'common.tenantImageOp':
        return 'Εικόνα ενοικιαστή ${_root.common.optional}';
      case 'common.addNewVechicle':
        return 'Προσθήκη νέων οχημάτων';
      case 'common.uploadNidPassport':
        return 'Ανέβασμα NID/Διαβατηρίου';
      case 'common.nidPassportUploadNote':
        return 'Θα γίνονται δεκτές μόνο εικόνες τύπου αρχείου. Όριο μεγέθους αρχείου έως 2,5 MB.';
      case 'common.search':
        return 'Αναζήτηση';
      case 'common.sortBy':
        return 'Ταξινόμηση κατά';
      case 'common.subscription':
        return 'Συνδρομή';
      case 'common.downloading':
        return 'Λήψη...';
      case 'common.downloadSuccess':
        return 'Το αρχείο λήφθηκε με επιτυχία!';
      case 'common.addPropertyBannerTitle':
        return 'Ψάχνετε να νοικιάσετε το ακίνητό σας;';
      case 'common.application':
        return 'Αίτηση';
      case 'common.tenantHasPaidDeposit':
        return 'Ο ενοικιαστής έχει πληρώσει την προκαταβολή.';
      case 'common.askProcessingRentApplication':
        return 'Είστε σίγουροι ότι επεξεργάζεστε αυτό το αίτημα για ενοικίαση ακινήτου;';
      case 'common.dateAndTime':
        return 'Ημερομηνία & ώρα';
      case 'common.applicationDetails':
        return 'Λεπτομέρειες αίτησης';
      case 'common.depositStatus':
        return 'Κατάσταση προκαταβολής';
      case 'common.uploadRentAgreement':
        return 'Ανέβασμα συμφωνίας ενοικίασης';
      case 'common.uploadFilePDF':
        return 'Ανέβασμα αρχείου (PDF)';
      case 'common.askSelectRentAgreement':
        return 'Παρακαλώ επιλέξτε ένα αρχείο συμφωνητικού.';
      case 'common.landlordRentAgreementPDF':
        return 'PDF συμφωνίας ενοικίασης εκμισθωτή';
      case 'common.tenantRentAgreementPDF':
        return 'PDF συμφωνίας ενοικίασης ενοικιαστή';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Σημείωση: '),
            note(
              'Εγκρίνετε την αίτηση μόνο αφού ο ενοικιαστής καταβάλει την προκαταβολή.',
            ),
          ],
        );
      case 'common.reasonOfRejection':
        return 'Λόγος απόρριψης';
      case 'common.youveRejectedThisApplication':
        return 'Απορρίψατε αυτήν την αίτηση';
      case 'common.landlordDetails':
        return 'Στοιχεία εκμισθωτή';
      case 'common.landlordName':
        return 'Όνομα εκμισθωτή';
      case 'common.downloadRentAgreement':
        return 'Λήψη συμφωνίας ενοικίασης';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            const TextSpan(text: 'Αποδοχή '),
            toc('Όρων & Προϋποθέσεων'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Σημείωση: '),
            note(
              'Παρακαλώ κατεβάστε και διαβάστε τη συμφωνία. Στείλτε την υπογεγραμμένη συμφωνία στον εκμισθωτή μέσω WhatsApp ή email.',
            ),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Σημείωση: '),
            note(
              'Ο εκμισθωτής εγκρίνει την αίτηση, όταν ο ενοικιαστής πληρώσει την εγγύηση, τους λογαριασμούς κοινής ωφέλειας και την προκαταβολή ενοικίου ενός μήνα.',
            ),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: 'Συμφωνία ενοικίασης (PDF) '),
            complete('Πλήρης συμφωνία'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Σημείωση: '),
            note(
              'Ο εκμισθωτής εγκρίνει την αίτηση, όταν ο ενοικιαστής πληρώσει την εγγύηση, τους λογαριασμούς κοινής ωφέλειας και την προκαταβολή ενοικίου ενός μήνα.',
            ),
          ],
        );
      case 'common.whatsapp':
        return 'Whatsapp';
      case 'common.applicationList':
        return 'Λίστα αιτήσεων';
      case 'common.viewDetails':
        return 'Προβολή λεπτομερειών';
      case 'common.searchHint':
        return '${_root.common.search}...';
      case 'common.home':
        return 'Αρχική σελίδα';
      case 'common.dashboard':
        return 'Πίνακας ελέγχου';
      case 'common.tenants':
        return 'Ενοικιαστές';
      case 'common.maintenance':
        return 'Συντήρηση';
      case 'common.maintenanceList':
        return 'Λίστα συντήρησης';
      case 'common.maintenanceReport':
        return 'Αναφορά συντήρησης';
      case 'common.labor':
        return 'Εργασία';
      case 'common.applications':
        return 'Αιτήσεις';
      case 'common.rentInvitation':
        return 'Πρόσκληση ενοικίασης';
      case 'common.payment':
        return 'Πληρωμή';
      case 'common.rentPayment':
        return 'Πληρωμή ενοικίου';
      case 'common.depositUtilityPayment':
        return 'Πληρωμή προκαταβολής & λογαριασμών κοινής ωφέλειας';
      case 'common.refundRequest':
        return 'Αίτημα επιστροφής χρημάτων';
      case 'common.withdrawRequest':
        return 'Αίτημα ανάληψης';
      case 'common.myProperty':
        return 'Η ιδιοκτησία μου';
      case 'common.myRent':
        return 'Το ενοίκιό μου';
      case 'common.wishlist':
        return 'Λίστα επιθυμιών';
      case 'common.properties':
        return 'Ακίνητα';
      case 'common.allProperties':
        return 'Όλα τα ακίνητα';
      case 'common.totalPropery':
        return 'Συνολική ιδιοκτησία';
      case 'common.occupied':
        return 'Κατειλημμένο';
      case 'common.vacant':
        return 'Κενό';
      case 'common.accounting':
        return 'Λογιστική';
      case 'common.totalIncome':
        return 'Συνολικό εισόδημα';
      case 'common.totalExpense':
        return 'Συνολικά έξοδα';
      case 'common.currentBalance':
        return 'Τρέχον υπόλοιπο';
      case 'common.totalWithdrawal':
        return 'Συνολική (Ανάληψη)';
      case 'common.totalProperties':
        return 'Συνολικά ακίνητα';
      case 'common.totalTenant':
        return 'Συνολικός ενοικιαστής';
      case 'common.totalRentPaid':
        return 'Συνολικό ενοίκιο που καταβλήθηκε';
      case 'common.totalRentDue':
        return 'Συνολικό οφειλόμενο ενοίκιο';
      case 'common.totalApplication':
        return 'Συνολική αίτηση';
      case 'common.pendingApplication':
        return 'Εκκρεμής αίτηση';
      case 'common.processingApplication':
        return 'Αίτηση σε επεξεργασία';
      case 'common.approveApplication':
        return 'Έγκριση αίτησης';
      case 'common.rejectApplication':
        return 'Απόρριψη αίτησης';
      case 'common.maintenanceCost':
        return 'Κόστος συντήρησης';
      case 'common.transactionSummary':
        return 'Σύνοψη συναλλαγών';
      case 'common.maintenanceRequest':
        return 'Αίτημα συντήρησης';
      case 'common.notifications':
        return 'Ειδοποιήσεις';
      case 'common.myProperties':
        return 'Οι ιδιοκτησίες μου';
      case 'common.recommendationProperties':
        return 'Συνιστώμενα ακίνητα';
      case 'common.laborList':
        return 'Λίστα εργαζομένων';
      case 'common.addLabor':
        return 'Προσθήκη εργαζομένου';
      case 'common.laborDetails':
        return 'Στοιχεία εργαζομένου';
      case 'common.laborSalary':
        return 'Μισθός εργαζομένου';
      case 'common.editLabor':
        return 'Επεξεργασία εργαζομένου';
      case 'common.addNewLabor':
        return 'Προσθήκη νέου εργαζομένου';
      case 'common.enterAmount':
        return 'Εισαγωγή ποσού';
      case 'common.maintenanceDetails':
        return 'Λεπτομέρειες συντήρησης';
      case 'common.laborName':
        return 'Όνομα εργαζομένου';
      case 'common.comment':
        return 'Σχόλιο';
      case 'common.image':
        return 'Εικόνα';
      case 'common.complete':
        return 'Ολοκλήρωση';
      case 'common.details':
        return 'Λεπτομέρειες';
      case 'common.title':
        return 'Τίτλος';
      case 'common.date':
        return 'Ημερομηνία';
      case 'common.reason':
        return 'Λόγος';
      case 'common.edit':
        return 'Επεξεργασία';
      case 'common.property':
        return 'Ακίνητο';
      case 'common.completeYourProfile':
        return 'Συμπληρώστε το προφίλ σας';
      case 'common.profileImage':
        return 'Εικόνα προφίλ';
      case 'common.imagePickHint':
        return 'Μόνο εικόνα JPEG & PNG με μέγιστο μέγεθος 120x120 pixels.';
      case 'common.invoiceId':
        return 'Αναγνωριστικό τιμολογίου';
      case 'common.depositAmount':
        return 'Ποσό προκαταβολής';
      case 'common.landlordPhone':
        return 'Τηλέφωνο εκμισθωτή';
      case 'common.rentalAdvance':
        return 'Ενοίκιο (Προκαταβολή)';
      case 'common.totalAmount':
        return 'Συνολικό ποσό';
      case 'common.rentalAmount':
        return 'Ποσό ενοικίου';
      case 'common.adminCharge':
        return 'Χρέωση διαχειριστή';
      case 'common.editAccount':
        return 'Επεξεργασία λογαριασμού';
      case 'common.addNewAccount':
        return 'Προσθήκη νέου λογαριασμού';
      case 'common.transactionId':
        return 'Αναγνωριστικό συναλλαγής';
      case 'common.transactionType':
        return 'Τύπος συναλλαγής';
      case 'common.requestDate':
        return 'Ημερομηνία αίτησης';
      case 'common.amount':
        return 'Ποσό';
      case 'common.fee':
        return 'Χρέωση';
      case 'common.paymentStatus':
        return 'Κατάσταση πληρωμής';
      case 'common.generatedTime':
        return 'Χρόνος δημιουργίας';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(
              text:
                  'Αυτή είναι μια αναφορά που δημιουργήθηκε από το σύστημα του ',
            ),
            appName,
          ],
        );
      case 'common.withdrawHistory':
        return 'Ιστορικό ανάληψης';
      case 'common.history':
        return 'Ιστορικό';
      case 'common.withdrawAmount':
        return 'Ποσό ανάληψης';
      case 'common.availableBalance':
        return 'Διαθέσιμο υπόλοιπο';
      case 'common.withdrawCharge':
        return 'Χρέωση ανάληψης';
      case 'common.paymentMethod':
        return 'Μέθοδος πληρωμής';
      case 'common.requestSendSuccess':
        return 'Το αίτημα στάλθηκε με επιτυχία!';
      case 'common.paymentReceiptSubmitSuccess':
        return 'Η απόδειξη πληρωμής υποβλήθηκε με επιτυχία.';
      case 'common.refundReason':
        return 'Λόγος επιστροφής χρημάτων';
      case 'common.note':
        return 'Σημείωση';
      case 'common.refundReceiveSuccess':
        return 'Η επιστροφή χρημάτων ελήφθη με επιτυχία.';
      case 'common.downloadPaymentReceipt':
        return 'Λήψη απόδειξης πληρωμής';
      case 'common.invoice':
        return 'Τιμολόγιο';
      case 'common.selectPropertyToSeeInvoice':
        return 'Επιλέξτε ακίνητο για να δείτε τον αριθμό τιμολογίου...';
      case 'common.bankAccName':
        return 'Όνομα τραπεζικού λογαριασμού';
      case 'common.bankName':
        return 'Όνομα τράπεζας';
      case 'common.bankAccNum':
        return 'Αριθμός τραπεζικού λογαριασμού';
      case 'common.thankYou':
        return 'Ευχαριστώ!';
      case 'common.basicInfo':
        return 'Βασικές πληροφορίες';
      case 'common.descriptionPricing':
        return 'Περιγραφή & Τιμολόγηση';
      case 'common.contact':
        return 'Επικοινωνία';
      case 'common.photos':
        return 'Φωτογραφίες';
      case 'common.successfullySubmitted':
        return 'Υποβλήθηκε με επιτυχία!';
      case 'common.editProperty':
        return 'Επεξεργασία ακινήτου';
      case 'common.addNewProperty':
        return 'Προσθήκη νέου ακινήτου';
      case 'common.propertyManageRequestSuccess':
        return 'Η αγγελία σας υποβλήθηκε για έλεγχο.';
      case 'common.postAnotherProperty':
        return 'Δημοσίευση άλλου ακινήτου';
      case 'common.browseYourProperty':
        return 'Περιήγηση στο ακίνητό σας';
      case 'common.stepIndicator':
        return ({required InlineSpan step, required InlineSpan totalSteps}) =>
            TextSpan(
              children: [
                const TextSpan(text: 'Βήμα '),
                step,
                const TextSpan(text: ' από '),
                totalSteps,
              ],
            );
      case 'common.whatWouldYouLikeToPost':
        return 'Τι θα θέλατε να δημοσιεύσετε;';
      case 'common.category':
        return 'Κατηγορία';
      case 'common.invalidCategory':
        return 'Μη έγκυρη κατηγορία';
      case 'common.unitNumber':
        return 'Αριθμός μονάδας';
      case 'common.sqft':
        return 'τ.π.';
      case 'common.propertySizeMustBeGreaterThan0':
        return 'Το μέγεθος του ακινήτου πρέπει να είναι μεγαλύτερο από μηδέν';
      case 'common.whatAreTheFacility':
        return 'Ποιες είναι οι παροχές;';
      case 'common.whatAreTheAmenity':
        return 'Ποιες είναι οι ανέσεις;';
      case 'common.parkingLot':
        return 'Χώρος στάθμευσης';
      case 'common.houseType':
        return 'Τύπος σπιτιού';
      case 'common.value':
        return 'Αξία';
      case 'common.unitLotSize':
        return 'Μέγεθος μονάδας / οικοπέδου';
      case 'common.landSize':
        return 'Μέγεθος γης';
      case 'common.acres':
        return 'έκταρ(ες)';
      case 'common.roomSize':
        return 'Μέγεθος δωματίου';
      case 'common.askTenantPreference':
        return 'Ποιες είναι οι προτιμήσεις σας για τον ενοικιαστή';
      case 'common.couple':
        return 'Ζευγάρι';
      case 'common.describeTheProperty':
        return ({required String propertyType}) =>
            'Περιγράψτε το ${propertyType}';
      case 'common.adTitle':
        return 'Τίτλος αγγελίας';
      case 'common.minimumRentalPeriod':
        return 'Ελάχιστη περίοδος ενοικίασης';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} Αριθμός';
      case 'common.hideOrDisplayEmail':
        return 'Απόκρυψη ή εμφάνιση διεύθυνσης email';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) =>
            'Σας ευχαριστούμε για την δημοσίευση στο ${appName}!';
      case 'common.propertyList':
        return 'Λίστα ακινήτων';
      case 'common.newInviteRent':
        return 'Νέα πρόσκληση ενοικίασης';
      case 'common.rentAgreement':
        return 'Συμφωνία ενοικίασης';
      case 'common.rentDetails':
        return 'Λεπτομέρειες ενοικίασης';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Σημείωση: '),
            note(
              'Παρακαλώ περιμένετε να αποδεχτεί ο ενοικιαστής την πρόσκληση.',
            ),
          ],
        );
      case 'common.rent':
        return 'Ενοίκιο';
      case 'common.editTenant':
        return 'Επεξεργασία ενοικιαστή';
      case 'common.addNewTenant':
        return 'Προσθήκη νέου ενοικιαστή';
      case 'common.shareInstallLink':
        return 'Κοινή χρήση συνδέσμου εγκατάστασης';
      case 'common.tenantList':
        return 'Λίστα ενοικιαστών';
      case 'common.editMaintenanceRequest':
        return 'Επεξεργασία αιτήματος συντήρησης';
      case 'common.addNewMaintenance':
        return 'Προσθήκη νέας συντήρησης';
      case 'common.landlordId':
        return 'Αναγνωριστικό εκμισθωτή';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Σημείωση: '),
            note(
              'Η συμφωνία σας είναι υπό έλεγχο. Παρακαλώ περιμένετε μέχρι να εγκρίνει ο εκμισθωτής την ενοικίασή σας.',
            ),
          ],
        );
      case 'common.editReview':
        return 'Επεξεργασία κριτικής';
      case 'common.writeAReview':
        return 'Γράψτε μια κριτική';
      case 'common.selectRating':
        return 'Επιλέξτε βαθμολογία';
      case 'common.enterYourOpinion':
        return 'Εισάγετε τη γνώμη σας';
      case 'common.askToEnterReviewMsg':
        return 'Παρακαλώ εισάγετε ένα μήνυμα κριτικής';
      case 'common.pressBackAgainToExit':
        return 'Πατήστε ξανά πίσω για έξοδο.';
      case 'common.selectPaymentMethod':
        return 'Επιλέξτε μέθοδο πληρωμής';
      case 'common.filter':
        return 'Φίλτρο';
      case 'common.perMonth':
        return '/1 μήνα';
      case 'common.searchHintWithAppName':
        return ({required String appName}) =>
            'Αναζητήστε οτιδήποτε στο ${appName}...';
      case 'exceptions.somethingWentWrong':
        return 'Κάτι πήγε στραβά, παρακαλώ προσπαθήστε ξανά';
      case 'exceptions.noNidPassport':
        return 'Δεν παρέχεται εικόνα NID/Διαβατηρίου.';
      case 'exceptions.noRentPropertyFound':
        return 'Δεν βρέθηκε ακίνητο ενοικίασης για αυτόν τον ενοικιαστή.';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return 'Δεν βρέθηκε ακίνητο!\nΠαρακαλώ δοκιμάστε με διαφορετικές λέξεις-κλειδιά';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return 'Δεν βρέθηκε πρόγραμμα συνδρομής!\nΠαρακαλώ ανανεώστε τη σελίδα και δοκιμάστε ξανά.';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) =>
            'Μη έγκυρες πληροφορίες ${dataType}! Παρακαλώ ανανεώστε τη σελίδα και δοκιμάστε ξανά.';
      case 'exceptions.invalidDownloadUrl':
        return 'Μη έγκυρη διεύθυνση URL λήψης!';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) =>
            'Αποτυχία αποθήκευσης του αρχείου! ${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) =>
            'Σφάλμα ανοίγματος του αρχείου! ${error}';
      case 'exceptions.noVehicleInfoProvided':
        return 'Δεν παρέχονται πληροφορίες οχήματος.';
      case 'exceptions.yourApplicationRejected':
        return 'Η αίτησή σας έχει απορριφθεί';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            'Δεν βρέθηκε αίτηση!\n${subject} θα εμφανιστεί εδώ όταν είναι διαθέσιμη.';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return 'Η αίτησή σας';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return 'Η αίτηση του ενοικιαστή';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return 'Δεν βρέθηκε ακίνητο!\nΠαρακαλώ προσθέστε ένα ακίνητο για να το δείτε εδώ.';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return 'Δεν βρέθηκαν προτεινόμενα ακίνητα\nΠαρακαλώ δοκιμάστε ξανά αργότερα.';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return 'Τα ακίνητα δεν είναι διαθέσιμα\nΠαρακαλώ δοκιμάστε ξανά αργότερα.';
      case 'exceptions.noImageProvided':
        return 'Δεν παρέχεται εικόνα';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) => 'Δεν βρέθηκε ${status} συντήρηση.';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return 'Δεν βρέθηκε συντήρηση! Μπορείτε να δημιουργήσετε αίτημα συντήρησης για να το δείτε εδώ.';
      case 'exceptions.noDepositFound':
        return 'Δεν βρέθηκε εγγύηση!\nΠαρακαλώ μπορείτε να δείτε τις εγγυήσεις όταν είναι διαθέσιμες';
      case 'exceptions.noRentPaymentFound':
        return 'Δεν βρέθηκε πληρωμή ενοικίου!\nΠαρακαλώ μπορείτε να δείτε τις πληρωμές ενοικίου όταν είναι διαθέσιμες';
      case 'exceptions.transactionSummaryApiException':
        return 'Αποτυχία λήψης σύνοψης συναλλαγών.';
      case 'exceptions.noWithdrawRequestFound':
        return 'Δεν βρέθηκε αίτημα!\nΠαρακαλώ δημιουργήστε ένα αίτημα ανάληψης για να το δείτε εδώ.';
      case 'exceptions.withdrawRequestNotApproved':
        return 'Αυτό το αίτημα ανάληψης δεν έχει εγκριθεί!.';
      case 'exceptions.nonZeroError':
        return 'Παρακαλώ εισάγετε ένα έγκυρο ποσό μεγαλύτερο από το μηδέν.';
      case 'exceptions.minAmountError':
        return ({required String minValue}) =>
            'Το ποσό πρέπει να είναι τουλάχιστον ${minValue}.';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) =>
            'Το ποσό δεν πρέπει να υπερβαίνει το ${maxValue}.';
      case 'exceptions.selectPaymentMethodHint':
        return 'Παρακαλώ επιλέξτε πρώτα μια μέθοδο πληρωμής.';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            'Δεν βρέθηκε αίτημα επιστροφής χρημάτων ${status}!\nΜπορείτε να δείτε το αίτημα επιστροφής χρημάτων εδώ όταν είναι διαθέσιμο.';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return 'Δεν βρέθηκε αίτημα επιστροφής χρημάτων!\nΜπορείτε να δημιουργήσετε αίτημα επιστροφής χρημάτων για να το δείτε εδώ.';
      case 'exceptions.refundRequestHint.inTenantList':
        return 'Ο ενοικιαστής θα εγκρίνει την επιστροφή χρημάτων όταν λάβει τα χρήματα πίσω';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return 'Θα εξετάσουμε το αίτημα επιστροφής χρημάτων και θα το εγκρίνουμε εντός 24 ωρών.';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) =>
            'Παρακαλώ επιλέξτε τον αριθμό των ${value}';
      case 'exceptions.invalidDateRange':
        return 'Μη έγκυρη σειρά ημερομηνιών.';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) =>
            'Το ${value} πρέπει να είναι μεγαλύτερο από το μηδέν.';
      case 'exceptions.editProperty.rentalChange':
        return 'Η ιδιοκτησία ενοικίασης αλλάζει. Πρέπει να είναι έγκυρη (σε ισχύ) μόνο για την πληρωμή ενοικίου του επόμενου μήνα.';
      case 'exceptions.editProperty.deleteOnRent':
        return 'Το ακίνητό σας έχει ήδη ενοικιαστεί από τον ενοικιαστή. Δεν μπορείτε να το διαγράψετε μέχρι να αφαιρέσετε πρώτα τον ενοικιαστή';
      case 'exceptions.editProperty.alreayRented':
        return 'Αυτό το ακίνητο είναι ήδη ενοικιασμένο. Παρακαλώ δοκιμάστε ξανά αργότερα.\nΉ μπορείτε να επικοινωνήσετε με τον εκμισθωτή για περισσότερες πληροφορίες.';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return 'Δεν βρέθηκε πρόσκληση ενοικίασης!\nΠαρακαλώ δημιουργήστε μια πρόσκληση ενοικίασης για να τη δείτε εδώ.';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return 'Δεν βρέθηκε πρόσκληση ενοικίασης!\nΜπορείτε να δείτε την πρόσκληση ενοικίασης εδώ όταν είναι διαθέσιμη.';
      case 'exceptions.notenantFoundList':
        return 'Κανένας ενοικιαστής!\nΠαρακαλώ προσθέστε έναν ενοικιαστή για να τον δείτε εδώ.';
      case 'exceptions.noFeaturesProvided':
        return 'Δεν παρέχονται χαρακτηριστικά.';
      case 'exceptions.noNotificationFound':
        return 'Δεν υπάρχει διαθέσιμη ειδοποίηση.\nΜπορείτε να δείτε την ειδοποίησή σας εδώ όταν είναι διαθέσιμη.';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return 'Είστε σίγουροι ότι θέλετε να αποσυνδεθείτε;';
      case 'prompt.application.rejectTitle':
        return 'Γιατί απορρίπτετε αυτήν την αίτηση;';
      case 'prompt.application.applicationSent.successfully':
        return 'Η αίτηση στάλθηκε με επιτυχία!';
      case 'prompt.application.applicationSent.sucessDescription':
        return 'Μπορείτε να δείτε αυτήν την αίτηση στη λίστα αιτήσεών σας';
      case 'prompt.labor.delete.title':
        return 'Διαγραφή εργαζομένου;';
      case 'prompt.labor.delete.description':
        return 'Είστε σίγουροι ότι θέλετε να διαγράψετε αυτόν τον εργαζόμενο;';
      case 'prompt.maintenanceRequest.rejectTitle':
        return 'Γιατί απορρίπτεται αυτό το αίτημα;';
      case 'prompt.maintenanceRequest.processTitle':
        return 'Είστε σίγουροι ότι επεξεργάζεστε αυτό το αίτημα συντήρησης;';
      case 'prompt.maintenanceRequest.completeTitle':
        return 'Η εργασία ολοκληρώθηκε;';
      case 'prompt.withdrawMethod.deleteTitle':
        return 'Διαγραφή μεθόδου ανάληψης;';
      case 'prompt.withdrawMethod.deleteDescription':
        return 'Είστε σίγουροι ότι θέλετε να διαγράψετε αυτήν τη μέθοδο ανάληψης;';
      case 'prompt.unsavedChanges.title':
        return 'Είστε σίγουροι ότι θέλετε να επιστρέψετε;';
      case 'prompt.unsavedChanges.message':
        return 'Τα πεδία που έχουν αλλάξει δεν θα αποθηκευτούν!';
      case 'prompt.property.delete.title':
        return 'Διαγραφή ακινήτου;';
      case 'prompt.property.delete.message':
        return 'Είστε σίγουροι ότι θέλετε να διαγράψετε αυτό το ακίνητο;';
      case 'prompt.rentInvitation.landlordApprove.title':
        return 'Είστε σίγουροι ότι θέλετε να εγκρίνετε αυτήν την ενοικίαση;';
      case 'prompt.rentInvitation.landlordApprove.description':
        return 'Βεβαιωθείτε ότι έχετε εξετάσει τη συμφωνία που έχει υπογράψει ο ενοικιαστής.';
      case 'prompt.rentInvitation.tenantAccept.title':
        return 'Είστε σίγουροι ότι θέλετε να αποδεχτείτε αυτήν την πρόσκληση;';
      case 'prompt.rentInvitation.tenantAccept.description':
        return 'Βεβαιωθείτε ότι έχετε κατεβάσει το αρχείο PDF της συμφωνίας!';
      case 'prompt.sessionExpired.title':
        return 'Η συνεδρία έληξε';
      case 'prompt.sessionExpired.message':
        return 'Η συνεδρία σας έχει λήξει. Παρακαλώ συνδεθείτε ξανά';
      case 'prompt.sessionExpired.action':
        return 'Σύνδεση';
      case 'prompt.noInternet.title':
        return 'Δεν υπάρχει σύνδεση στο Διαδίκτυο';
      case 'prompt.noInternet.message':
        return 'Παρακαλώ ελέγξτε τη σύνδεση Wi-Fi ή κινητού δικτύου και δοκιμάστε ξανά';
      case 'prompt.noInternet.action':
        return 'Δοκιμάστε ξανά';
      case 'prompt.permissionHandler.title':
        return 'Απαιτείται άδεια!';
      case 'prompt.permissionHandler.message':
        return 'Πρέπει να παραχωρήσετε δικαιώματα στις ρυθμίσεις της εφαρμογής. Θα θέλατε να ανοίξετε τις ρυθμίσεις τώρα;';
      case 'prompt.imagePicker.title':
        return 'Επιλέξτε επιλογή';
      case 'prompt.imagePicker.gallery':
        return 'Συλλογή';
      case 'prompt.imagePicker.camera':
        return 'Κάμερα';
      case 'prompt.verificationDialog.title':
        return 'Επαληθεύστε το email σας';
      case 'prompt.verificationDialog.message':
        return 'Έχουμε στείλει ένα email με κωδικό επαλήθευσης';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message} στο ${email}';
      case 'prompt.notification.clearTitle':
        return 'Εκκαθάριση ειδοποιήσεων;';
      case 'prompt.notification.clearMessage':
        return 'Είστε σίγουροι ότι θέλετε να εκκαθαρίσετε όλες τις ειδοποιήσεις;';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return 'Εισαγάγετε ${_root.common.fullName}';
      case 'form.fullName.errors.required':
        return 'Παρακαλώ εισάγετε το ${_root.common.fullName} σας';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return 'Εισαγάγετε το ${_root.common.email} σας';
      case 'form.email.errors.required':
        return 'Παρακαλώ εισάγετε τη διεύθυνση ${_root.common.email} σας';
      case 'form.email.errors.invalid':
        return '⦸ Μη έγκυρο email, παρακαλώ δοκιμάστε ξανά';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return 'Παρακαλώ εισάγετε τον ${_root.common.password} σας';
      case 'form.password.errors.minLength':
        return ({required Object count}) =>
            'Ο κωδικός πρόσβασης πρέπει να έχει τουλάχιστον ${count} χαρακτήρες!';
      case 'form.confirmPassword.label':
        return 'Επιβεβαίωση ${_root.common.password}';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return 'Παρακαλώ εισάγετε τον ${_root.common.password} σας';
      case 'form.confirmPassword.errors.notMatched':
        return 'Η επιβεβαίωση κωδικού πρόσβασης δεν ταιριάζει!';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return 'Παρακαλώ εισάγετε τον ${_root.common.mobileNumber} σας';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return 'Αριθμός σπιτιού και όνομα οδού';
      case 'form.address1.errors.required':
        return 'Παρακαλώ εισάγετε το ${_root.form.address1.label} σας';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return 'Διαμέρισμα, σουίτα, μονάδα, κ.λπ.';
      case 'form.address2.errors.required':
        return 'Παρακαλώ εισάγετε το ${_root.form.address2.label} σας';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return 'Εισαγάγετε ${_root.common.postalCode}';
      case 'form.postalCode.errors.required':
        return 'Παρακαλώ εισάγετε το ${_root.common.postalCode} σας';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return 'Εισαγάγετε το όνομα ${_root.common.city}.';
      case 'form.city.errors.required':
        return 'Παρακαλώ εισάγετε το όνομα ${_root.common.city} σας.';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return 'Εισαγάγετε το όνομα ${_root.common.state}.';
      case 'form.state.errors.required':
        return 'Παρακαλώ εισάγετε το όνομα ${_root.common.state} σας.';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return 'Επιλέξτε ${_root.common.country}.';
      case 'form.country.errors.required':
        return 'Παρακαλώ επιλέξτε το ${_root.common.country} σας';
      case 'form.otp.errors.required':
        return 'Παρακαλώ εισάγετε το otp.';
      case 'form.otp.errors.invalid':
        return 'Παρακαλώ εισάγετε σωστό otp.';
      case 'form.title.label':
        return 'Τίτλος';
      case 'form.title.hint':
        return 'Εισαγωγή τίτλου';
      case 'form.title.errors.required':
        return 'Παρακαλώ εισάγετε τίτλο';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            'Επιλέξτε ${_root.form.date.label(label: label)}';
      case 'form.date.errors.required':
        return ({required String label}) =>
            'Παρακαλώ επιλέξτε ${_root.form.date.label(label: label)}';
      case 'form.reason.label':
        return 'Λόγος';
      case 'form.reason.hint':
        return 'Εισαγωγή λόγου';
      case 'form.reason.errors.required':
        return 'Παρακαλώ εισάγετε λόγο';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return 'Επιλέξτε ${_root.common.withdrawMethod}';
      case 'form.withdrawMethod.errors.required':
        return 'Παρακαλώ επιλέξτε ${_root.common.withdrawMethod}';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => 'Ανέβασμα ${label}';
      case 'form.fileField.errors.required':
        return ({required String label}) => 'Παρακαλώ επιλέξτε ${label}';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            'Εισαγωγή ${_root.form.note.label(note: note)}';
      case 'form.note.errors.required':
        return ({required String note}) =>
            'Παρακαλώ εισάγετε ${_root.form.note.label(note: note)}';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return 'Επιλέξτε ${_root.common.gender}';
      case 'form.gender.errors.required':
        return 'Παρακαλώ επιλέξτε ${_root.common.gender}';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            'Εισαγωγή ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            'Παρακαλώ εισάγετε ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.invalid':
        return 'Παρακαλώ εισάγετε έγκυρο @form.anyField.label';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            'Επιλέξτε ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            'Παρακαλώ επιλέξτε ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.invalid':
        return 'Παρακαλώ επιλέξτε έγκυρο @form.anyDropdown.label';
      case 'action.next':
        return 'Επόμενο';
      case 'action.getStarted':
        return 'Ξεκινήστε';
      case 'action.skip':
        return 'Παράλειψη';
      case 'action.select':
        return 'Επιλογή';
      case 'action.save':
        return 'Αποθήκευση';
      case 'action.signIn':
        return 'Σύνδεση';
      case 'action.signUp':
        return 'Εγγραφή';
      case 'action.kContinue':
        return 'Συνέχεια';
      case 'action.clearAll':
        return 'Εκκαθάριση όλων';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return 'Αποστολή';
      case 'action.pay':
        return 'Πληρωμή';
      case 'action.remove':
        return 'Αφαίρεση';
      case 'action.goBack':
        return 'Επιστροφή';
      case 'action.buyNow':
        return 'Αγορά τώρα';
      case 'action.no':
        return 'Όχι';
      case 'action.open':
        return 'Άνοιγμα';
      case 'action.addProperty':
        return 'Προσθήκη ακινήτου';
      case 'action.process':
        return 'Επεξεργασία';
      case 'action.approve':
        return 'Έγκριση';
      case 'action.reject':
        return 'Απόρριψη';
      case 'action.viewRent':
        return 'Προβολή ενοικίου';
      case 'action.openNavigationMenu':
        return 'Άνοιγμα μενού πλοήγησης';
      case 'action.seeAll':
        return 'Δείτε όλα';
      case 'action.update':
        return 'Ενημέρωση';
      case 'action.printTransaction':
        return 'Εκτύπωση συναλλαγής';
      case 'action.payoutRequest':
        return 'Αίτημα πληρωμής';
      case 'action.addNew':
        return '+ Προσθήκη νέου';
      case 'action.sendRequest':
        return 'Αποστολή αιτήματος';
      case 'action.print':
        return 'Εκτύπωση';
      case 'action.requestForRefund':
        return 'Αίτημα για επιστροφή χρημάτων';
      case 'action.previous':
        return 'Προηγούμενο';
      case 'action.delete':
        return 'Διαγραφή';
      case 'action.applyProperty':
        return 'Εφαρμογή ακινήτου';
      case 'action.viewApplication':
        return 'Προβολή αίτησης';
      case 'action.inviteTenant':
        return 'Πρόσκληση ενοικιαστή';
      case 'action.inviteRent':
        return 'Πρόσκληση ενοικίασης';
      case 'action.cancel':
        return 'Ακύρωση';
      case 'action.accept':
        return 'Αποδοχή';
      case 'action.submit':
        return 'Υποβολή';
      case 'action.yes':
        return 'Ναι';
      case 'action.okay':
        return 'Εντάξει';
      case 'action.confirm':
        return 'Επιβεβαίωση';
      case 'action.apply':
        return 'Εφαρμογή';
      case 'action.reset':
        return 'Επαναφορά';
      case 'action.retry':
        return 'Επανάληψη';
      case 'action.viewAll':
        return 'Προβολή όλα';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return 'Βρείτε το ακίνητό σας';
      case 'pages.onboard.onboardData.data1.description':
        return 'Έχουμε κάνει πολύ εύκολο να βρείτε ένα μέρος που να ταιριάζει στη ζωή σας - είτε πρόκειται για ένα δωμάτιο, ένα διαμέρισμα ή ένα σπίτι.';
      case 'pages.onboard.onboardData.data2.title':
        return 'Διαμέρισμα στην πόλη';
      case 'pages.onboard.onboardData.data2.description':
        return 'Σας εξοικονομούμε χρόνο αντιστοιχίζοντάς σας γρήγορα με το τέλειο ακίνητο πριν χαθεί, ώστε να μπορείτε να απολαύσετε το νέο σας σπίτι ή να καταχωρίσετε το δικό σας δωρεάν.';
      case 'pages.onboard.onboardData.data3.title':
        return 'Το άνετο σπίτι σας';
      case 'pages.onboard.onboardData.data3.description':
        return 'Αν ψάχνετε για ένα μέρος για να ζήσετε, τότε ρίξτε μια ματιά στα σπίτια μας προς ενοικίαση. Έχουμε μια μεγάλη γκάμα σπιτιών για να διαλέξετε σε όλη τη χώρα.';
      case 'pages.signIn.title':
        return 'Καλώς ήρθατε πίσω';
      case 'pages.signIn.subtitle':
        return 'Συνδεθείτε τώρα για να ξεκινήσετε ένα καταπληκτικό ταξίδι.';
      case 'pages.signIn.extra.rememberMe':
        return 'Να με θυμάσαι';
      case 'pages.signIn.extra.signUpNavigator':
        return ({required InlineSpanBuilder getStarted}) => TextSpan(
          children: [
            const TextSpan(text: 'Δεν έχετε λογαριασμό; '),
            getStarted(_root.action.getStarted),
          ],
        );
      case 'pages.signIn.extra.forgotPassword':
        return '${_root.common.forgotPassword};';
      case 'pages.forgotPassword.title':
        return 'Ξεχάσατε τον κωδικό πρόσβασης';
      case 'pages.forgotPassword.subtitle':
        return 'Εισαγάγετε τη διεύθυνση email σας για να ανακτήσετε τον κωδικό πρόσβασης.';
      case 'pages.otpVerification.title':
        return 'Επαλήθευση';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) =>
            'Ένας 4-ψήφιος κωδικός έχει σταλεί στη διεύθυνση email σας. ${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            'Ο κωδικός θα σταλεί σε ${minutes}:${seconds}';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) => TextSpan(
          children: [
            const TextSpan(text: ' '),
            resendCode('Επανάληψη αποστολής κωδικού'),
            const TextSpan(text: ' '),
          ],
        );
      case 'pages.resetPassword.title':
        return 'Επαναφορά κωδικού πρόσβασης';
      case 'pages.resetPassword.subtitle':
        return 'Επαναφέρετε τον κωδικό πρόσβασης για ανάκτηση και σύνδεση στον λογαριασμό σας';
      case 'pages.resetPassword.extra.dialog.title':
        return 'Αλλαγή με επιτυχία!';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return 'Συνδεθείτε με τον νέο σας κωδικό πρόσβασης.\nΑνακατεύθυνση στη Σύνδεση...';
      case 'pages.signUp.title':
        return 'Δημιουργήστε έναν λογαριασμό';
      case 'pages.signUp.subtitle':
        return 'Εγγραφείτε τώρα για να ξεκινήσετε ένα καταπληκτικό ταξίδι';
      case 'pages.signUp.extra.signInNavigator':
        return ({required InlineSpanBuilder signIn}) => TextSpan(
          children: [
            const TextSpan(text: 'Έχετε λογαριασμό; '),
            signIn(_root.action.signIn),
          ],
        );
      case 'pages.welcome.title':
        return 'Ποιος είσαι?';
      case 'pages.welcome.subtitle':
        return 'Παρακαλώ επιλέξτε την παρακάτω επιλογή.';
      case 'pages.welcome.extra.landlordTag':
        return 'Διαχειριστείτε τις ιδιοκτησίες σας';
      case 'pages.welcome.extra.tenantTag':
        return 'Συνδεθείτε στον λογαριασμό ενοικίασής σας';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return 'Ειδοποιήσεις';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return 'Μήνυμα...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return 'Γιατί ${_root.common.cancelRenting};';
      case 'pages.cancelRenting.form.reason.hint':
        return 'Γράψτε τον λόγο';
      case 'pages.cancelRenting.form.reason.errors.required':
        return 'Παρακαλώ εισάγετε τον λόγο ακύρωσης της ενοικίασης';
      case 'pages.invoiceDetails.appbarTitle':
        return _root.common.viewDetails;
      case 'pages.offlinePayment.appbarTitle':
        return 'Πληρωμή εκτός σύνδεσης';
      case 'pages.offlinePayment.form.paymentNote.label':
        return 'Σημείωση πληρωμής (${_root.common.optional})';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return 'Εισαγάγετε κάποιο κείμενο...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Ποσό πληρωμής: '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return 'Όνομα κατόχου λογαριασμού';
      case 'pages.offlinePayment.extra.accountNumber':
        return 'Αριθμός λογαριασμού';
      case 'pages.offlinePayment.extra.swiftCode':
        return 'Κωδικός Swift';
      case 'pages.offlinePayment.extra.branch':
        return 'Υποκατάστημα';
      case 'pages.offlinePayment.extra.fileTypeHint':
        return ({
          required InlineSpanBuilder fileType,
          required InlineSpanBuilder fileSize,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Επιλέξτε αρχεία μορφής '),
            fileType('JPG, PNG,PDF'),
            const TextSpan(text: ' ή μόνο '),
            fileType('DOC'),
            const TextSpan(text: '. Μέγεθος αρχείου '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return 'Προβολή τιμολογίου';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return 'Θα εξετάσουμε την πληρωμή και θα την εγκρίνουμε εντός 24 ωρών.';
      case 'pages.paymentStatus.fail.actionButton':
        return 'Δοκιμάστε ξανά';
      case 'pages.paymentStatus.fail.title':
        return 'Oops! Η πληρωμή απέτυχε';
      case 'pages.paymentStatus.fail.description':
        return 'Η συναλλαγή σας απέτυχε λόγω κάποιου τεχνικού σφάλματος.';
      case 'pages.propertyDetails.extra.landlord':
        return ({required InlineSpan landlordName}) => TextSpan(
          children: [
            TextSpan(text: '${_root.common.landlord}: '),
            landlordName,
          ],
        );
      case 'pages.propertyDetails.extra.ratingReviews':
        return ({
          required InlineSpan rating,
          required InlineSpanBuilder reviews,
        }) => TextSpan(
          children: [
            rating,
            const TextSpan(text: ' '),
            reviews(_root.common.reviews),
          ],
        );
      case 'pages.propertyDetails.extra.features':
        return ({required InlineSpanBuilder fa}) => TextSpan(
          children: [
            const TextSpan(text: 'Χαρακτηριστικά '),
            fa('(Παροχές & Ανέσεις)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return 'Επιλέξτε περίοδο ενοικίασης';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ Γράψτε μια κριτική';
      case 'pages.search.appbarTitle':
        return 'Αναζήτηση';
      case 'pages.search.extra.hint':
        return 'Αναζητήστε οικόπεδα, διαμερίσματα, δωμάτια...';
      case 'pages.search.extra.noRecentSearch':
        return 'Δεν έχετε πρόσφατες αναζητήσεις.';
      case 'pages.subscriptionPlan.appbarTitle':
        return 'Επιλέξτε το πρόγραμμά σας';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return 'Η πληρωμή συνδρομής έγινε με επιτυχία.\nΤώρα μπορείτε να έχετε πρόσβαση στις λειτουργίες της συνδρομής.';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Συνολικό Κόστος Συντήρησης: '),
            amount,
          ],
        );
      case 'pages.landlordMaintenanceReport.maintenancePending':
        return '${_root.common.maintenance} ${_root.enums.maintenanceStatus.pending}';
      case 'pages.landlordMaintenanceReport.maintenanceProcessing':
        return '${_root.common.maintenance} ${_root.enums.maintenanceStatus.processing}';
      case 'pages.landlordMaintenanceReport.maintenanceCompleted':
        return '${_root.common.maintenance} ${_root.enums.maintenanceStatus.completed}';
      case 'pages.landlordMaintenanceReport.maintenanceRejected':
        return '${_root.common.maintenance} ${_root.enums.maintenanceStatus.rejected}';
      case 'enums.propertyStatus.allProperty':
        return 'Όλα τα ακίνητα';
      case 'enums.propertyStatus.pending':
        return 'Εκκρεμεί';
      case 'enums.propertyStatus.active':
        return 'Ενεργό';
      case 'enums.propertyStatus.inactive':
        return 'Ανενεργό';
      case 'enums.propertyStatus.rejected':
        return 'Απορρίφθηκε';
      case 'enums.propertyType.apartmentCondominium':
        return 'Διαμέρισμα/Συγκρότημα κατοικιών';
      case 'enums.propertyType.house':
        return 'Σπίτι';
      case 'enums.propertyType.commercialProperty':
        return 'Εμπορικό ακίνητο';
      case 'enums.propertyType.land':
        return 'Γη';
      case 'enums.propertyType.room':
        return 'Δωμάτιο';
      case 'enums.applicationStatus.all':
        return 'Όλα';
      case 'enums.applicationStatus.pending':
        return 'Εκκρεμεί';
      case 'enums.applicationStatus.processing':
        return 'Σε επεξεργασία';
      case 'enums.applicationStatus.approved':
        return 'Εγκρίθηκε';
      case 'enums.applicationStatus.rejected':
        return 'Απορρίφθηκε';
      case 'enums.myRentStatus.pending':
        return 'Εκκρεμεί';
      case 'enums.myRentStatus.processing':
        return 'Σε επεξεργασία';
      case 'enums.myRentStatus.active':
        return 'Ενεργό';
      case 'enums.myRentStatus.expired':
        return 'Έληξε';
      case 'enums.myRentStatus.cancelled':
        return 'Ακυρώθηκε';
      case 'enums.maintenanceStatus.pending':
        return 'Εκκρεμεί';
      case 'enums.maintenanceStatus.processing':
        return 'Σε επεξεργασία';
      case 'enums.maintenanceStatus.rejected':
        return 'Απορρίφθηκε';
      case 'enums.maintenanceStatus.completed':
        return 'Ολοκληρώθηκε';
      case 'enums.tenantProfileType.privateIndividual':
        return 'Ιδιώτης (Άτομο)';
      case 'enums.tenantProfileType.company':
        return 'Εταιρεία';
      case 'enums.tenantType.newTenant':
        return 'Νέος ενοικιαστής';
      case 'enums.tenantType.activeTenant':
        return 'Ενεργός ενοικιαστής';
      case 'enums.tenantType.expiredTenant':
        return 'Ενοικιαστής που έληξε';
      case 'enums.paymentStatus.all':
        return 'Όλα';
      case 'enums.paymentStatus.pending':
        return 'Εκκρεμεί';
      case 'enums.paymentStatus.paid':
        return 'Πληρωμένο';
      case 'enums.paymentStatus.unpaid':
        return 'Απλήρωτο';
      case 'enums.paymentStatus.rejected':
        return 'Απορρίφθηκε';
      case 'enums.paymentStatus.refund':
        return 'Επιστροφή χρημάτων';
      case 'enums.paymentOptions.onlinePayment':
        return 'Online πληρωμή';
      case 'enums.paymentOptions.offlinePayment':
        return 'Πληρωμή εκτός σύνδεσης';
      case 'enums.paymentType.securityDeposit':
        return 'Εγγύηση';
      case 'enums.paymentType.rentPayment':
        return 'Πληρωμή ενοικίου';
      case 'enums.paymentType.subscription':
        return 'Συνδρομή';
      case 'enums.gender.male':
        return 'Άρρεν';
      case 'enums.gender.female':
        return 'Θήλυ';
      case 'enums.gender.other':
        return 'Άλλο';
      case 'enums.ecRelation.wife':
        return 'Σύζυγος';
      case 'enums.ecRelation.parent':
        return 'Γονέας';
      case 'enums.ecRelation.friend':
        return 'Φίλος';
      case 'enums.ecRelation.brother':
        return 'Αδελφός';
      case 'enums.ecRelation.sister':
        return 'Αδελφή';
      case 'enums.ecRelation.child':
        return 'Παιδί';
      case 'enums.vehicleType.car':
        return 'Αυτοκίνητο';
      case 'enums.vehicleType.motorcycles':
        return 'Μοτοσικλέτες';
      case 'enums.vehicleType.lorry':
        return 'Φορτηγό';
      case 'enums.sortBy.lowToHigh':
        return 'Από χαμηλό σε υψηλό';
      case 'enums.sortBy.highToLow':
        return 'Από υψηλό σε χαμηλό';
      case 'enums.residentialType.flat':
        return 'Διαμέρισμα';
      case 'enums.residentialType.apartment':
        return 'Διαμέρισμα';
      case 'enums.residentialType.condominium':
        return 'Συγκρότημα κατοικιών';
      case 'enums.residentialType.serviceResidence':
        return 'Κατοικία υπηρεσιών';
      case 'enums.residentialType.studio':
        return 'Στούντιο';
      case 'enums.residentialType.duplex':
        return 'Διώροφο';
      case 'enums.residentialType.townhouseCondo':
        return 'Συγκρότημα κατοικιών σε σειρά';
      case 'enums.residentialType.others':
        return 'Άλλα';
      case 'enums.floorRange.high':
        return 'Υψηλός';
      case 'enums.floorRange.medium':
        return 'Μεσαίος';
      case 'enums.floorRange.low':
        return 'Χαμηλός';
      case 'enums.furnishings.fullyFurnished':
        return 'Πλήρως επιπλωμένο';
      case 'enums.furnishings.partiallyFurnished':
        return 'Μερικώς επιπλωμένο';
      case 'enums.furnishings.notFurnished':
        return 'Χωρίς έπιπλα';
      case 'enums.commercialPropertyType.officeSpace':
        return 'Επαγγελματικός χώρος';
      case 'enums.commercialPropertyType.retailSpace':
        return 'Χώρος λιανικής πώλησης';
      case 'enums.commercialPropertyType.shopLot':
        return 'Κατάστημα';
      case 'enums.commercialPropertyType.warehouseFactory':
        return 'Αποθήκη / Εργοστάσιο';
      case 'enums.commercialPropertyType.hotelResort':
        return 'Ξενοδοχείο / θέρετρο';
      case 'enums.commercialPropertyType.sofo':
        return 'Sofo';
      case 'enums.commercialPropertyType.soho':
        return 'Soho';
      case 'enums.commercialPropertyType.sovo':
        return 'Sovo';
      case 'enums.commercialPropertyType.others':
        return 'Άλλα';
      case 'enums.landPropertyType.residential':
        return 'Οικιστική';
      case 'enums.landPropertyType.industrial':
        return 'Βιομηχανική';
      case 'enums.landPropertyType.agricultural':
        return 'Αγροτική';
      case 'enums.landPropertyType.commercial':
        return 'Εμπορική';
      case 'enums.landPropertyType.mixedDevelopment':
        return 'Μικτή ανάπτυξη';
      case 'enums.landPropertyType.others':
        return 'Άλλα';
      case 'enums.residentPropertyType.condo':
        return 'Συγκρότημα κατοικιών / Κατοικία υπηρεσιών / Ρετιρέ';
      case 'enums.residentPropertyType.apartment':
        return 'Διαμέρισμα / Σοφίτα';
      case 'enums.residentPropertyType.house':
        return 'Σπίτια';
      case 'enums.residentPropertyType.shoplot':
        return 'Κατάστημα';
      case 'enums.residentPropertyType.sharing':
        return 'Μοιράζοντας ένα σπίτι / Διαμέρισμα';
      case 'enums.residentPropertyType.others':
        return 'Άλλα';
      case 'enums.minimumRentalPeriod.sixMonths':
        return '6 μήνες';
      case 'enums.minimumRentalPeriod.oneYear':
        return '1 έτος';
      case 'enums.minimumRentalPeriod.oneAndHalfYears':
        return '1,5 χρόνια';
      case 'enums.minimumRentalPeriod.twoYears':
        return '2 χρόνια';
      case 'enums.minimumRentalPeriod.twoAndHalfYears':
        return '2,5 χρόνια';
      case 'enums.dropdownDateFilter.daily':
        return 'Ημερήσια';
      case 'enums.dropdownDateFilter.weekly':
        return 'Εβδομαδιαία';
      case 'enums.dropdownDateFilter.monthly':
        return 'Μηνιαία';
      case 'enums.dropdownDateFilter.yearly':
        return 'Ετήσια';
      case 'enums.dropdownDateFilter.custom':
        return 'Προσαρμοσμένη';
      default:
        return null;
    }
  }
}
