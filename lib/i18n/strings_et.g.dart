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
class TranslationsEt implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.et,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <et>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
	@override
	bool get $wip => false;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEt _root = this; // ignore: unused_field

	@override 
	TranslationsEt $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEt(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsCommonEt common = _TranslationsCommonEt._(_root);
	@override late final _TranslationsExceptionsEt exceptions = _TranslationsExceptionsEt._(_root);
	@override late final _TranslationsPromptEt prompt = _TranslationsPromptEt._(_root);
	@override late final _TranslationsFormEt form = _TranslationsFormEt._(_root);
	@override late final _TranslationsActionEt action = _TranslationsActionEt._(_root);
	@override late final _TranslationsPagesEt pages = _TranslationsPagesEt._(_root);
	@override late final _TranslationsEnumsEt enums = _TranslationsEnumsEt._(_root);
}

// Path: common
class _TranslationsCommonEt implements TranslationsCommonEn {
	_TranslationsCommonEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Profiil';
	@override String get language => 'Keel';
	@override String get subscriptionPlan => 'Tellimusplaan';
	@override String get contactUs => 'Võta meiega ühendust';
	@override String get termsAndConditions => 'Kasutustingimused';
	@override String get aboutUs => 'Meist';
	@override String get logout => 'Logi välja';
	@override String get editProfile => 'Muuda profiili';
	@override String get fullName => 'Täisnimi';
	@override String get email => 'E-post';
	@override String get mobileNumber => 'Mobiiltelefoni number';
	@override String get address => 'Aadress';
	@override String get postalCode => 'Postiindeks';
	@override String get city => 'Linn';
	@override String get country => 'Riik';
	@override String get state => 'Maakond';
	@override String get password => 'Parool';
	@override String get forgotPassword => 'Unustasin parooli';
	@override String get tenant => 'Üürnik';
	@override String get landlord => 'Väljarent';
	@override String get cancelRenting => 'Tühista rentimine';
	@override String get startDate => 'Alguskuupäev';
	@override String get endDate => 'Lõppkuupäev';
	@override String get fromDate => 'Alates kuupäevast';
	@override String get toDate => 'Kuni kuupäevani';
	@override String get online => 'Veebis';
	@override String get bankList => 'Pankade loetelu';
	@override String get withdrawMethod => 'Väljamakse meetod';
	@override String get uploadPaymentReceipt => 'Laadi üles maksekviitung';
	@override TextSpan offlinePaymentNote({required InlineSpanBuilder note, required InlineSpanBuilder duraion}) => TextSpan(children: [
		const TextSpan(text: 'Märkus: '),
		note('Makse vajab käsitsi kinnitamist administraatori poolt'),
		const TextSpan(text: ' '),
		duraion('24–48 tunni jooksul.'),
	]);
	@override String get reviews => 'Arvustused';
	@override String get description => 'Kirjeldus';
	@override String get about => 'Umbes';
	@override String get propertyTypes => 'Kinnisvaratüübid';
	@override String get features => 'Funktsioonid';
	@override String get floorPlans => 'Põrandaplaanid';
	@override String get buildingDetails => 'Hoone üksikasjad';
	@override String get buildingName => 'Hoone nimi';
	@override String get propertyAddress => 'Kinnisvara aadress';
	@override String get completionYear => 'Valmimisaasta';
	@override String get lotNumber => 'Krundi number';
	@override String get residentialType => 'Elamutüüp';
	@override String get furnishings => 'Sisustus';
	@override String get floorRange => 'Korrus';
	@override String get bedrooms => 'Magamistoad';
	@override String get bathrooms => 'Vannitoad';
	@override String get propertySize => 'Kinnisvara suurus';
	@override String get rentalPeriod => 'Rendilepingu periood';
	@override String get securityDeposit => 'Tagatisraha';
	@override String get utilityBill => 'Kommunaalteenuste arve';
	@override String get facilities => 'Rajatised';
	@override String get amenities => 'Mugavused';
	@override String get expiringReason => 'Aegumise põhjus';
	@override String get tenantDetails => 'Üürniku andmed';
	@override String get typeOfTenant => 'Üürniku tüüp';
	@override String get tenantName => 'Üürniku nimi';
	@override String get nidPassport => 'NID/Pass';
	@override String get nidPassportId => '${_root.common.nidPassport} ID';
	@override String get tenantId => 'Üürniku ID';
	@override String get dateOfBirth => 'Sünnikuupäev';
	@override String get gender => 'Sugu';
	@override String get nominee => 'Kandidaat';
	@override String get name => 'Nimi';
	@override String get optional => 'Valikuline';
	@override String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
	@override String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
	@override late final _TranslationsCommonNomineeMobileEt nomineeMobile = _TranslationsCommonNomineeMobileEt._(_root);
	@override String get emergencyContact => 'Hädaabikontakt';
	@override String get relation => 'Suhe';
	@override String get relationWith => '${_root.common.relation} With';
	@override String get relationWithYou => '${_root.common.relationWith} Sinuga';
	@override String get company => 'Ettevõte';
	@override String get companyName => '${_root.common.company} ${_root.common.name}';
	@override String get companySSMNo => '${_root.common.company} SSM Nr.';
	@override String get workplace => 'Töökoht';
	@override String get officePhoneNo => 'Kontori telefoninumber';
	@override String get officeMobileNo => 'Kontori ${_root.common.mobileNumber}';
	@override String get vehicle => 'Sõiduk';
	@override late final _TranslationsCommonVehiclesInfoEt vehiclesInfo = _TranslationsCommonVehiclesInfoEt._(_root);
	@override String get vehiclesType => '${_root.common.vehicle} Type';
	@override late final _TranslationsCommonVehicleRegistrationNoEt vehicleRegistrationNo = _TranslationsCommonVehicleRegistrationNoEt._(_root);
	@override String get vehicleBrand => '${_root.common.vehicle} Mark';
	@override String get rentProperty => 'Kinnisvara rentimine';
	@override String get propertyDetails => 'Kinnisvara andmed';
	@override String get propertyId => 'Kinnisvara ID';
	@override String get propertyType => 'Kinnisvara tüüp';
	@override String get propertyName => 'Kinnisvara nimi';
	@override String get paymentDetails => 'Makse andmed';
	@override String get monthlyRent => 'Igakuine üür';
	@override String get thisMonthPayment => 'Selle kuu makse';
	@override String get totalPaidRent => 'Kokku makstud üür';
	@override String get dueRent => 'Võlgnetav üür';
	@override String get rentStartDate => 'Üür ${_root.common.startDate}';
	@override String get rentEndDate => 'Üür ${_root.common.endDate}';
	@override String get status => 'Staatus';
	@override String get rentAgreementPdf => 'Rendilepingu PDF';
	@override String get noFile => 'Fail puudub';
	@override String get tenantImageOp => 'Üürniku pilt ${_root.common.optional}';
	@override String get addNewVechicle => 'Lisa uus sõiduk';
	@override String get uploadNidPassport => 'Laadi üles NID/Pass';
	@override String get nidPassportUploadNote => 'Ainult failitüübi pilt aktsepteeritakse. Failipiirang kuni 2,5 MB.';
	@override String get search => 'Otsi';
	@override String get sortBy => 'Sorteeri';
	@override String get subscription => 'Tellimus';
	@override String get downloading => 'Allalaadimine...';
	@override String get downloadSuccess => 'Fail on edukalt alla laaditud!';
	@override String get addPropertyBannerTitle => 'Kas soovite oma kinnisvara välja rentida?';
	@override String get application => 'Taotlus';
	@override String get tenantHasPaidDeposit => 'Üürnik on tagatisraha maksnud.';
	@override String get askProcessingRentApplication => 'Kas olete kindel, et soovite seda taotlust rentimiseks kinnisvaraks töödelda?';
	@override String get dateAndTime => 'Kuupäev ja aeg';
	@override String get applicationDetails => 'Taotluse andmed';
	@override String get depositStatus => 'Tagatisraha staatus';
	@override String get uploadRentAgreement => 'Laadi üles rendileping';
	@override String get uploadFilePDF => 'Laadi üles fail (PDF)';
	@override String get askSelectRentAgreement => 'Valige lepingu dokumendi fail.';
	@override String get landlordRentAgreementPDF => 'Väljarenti rendilepingu PDF';
	@override String get tenantRentAgreementPDF => 'Üürniku rendilepingu PDF';
	@override TextSpan landlordApplicationApproveNote({required InlineSpanBuilder note}) => TextSpan(children: [
		const TextSpan(text: 'Märkus: '),
		note('Kinnitage taotlus alles pärast seda, kui üürnik on tagatisraha maksnud.'),
	]);
	@override String get reasonOfRejection => 'Aegumise põhjus';
	@override String get youveRejectedThisApplication => 'Olete selle taotluse tagasi lükanud';
	@override String get landlordDetails => 'Väljarenti andmed';
	@override String get landlordName => 'Väljarenti nimi';
	@override String get downloadRentAgreement => 'Laadi alla rendileping';
	@override TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(children: [
		const TextSpan(text: 'Nõustun '),
		toc('Kasutustingimustega'),
	]);
	@override TextSpan tenantAgreementSignNote1({required InlineSpanBuilder note}) => TextSpan(children: [
		const TextSpan(text: 'Märkus: '),
		note('Laadige leping alla ja lugege see läbi. Saatke allkirjastatud leping WhatsAppi või e-posti teel väljarentile.'),
	]);
	@override TextSpan tenantAgreementSignNote2({required InlineSpanBuilder note}) => TextSpan(children: [
		const TextSpan(text: 'Märkus: '),
		note('Väljarent kinnitab taotluse, kui üürnik tasub tagatisraha, kommunaalteenuste ja ühe kuu ettemakse.'),
	]);
	@override TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) => TextSpan(children: [
		const TextSpan(text: 'Rendileping (PDF) '),
		complete('Täielik leping'),
	]);
	@override TextSpan tenantApplicationDepositNote({required InlineSpanBuilder note}) => TextSpan(children: [
		const TextSpan(text: 'Märkus: '),
		note('Väljarent kinnitab taotluse, kui üürnik tasub tagatisraha, kommunaalteenuste ja ühe kuu ettemakse.'),
	]);
	@override String get whatsapp => 'Whatsapp';
	@override String get applicationList => 'Taotluste loetelu';
	@override String get viewDetails => 'Vaata üksikasju';
	@override String get searchHint => '${_root.common.search}...';
	@override String get home => 'Kodu';
	@override String get dashboard => 'Armatuurlaud';
	@override String get tenants => 'Üürnikud';
	@override String get maintenance => 'Hooldus';
	@override String get maintenanceList => 'Hooldusloetelu';
	@override String get maintenanceReport => 'Hooldusaruanne';
	@override String get labor => 'Tööjõud';
	@override String get applications => 'Taotlused';
	@override String get rentInvitation => 'Rendikutse';
	@override String get payment => 'Makse';
	@override String get rentPayment => 'Üüri maksmine';
	@override String get depositUtilityPayment => 'Tagatisraha ja kommunaalmakse';
	@override String get refundRequest => 'Tagasimaksetaotlus';
	@override String get withdrawRequest => 'Väljamaksutaotlus';
	@override String get myProperty => 'Minu kinnisvara';
	@override String get myRent => 'Minu rent';
	@override String get wishlist => 'Soovide nimekiri';
	@override String get properties => 'Kinnisvara';
	@override String get allProperties => 'Kogu kinnisvara';
	@override String get totalPropery => 'Kinnisvara kokku';
	@override String get occupied => 'Hõivatud';
	@override String get vacant => 'Vaba';
	@override String get accounting => 'Raamatupidamine';
	@override String get totalIncome => 'Kogutulu';
	@override String get totalExpense => 'Kogukulu';
	@override String get currentBalance => 'Jääk';
	@override String get totalWithdrawal => 'Kokku (väljamakse)';
	@override String get totalProperties => 'Kinnisvara kokku';
	@override String get totalTenant => 'Üürnikke kokku';
	@override String get totalRentPaid => 'Kokku makstud üür';
	@override String get totalRentDue => 'Kokku võlgnetav üür';
	@override String get totalApplication => 'Taotlusi kokku';
	@override String get pendingApplication => 'Ootel taotlus';
	@override String get processingApplication => 'Töötlemisel olev taotlus';
	@override String get approveApplication => 'Kinnita taotlus';
	@override String get rejectApplication => 'Lükka taotlus tagasi';
	@override String get maintenanceCost => 'Hoolduskulud';
	@override String get transactionSummary => 'Tehingute kokkuvõte';
	@override String get maintenanceRequest => 'Hooldustaotlus';
	@override String get notifications => 'Teavitused';
	@override String get myProperties => 'Minu kinnisvara';
	@override String get recommendationProperties => 'Soovituslikud kinnisvaraobjektid';
	@override String get laborList => 'Tööjõu loetelu';
	@override String get addLabor => 'Lisa tööjõud';
	@override String get laborDetails => 'Tööjõu andmed';
	@override String get laborSalary => 'Tööjõu palk';
	@override String get editLabor => 'Muuda tööjõudu';
	@override String get addNewLabor => 'Lisa uus tööjõud';
	@override String get enterAmount => 'Sisesta summa';
	@override String get maintenanceDetails => 'Hooldusandmed';
	@override String get laborName => 'Töölise nimi';
	@override String get comment => 'Kommentaar';
	@override String get image => 'Pilt';
	@override String get complete => 'Lõpeta';
	@override String get details => 'Üksikasjad';
	@override String get title => 'Pealkiri';
	@override String get date => 'Kuupäev';
	@override String get reason => 'Põhjus';
	@override String get edit => 'Muuda';
	@override String get property => 'Kinnisvara';
	@override String get completeYourProfile => 'Täida oma profiil';
	@override String get profileImage => 'Profiilipilt';
	@override String get imagePickHint => 'Ainult JPEG- ja PNG-pildid, mille maksimaalne suurus on 120x120 pikslit.';
	@override String get invoiceId => 'Arve ID';
	@override String get depositAmount => 'Tagatisraha summa';
	@override String get landlordPhone => 'Väljarenti telefon';
	@override String get rentalAdvance => 'Üür (ettemaks)';
	@override String get totalAmount => 'Kogusumma';
	@override String get rentalAmount => 'Üüri summa';
	@override String get adminCharge => 'Administreerimistasu';
	@override String get editAccount => 'Muuda kontot';
	@override String get addNewAccount => 'Lisa uus konto';
	@override String get transactionId => 'Tehingu ID';
	@override String get transactionType => 'Tehingu tüüp';
	@override String get requestDate => 'Taotluse kuupäev';
	@override String get amount => 'Summa';
	@override String get fee => 'Tasu';
	@override String get paymentStatus => 'Makse staatus';
	@override String get generatedTime => 'Genereerimise aeg';
	@override TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(children: [
		const TextSpan(text: 'See on süsteemi genereeritud aruanne rakendusest '),
		appName,
	]);
	@override String get withdrawHistory => 'Väljamakse ajalugu';
	@override String get history => 'Ajalugu';
	@override String get withdrawAmount => 'Väljamakse summa';
	@override String get availableBalance => 'Saadaval olev saldo';
	@override String get withdrawCharge => 'Väljamakse tasu';
	@override String get paymentMethod => 'Makseviis';
	@override String get requestSendSuccess => 'Taotlus on edukalt saadetud!';
	@override String get paymentReceiptSubmitSuccess => 'Maksekviitung on edukalt esitatud.';
	@override String get refundReason => 'Tagasimakse põhjus';
	@override String get note => 'Märkus';
	@override String get refundReceiveSuccess => 'Tagasimakse on edukalt kätte saadud.';
	@override String get downloadPaymentReceipt => 'Laadi alla maksekviitung';
	@override String get invoice => 'Arve';
	@override String get selectPropertyToSeeInvoice => 'Valige kinnisvara, et näha arve numbrit...';
	@override String get bankAccName => 'Panga konto nimi';
	@override String get bankName => 'Panga nimi';
	@override String get bankAccNum => 'Panga kontonumber';
	@override String get thankYou => 'Aitäh!';
	@override String get basicInfo => 'Põhiteave';
	@override String get descriptionPricing => 'Kirjeldus ja hind';
	@override String get contact => 'Kontakt';
	@override String get photos => 'Fotod';
	@override String get successfullySubmitted => 'Edukalt esitatud!';
	@override String get editProperty => 'Muuda kinnisvara';
	@override String get addNewProperty => 'Lisa uus kinnisvara';
	@override String get propertyManageRequestSuccess => 'Teie kuulutus on esitatud ülevaatamiseks.';
	@override String get postAnotherProperty => 'Postita veel üks kinnisvara';
	@override String get browseYourProperty => 'Sirvige oma kinnisvara';
	@override TextSpan stepIndicator({required InlineSpan step, required InlineSpan totalSteps}) => TextSpan(children: [
		const TextSpan(text: 'Samm '),
		step,
		const TextSpan(text: ' / '),
		totalSteps,
	]);
	@override String get whatWouldYouLikeToPost => 'Mida soovite postitada?';
	@override String get category => 'Kategooria';
	@override String get invalidCategory => 'Kehtetu kategooria';
	@override String get unitNumber => 'Üksuse number';
	@override String get sqft => 'm²';
	@override String get propertySizeMustBeGreaterThan0 => 'Kinnisvara suurus peab olema suurem kui null';
	@override String get whatAreTheFacility => 'Millised on rajatised?';
	@override String get whatAreTheAmenity => 'Millised on mugavused?';
	@override String get parkingLot => 'Parkla';
	@override String get houseType => 'Majatüüp';
	@override String get value => 'Väärtus';
	@override String get unitLotSize => 'Üksuse / krundi suurus';
	@override String get landSize => 'Maa suurus';
	@override String get acres => 'aakrit';
	@override String get roomSize => 'Toa suurus';
	@override String get askTenantPreference => 'Millised on teie üürniku eelistused?';
	@override String get couple => 'Paar';
	@override String describeTheProperty({required String propertyType}) => 'Kirjeldage ${propertyType}';
	@override String get adTitle => 'Kuulutuse pealkiri';
	@override String get minimumRentalPeriod => 'Minimaalne rendiperiood';
	@override String get whatsappNumber => '${_root.common.whatsapp} Number';
	@override String get hideOrDisplayEmail => 'Peida või kuva e-posti aadress';
	@override String thankYouForPostingProperty({required String appName}) => 'Aitäh, et postitasite rakendusse ${appName}!';
	@override String get propertyList => 'Kinnisvaraloetelu';
	@override String get newInviteRent => 'Uus rendikutse';
	@override String get rentAgreement => 'Rendileping';
	@override String get rentDetails => 'Rendi andmed';
	@override TextSpan landlordRentInvitationPendingNote({required InlineSpanBuilder note}) => TextSpan(children: [
		const TextSpan(text: 'Märkus: '),
		note('Palun oodake, kuni üürnik kutse vastu võtab.'),
	]);
	@override String get rent => 'Üür';
	@override String get editTenant => 'Muuda üürnikku';
	@override String get addNewTenant => 'Lisa uus üürnik';
	@override String get shareInstallLink => 'Jaga installimislinki';
	@override String get tenantList => 'Üürnike loetelu';
	@override String get editMaintenanceRequest => 'Muuda hooldustaotlust';
	@override String get addNewMaintenance => 'Lisa uus hooldus';
	@override String get landlordId => 'Väljarenti ID';
	@override TextSpan tenantAgrementUnderReviewNote({required InlineSpanBuilder note}) => TextSpan(children: [
		const TextSpan(text: 'Märkus: '),
		note('Teie leping on läbivaatamisel. Palun oodake, kuni väljarent teie üüri kinnitab.'),
	]);
	@override String get editReview => 'Muuda arvustust';
	@override String get writeAReview => 'Kirjuta arvustus';
	@override String get selectRating => 'Vali hinnang';
	@override String get enterYourOpinion => 'Sisesta oma arvamus';
	@override String get askToEnterReviewMsg => 'Sisestage arvustuse sõnum';
	@override String get pressBackAgainToExit => 'Väljumiseks vajutage uuesti tagasi.';
	@override String get selectPaymentMethod => 'Vali makseviis';
	@override String get filter => 'Filtreeri';
	@override String get perMonth => '/ kuu';
	@override String searchHintWithAppName({required String appName}) => 'Otsi kõike rakendusest ${appName}...';
}

// Path: exceptions
class _TranslationsExceptionsEt implements TranslationsExceptionsEn {
	_TranslationsExceptionsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get somethingWentWrong => 'Midagi läks valesti, proovige uuesti';
	@override String get noNidPassport => 'NID/Passi pilti pole esitatud.';
	@override String get noRentPropertyFound => 'Selle üürniku jaoks ei leitud üürikinnisvara.';
	@override String get noPropertyFoundWithKeyWord => 'Kinnisvara ei leitud!\nProovige erinevaid märksõnu';
	@override String get noSubscriptionFoundRefreshPage => 'Tellimusplaani ei leitud!\nLehekülje värskendamine ja uuesti proovimine.';
	@override String invalidApiDataRefreshPage({required String dataType}) => 'Vigased ${dataType} andmed! Lehekülje värskendamine ja uuesti proovimine.';
	@override String get invalidDownloadUrl => 'Vigane allalaadimise URL!';
	@override String failedToSaveFile({required String error}) => 'Faili salvestamine ebaõnnestus! ${error}';
	@override String errorOpeningFile({required String error}) => 'Faili avamine ebaõnnestus! ${error}';
	@override String get noVehicleInfoProvided => 'Sõiduki infot ei esitatud.';
	@override String get yourApplicationRejected => 'Teie taotlus on tagasi lükatud';
	@override late final _TranslationsExceptionsNoApplicationFoundHintEt noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintEt._(_root);
	@override late final _TranslationsExceptionsNoPropertyFoundHintEt noPropertyFoundHint = _TranslationsExceptionsNoPropertyFoundHintEt._(_root);
	@override String get noImageProvided => 'Pilti ei esitatud';
	@override late final _TranslationsExceptionsNoStatusMaintenantFoundEt noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundEt._(_root);
	@override String get noDepositFound => 'Tagatisraha ei leitud!\nTagatisraha on nähtav, kui see on saadaval';
	@override String get noRentPaymentFound => 'Üüri makset ei leitud!\nÜüri maksed on nähtavad, kui need on saadaval';
	@override String get transactionSummaryApiException => 'Tehingute kokkuvõtte hankimine ebaõnnestus.';
	@override String get noWithdrawRequestFound => 'Taotlust ei leitud!\nProovige luua väljamaksutaotlus, et seda siin näha.';
	@override String get withdrawRequestNotApproved => 'Seda väljamaksutaotlust pole kinnitatud!.';
	@override String get nonZeroError => 'Sisestage nullist suurem summa.';
	@override String minAmountError({required String minValue}) => 'Summa peab olema vähemalt ${minValue}.';
	@override String maxAmountError({required String maxValue}) => 'Summa ei tohi ületada ${maxValue}.';
	@override String get selectPaymentMethodHint => 'Valige kõigepealt makseviis.';
	@override late final _TranslationsExceptionsNoStatusRefundReqFoundEt noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundEt._(_root);
	@override late final _TranslationsExceptionsRefundRequestHintEt refundRequestHint = _TranslationsExceptionsRefundRequestHintEt._(_root);
	@override String oneToTenRequiredField({required String value}) => 'Valige ${value} arv';
	@override String get invalidDateRange => 'Vigane kuupäevavahemik.';
	@override String valueMustBeGreaterThanZero({required String value}) => '${value} peab olema suurem kui null.';
	@override late final _TranslationsExceptionsEditPropertyEt editProperty = _TranslationsExceptionsEditPropertyEt._(_root);
	@override late final _TranslationsExceptionsRentInvitationEt rentInvitation = _TranslationsExceptionsRentInvitationEt._(_root);
	@override String get notenantFoundList => 'Üürnikke pole!\nProovige lisada üürnik, et seda siin näha.';
	@override String get noFeaturesProvided => 'Funktsioone ei esitatud.';
	@override String get noNotificationFound => 'Teavitust pole saadaval.\nTeie teavitust on näha siin, kui see on saadaval.';
}

// Path: prompt
class _TranslationsPromptEt implements TranslationsPromptEn {
	_TranslationsPromptEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPromptLogoutEt logout = _TranslationsPromptLogoutEt._(_root);
	@override late final _TranslationsPromptApplicationEt application = _TranslationsPromptApplicationEt._(_root);
	@override late final _TranslationsPromptLaborEt labor = _TranslationsPromptLaborEt._(_root);
	@override late final _TranslationsPromptMaintenanceRequestEt maintenanceRequest = _TranslationsPromptMaintenanceRequestEt._(_root);
	@override late final _TranslationsPromptWithdrawMethodEt withdrawMethod = _TranslationsPromptWithdrawMethodEt._(_root);
	@override late final _TranslationsPromptUnsavedChangesEt unsavedChanges = _TranslationsPromptUnsavedChangesEt._(_root);
	@override late final _TranslationsPromptPropertyEt property = _TranslationsPromptPropertyEt._(_root);
	@override late final _TranslationsPromptRentInvitationEt rentInvitation = _TranslationsPromptRentInvitationEt._(_root);
	@override late final _TranslationsPromptSessionExpiredEt sessionExpired = _TranslationsPromptSessionExpiredEt._(_root);
	@override late final _TranslationsPromptNoInternetEt noInternet = _TranslationsPromptNoInternetEt._(_root);
	@override late final _TranslationsPromptPermissionHandlerEt permissionHandler = _TranslationsPromptPermissionHandlerEt._(_root);
	@override late final _TranslationsPromptImagePickerEt imagePicker = _TranslationsPromptImagePickerEt._(_root);
	@override late final _TranslationsPromptVerificationDialogEt verificationDialog = _TranslationsPromptVerificationDialogEt._(_root);
	@override late final _TranslationsPromptNotificationEt notification = _TranslationsPromptNotificationEt._(_root);
}

// Path: form
class _TranslationsFormEt implements TranslationsFormEn {
	_TranslationsFormEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFormFullNameEt fullName = _TranslationsFormFullNameEt._(_root);
	@override late final _TranslationsFormEmailEt email = _TranslationsFormEmailEt._(_root);
	@override late final _TranslationsFormPasswordEt password = _TranslationsFormPasswordEt._(_root);
	@override late final _TranslationsFormConfirmPasswordEt confirmPassword = _TranslationsFormConfirmPasswordEt._(_root);
	@override late final _TranslationsFormMobileNumberEt mobileNumber = _TranslationsFormMobileNumberEt._(_root);
	@override late final _TranslationsFormAddress1Et address1 = _TranslationsFormAddress1Et._(_root);
	@override late final _TranslationsFormAddress2Et address2 = _TranslationsFormAddress2Et._(_root);
	@override late final _TranslationsFormPostalCodeEt postalCode = _TranslationsFormPostalCodeEt._(_root);
	@override late final _TranslationsFormCityEt city = _TranslationsFormCityEt._(_root);
	@override late final _TranslationsFormStateEt state = _TranslationsFormStateEt._(_root);
	@override late final _TranslationsFormCountryEt country = _TranslationsFormCountryEt._(_root);
	@override late final _TranslationsFormOtpEt otp = _TranslationsFormOtpEt._(_root);
	@override late final _TranslationsFormTitleEt title = _TranslationsFormTitleEt._(_root);
	@override late final _TranslationsFormDateEt date = _TranslationsFormDateEt._(_root);
	@override late final _TranslationsFormReasonEt reason = _TranslationsFormReasonEt._(_root);
	@override late final _TranslationsFormWithdrawMethodEt withdrawMethod = _TranslationsFormWithdrawMethodEt._(_root);
	@override late final _TranslationsFormFileFieldEt fileField = _TranslationsFormFileFieldEt._(_root);
	@override late final _TranslationsFormNoteEt note = _TranslationsFormNoteEt._(_root);
	@override late final _TranslationsFormGenderEt gender = _TranslationsFormGenderEt._(_root);
	@override late final _TranslationsFormAnyFieldEt anyField = _TranslationsFormAnyFieldEt._(_root);
	@override late final _TranslationsFormAnyDropdownEt anyDropdown = _TranslationsFormAnyDropdownEt._(_root);
}

// Path: action
class _TranslationsActionEt implements TranslationsActionEn {
	_TranslationsActionEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get next => 'Järgmine';
	@override String get getStarted => 'Alusta';
	@override String get skip => 'Jäta vahele';
	@override String get select => 'Vali';
	@override String get save => 'Salvesta';
	@override String get signIn => 'Logi sisse';
	@override String get signUp => 'Registreeru';
	@override String get kContinue => 'Jätka';
	@override String get clearAll => 'Puhasta kõik';
	@override String get cancelRenting => _root.common.cancelRenting;
	@override String get send => 'Saada';
	@override String get pay => 'Maksa';
	@override String get remove => 'Eemalda';
	@override String get goBack => 'Mine tagasi';
	@override String get buyNow => 'Osta nüüd';
	@override String get no => 'Ei';
	@override String get open => 'Ava';
	@override String get addProperty => 'Lisa kinnisvara';
	@override String get process => 'Töötle';
	@override String get approve => 'Kinnita';
	@override String get reject => 'Lükka tagasi';
	@override String get viewRent => 'Vaata üüri';
	@override String get openNavigationMenu => 'Ava navigatsioonimenüü';
	@override String get seeAll => 'Näe kõiki';
	@override String get update => 'Uuenda';
	@override String get printTransaction => 'Trüki tehing';
	@override String get payoutRequest => 'Väljamaksutaotlus';
	@override String get addNew => '+ Lisa uus';
	@override String get sendRequest => 'Saada taotlus';
	@override String get print => 'Trüki';
	@override String get requestForRefund => 'Taotle tagasimakset';
	@override String get previous => 'Eelmine';
	@override String get delete => 'Kustuta';
	@override String get applyProperty => 'Rakenda kinnisvara';
	@override String get viewApplication => 'Vaata taotlust';
	@override String get inviteTenant => 'Kutsu üürnik';
	@override String get inviteRent => 'Kutsu üür';
	@override String get cancel => 'Tühista';
	@override String get accept => 'Nõustu';
	@override String get submit => 'Esita';
	@override String get yes => 'Jah';
	@override String get okay => 'Olgu';
	@override String get confirm => 'Kinnita';
	@override String get apply => 'Rakenda';
	@override String get reset => 'Lähtesta';
	@override String get retry => 'Proovi uuesti';
	@override String get viewAll => 'Vaata kogu';
}

// Path: pages
class _TranslationsPagesEt implements TranslationsPagesEn {
	_TranslationsPagesEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesLanguageEt language = _TranslationsPagesLanguageEt._(_root);
	@override late final _TranslationsPagesOnboardEt onboard = _TranslationsPagesOnboardEt._(_root);
	@override late final _TranslationsPagesSignInEt signIn = _TranslationsPagesSignInEt._(_root);
	@override late final _TranslationsPagesForgotPasswordEt forgotPassword = _TranslationsPagesForgotPasswordEt._(_root);
	@override late final _TranslationsPagesOtpVerificationEt otpVerification = _TranslationsPagesOtpVerificationEt._(_root);
	@override late final _TranslationsPagesResetPasswordEt resetPassword = _TranslationsPagesResetPasswordEt._(_root);
	@override late final _TranslationsPagesSignUpEt signUp = _TranslationsPagesSignUpEt._(_root);
	@override late final _TranslationsPagesWelcomeEt welcome = _TranslationsPagesWelcomeEt._(_root);
	@override late final _TranslationsPagesAboutUsEt aboutUs = _TranslationsPagesAboutUsEt._(_root);
	@override late final _TranslationsPagesTermsAndConditionsEt termsAndConditions = _TranslationsPagesTermsAndConditionsEt._(_root);
	@override late final _TranslationsPagesNotificationListEt notificationList = _TranslationsPagesNotificationListEt._(_root);
	@override late final _TranslationsPagesContactUsEt contactUs = _TranslationsPagesContactUsEt._(_root);
	@override late final _TranslationsPagesCancelRentingEt cancelRenting = _TranslationsPagesCancelRentingEt._(_root);
	@override late final _TranslationsPagesInvoiceDetailsEt invoiceDetails = _TranslationsPagesInvoiceDetailsEt._(_root);
	@override late final _TranslationsPagesOfflinePaymentEt offlinePayment = _TranslationsPagesOfflinePaymentEt._(_root);
	@override late final _TranslationsPagesPaymentStatusEt paymentStatus = _TranslationsPagesPaymentStatusEt._(_root);
	@override late final _TranslationsPagesPropertyDetailsEt propertyDetails = _TranslationsPagesPropertyDetailsEt._(_root);
	@override late final _TranslationsPagesSearchEt search = _TranslationsPagesSearchEt._(_root);
	@override late final _TranslationsPagesSubscriptionPlanEt subscriptionPlan = _TranslationsPagesSubscriptionPlanEt._(_root);
	@override late final _TranslationsPagesLandlordMaintenanceReportEt landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportEt._(_root);
}

// Path: enums
class _TranslationsEnumsEt implements TranslationsEnumsEn {
	_TranslationsEnumsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEnumsPropertyStatusEt propertyStatus = _TranslationsEnumsPropertyStatusEt._(_root);
	@override late final _TranslationsEnumsPropertyTypeEt propertyType = _TranslationsEnumsPropertyTypeEt._(_root);
	@override late final _TranslationsEnumsApplicationStatusEt applicationStatus = _TranslationsEnumsApplicationStatusEt._(_root);
	@override late final _TranslationsEnumsMyRentStatusEt myRentStatus = _TranslationsEnumsMyRentStatusEt._(_root);
	@override late final _TranslationsEnumsMaintenanceStatusEt maintenanceStatus = _TranslationsEnumsMaintenanceStatusEt._(_root);
	@override late final _TranslationsEnumsTenantProfileTypeEt tenantProfileType = _TranslationsEnumsTenantProfileTypeEt._(_root);
	@override late final _TranslationsEnumsTenantTypeEt tenantType = _TranslationsEnumsTenantTypeEt._(_root);
	@override late final _TranslationsEnumsPaymentStatusEt paymentStatus = _TranslationsEnumsPaymentStatusEt._(_root);
	@override late final _TranslationsEnumsPaymentOptionsEt paymentOptions = _TranslationsEnumsPaymentOptionsEt._(_root);
	@override late final _TranslationsEnumsPaymentTypeEt paymentType = _TranslationsEnumsPaymentTypeEt._(_root);
	@override late final _TranslationsEnumsGenderEt gender = _TranslationsEnumsGenderEt._(_root);
	@override late final _TranslationsEnumsEcRelationEt ecRelation = _TranslationsEnumsEcRelationEt._(_root);
	@override late final _TranslationsEnumsVehicleTypeEt vehicleType = _TranslationsEnumsVehicleTypeEt._(_root);
	@override late final _TranslationsEnumsSortByEt sortBy = _TranslationsEnumsSortByEt._(_root);
	@override late final _TranslationsEnumsResidentialTypeEt residentialType = _TranslationsEnumsResidentialTypeEt._(_root);
	@override late final _TranslationsEnumsFloorRangeEt floorRange = _TranslationsEnumsFloorRangeEt._(_root);
	@override late final _TranslationsEnumsFurnishingsEt furnishings = _TranslationsEnumsFurnishingsEt._(_root);
	@override late final _TranslationsEnumsCommercialPropertyTypeEt commercialPropertyType = _TranslationsEnumsCommercialPropertyTypeEt._(_root);
	@override late final _TranslationsEnumsLandPropertyTypeEt landPropertyType = _TranslationsEnumsLandPropertyTypeEt._(_root);
	@override late final _TranslationsEnumsResidentPropertyTypeEt residentPropertyType = _TranslationsEnumsResidentPropertyTypeEt._(_root);
	@override late final _TranslationsEnumsMinimumRentalPeriodEt minimumRentalPeriod = _TranslationsEnumsMinimumRentalPeriodEt._(_root);
	@override late final _TranslationsEnumsDropdownDateFilterEt dropdownDateFilter = _TranslationsEnumsDropdownDateFilterEt._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobileEt implements TranslationsCommonNomineeMobileEn {
	_TranslationsCommonNomineeMobileEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get short => '${_root.common.nominee} Mob. Nr.';
	@override String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoEt implements TranslationsCommonVehiclesInfoEn {
	_TranslationsCommonVehiclesInfoEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get plain => 'Sõidukite info';
	@override String get optional => 'Sõidukite info (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoEt implements TranslationsCommonVehicleRegistrationNoEn {
	_TranslationsCommonVehicleRegistrationNoEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get normal => 'Sõiduki registreerimisnumber';
	@override String get short => 'Registreerimisnumber';
	@override String get alt => 'Numbrimärk';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintEt implements TranslationsExceptionsNoApplicationFoundHintEn {
	_TranslationsExceptionsNoApplicationFoundHintEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String template({required String subject}) => 'Taotlust ei leitud!\n${subject} kuvatakse siin, kui see on saadaval.';
	@override late final _TranslationsExceptionsNoApplicationFoundHintSubjectsEt subjects = _TranslationsExceptionsNoApplicationFoundHintSubjectsEt._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintEt implements TranslationsExceptionsNoPropertyFoundHintEn {
	_TranslationsExceptionsNoPropertyFoundHintEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get landlordHome => 'Kinnisvara ei leitud!\nProovige lisada kinnisvara, et seda siin näha.';
	@override String get tenantRecommended => 'Soovituslikke kinnisvaraobjekte ei leitud\nProovige hiljem uuesti.';
	@override String get tenantAllProperty => 'Kinnisvara pole saadaval\nProovige hiljem uuesti.';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundEt implements TranslationsExceptionsNoStatusMaintenantFoundEn {
	_TranslationsExceptionsNoStatusMaintenantFoundEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String landlord({required Object status}) => 'Ühtegi ${status} hooldust ei leitud.';
	@override String get tenant => 'Hooldust ei leitud! Saate luua hooldustaotluse, et seda siin näha.';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundEt implements TranslationsExceptionsNoStatusRefundReqFoundEn {
	_TranslationsExceptionsNoStatusRefundReqFoundEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String landlord({required Object status}) => 'Ühtegi ${status} tagasimaksetaotlust ei leitud!\nTagasimaksetaotlust on näha siin, kui see on saadaval.';
	@override String get tenant => 'Tagasimaksetaotlust ei leitud!\nSaate luua tagasimaksetaotluse, et seda siin näha.';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintEt implements TranslationsExceptionsRefundRequestHintEn {
	_TranslationsExceptionsRefundRequestHintEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get inTenantList => 'Üürnik kiidab tagasimakse heaks, kui ta raha tagasi saab';
	@override String get tenantReqSuccess => 'Me vaatame tagasimaksetaotluse läbi ja kiidame selle 24 tunni jooksul heaks.';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertyEt implements TranslationsExceptionsEditPropertyEn {
	_TranslationsExceptionsEditPropertyEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get rentalChange => 'Üürikinnisvara muutub. See peab olema kehtiv (jõus) ainult järgmise kuu üüri makse jaoks.';
	@override String get deleteOnRent => 'Teie kinnisvara on juba üürniku poolt üüritud. Seda ei saa kustutada enne, kui üürnik on eemaldatud';
	@override String get alreayRented => 'See kinnisvara on juba üüritud. Proovige hiljem uuesti.\nVõi võtke lisateabe saamiseks ühendust väljarentijaga.';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationEt implements TranslationsExceptionsRentInvitationEn {
	_TranslationsExceptionsRentInvitationEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get landlordNoRentInvitation => 'Rendikutset ei leitud!\nProovige luua rendikutse, et seda siin näha.';
	@override String get tenantNoRentInvitation => 'Rendikutset ei leitud!\nRendikutset on näha siin, kui see on saadaval.';
}

// Path: prompt.logout
class _TranslationsPromptLogoutEt implements TranslationsPromptLogoutEn {
	_TranslationsPromptLogoutEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get title => _root.common.logout;
	@override String get message => 'Kas olete kindel, et soovite välja logida?';
}

// Path: prompt.application
class _TranslationsPromptApplicationEt implements TranslationsPromptApplicationEn {
	_TranslationsPromptApplicationEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get rejectTitle => 'Miks te selle taotluse tagasi lükkate?';
	@override late final _TranslationsPromptApplicationApplicationSentEt applicationSent = _TranslationsPromptApplicationApplicationSentEt._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborEt implements TranslationsPromptLaborEn {
	_TranslationsPromptLaborEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPromptLaborDeleteEt delete = _TranslationsPromptLaborDeleteEt._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestEt implements TranslationsPromptMaintenanceRequestEn {
	_TranslationsPromptMaintenanceRequestEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get rejectTitle => 'Miks see taotlus tagasi lükatakse?';
	@override String get processTitle => 'Kas olete kindel, et töötlete seda hooldustaotlust?';
	@override String get completeTitle => 'Töö lõpetatud?';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodEt implements TranslationsPromptWithdrawMethodEn {
	_TranslationsPromptWithdrawMethodEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get deleteTitle => 'Kustuta väljamakse meetod?';
	@override String get deleteDescription => 'Kas olete kindel, et soovite selle väljamakse meetodi kustutada?';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesEt implements TranslationsPromptUnsavedChangesEn {
	_TranslationsPromptUnsavedChangesEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kas olete kindel, et soovite tagasi minna?';
	@override String get message => 'Muudetud väljad ei salvestata!';
}

// Path: prompt.property
class _TranslationsPromptPropertyEt implements TranslationsPromptPropertyEn {
	_TranslationsPromptPropertyEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPromptPropertyDeleteEt delete = _TranslationsPromptPropertyDeleteEt._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationEt implements TranslationsPromptRentInvitationEn {
	_TranslationsPromptRentInvitationEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPromptRentInvitationLandlordApproveEt landlordApprove = _TranslationsPromptRentInvitationLandlordApproveEt._(_root);
	@override late final _TranslationsPromptRentInvitationTenantAcceptEt tenantAccept = _TranslationsPromptRentInvitationTenantAcceptEt._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredEt implements TranslationsPromptSessionExpiredEn {
	_TranslationsPromptSessionExpiredEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sessioon on aegunud';
	@override String get message => 'Teie sessioon on aegunud. Palun logige uuesti sisse';
	@override String get action => 'Logi sisse';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetEt implements TranslationsPromptNoInternetEn {
	_TranslationsPromptNoInternetEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Internetiühendus puudub';
	@override String get message => 'Palun kontrollige oma Wi-Fi või mobiilivõrgu ühendust ja proovige uuesti';
	@override String get action => 'Proovi uuesti';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerEt implements TranslationsPromptPermissionHandlerEn {
	_TranslationsPromptPermissionHandlerEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Luba on nõutav!';
	@override String get message => 'Peate rakenduse seadetes load andma. Kas soovite seaded nüüd avada?';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerEt implements TranslationsPromptImagePickerEn {
	_TranslationsPromptImagePickerEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Valige valik';
	@override String get gallery => 'Galerii';
	@override String get camera => 'Kaamera';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogEt implements TranslationsPromptVerificationDialogEn {
	_TranslationsPromptVerificationDialogEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kinnitage oma e-post';
	@override String get message => 'Oleme saatnud kinnituskoodi e-kirja';
	@override String messageWithEmail({required String? email}) => '${_root.prompt.verificationDialog.message} aadressile ${email}';
}

// Path: prompt.notification
class _TranslationsPromptNotificationEt implements TranslationsPromptNotificationEn {
	_TranslationsPromptNotificationEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get clearTitle => 'Kustuta teavitused?';
	@override String get clearMessage => 'Kas olete kindel, et soovite kõik teavitused kustutada?';
}

// Path: form.fullName
class _TranslationsFormFullNameEt implements TranslationsFormFullNameEn {
	_TranslationsFormFullNameEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get label => _root.common.fullName;
	@override String get hint => 'Sisestage ${_root.common.fullName}';
	@override late final _TranslationsFormFullNameErrorsEt errors = _TranslationsFormFullNameErrorsEt._(_root);
}

// Path: form.email
class _TranslationsFormEmailEt implements TranslationsFormEmailEn {
	_TranslationsFormEmailEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get label => _root.common.email;
	@override String get hint => 'Sisestage oma ${_root.common.email}';
	@override late final _TranslationsFormEmailErrorsEt errors = _TranslationsFormEmailErrorsEt._(_root);
}

// Path: form.password
class _TranslationsFormPasswordEt implements TranslationsFormPasswordEn {
	_TranslationsFormPasswordEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get label => _root.common.password;
	@override String get hint => '* * * * * * * *';
	@override late final _TranslationsFormPasswordErrorsEt errors = _TranslationsFormPasswordErrorsEt._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordEt implements TranslationsFormConfirmPasswordEn {
	_TranslationsFormConfirmPasswordEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get label => 'Kinnita ${_root.common.password}';
	@override String get hint => '* * * * * * * *';
	@override late final _TranslationsFormConfirmPasswordErrorsEt errors = _TranslationsFormConfirmPasswordErrorsEt._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberEt implements TranslationsFormMobileNumberEn {
	_TranslationsFormMobileNumberEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get label => _root.common.mobileNumber;
	@override String get hint => '(+60) 555-0123';
	@override late final _TranslationsFormMobileNumberErrorsEt errors = _TranslationsFormMobileNumberErrorsEt._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1Et implements TranslationsFormAddress1En {
	_TranslationsFormAddress1Et._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get label => '${_root.common.address} 1';
	@override String get hint => 'Maja number ja tänava nimi';
	@override late final _TranslationsFormAddress1ErrorsEt errors = _TranslationsFormAddress1ErrorsEt._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2Et implements TranslationsFormAddress2En {
	_TranslationsFormAddress2Et._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get label => '${_root.common.address} 2';
	@override String get hint => 'Korter, sviit, üksus jne';
	@override late final _TranslationsFormAddress2ErrorsEt errors = _TranslationsFormAddress2ErrorsEt._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodeEt implements TranslationsFormPostalCodeEn {
	_TranslationsFormPostalCodeEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get label => _root.common.postalCode;
	@override String get hint => 'Sisestage ${_root.common.postalCode}';
	@override late final _TranslationsFormPostalCodeErrorsEt errors = _TranslationsFormPostalCodeErrorsEt._(_root);
}

// Path: form.city
class _TranslationsFormCityEt implements TranslationsFormCityEn {
	_TranslationsFormCityEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get label => _root.common.city;
	@override String get hint => 'Sisestage ${_root.common.city} nimi.';
	@override late final _TranslationsFormCityErrorsEt errors = _TranslationsFormCityErrorsEt._(_root);
}

// Path: form.state
class _TranslationsFormStateEt implements TranslationsFormStateEn {
	_TranslationsFormStateEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get label => _root.common.state;
	@override String get hint => 'Sisestage ${_root.common.state} nimi.';
	@override late final _TranslationsFormStateErrorsEt errors = _TranslationsFormStateErrorsEt._(_root);
}

// Path: form.country
class _TranslationsFormCountryEt implements TranslationsFormCountryEn {
	_TranslationsFormCountryEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get label => _root.common.country;
	@override String get hint => 'Valige ${_root.common.country}.';
	@override late final _TranslationsFormCountryErrorsEt errors = _TranslationsFormCountryErrorsEt._(_root);
}

// Path: form.otp
class _TranslationsFormOtpEt implements TranslationsFormOtpEn {
	_TranslationsFormOtpEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFormOtpErrorsEt errors = _TranslationsFormOtpErrorsEt._(_root);
}

// Path: form.title
class _TranslationsFormTitleEt implements TranslationsFormTitleEn {
	_TranslationsFormTitleEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get label => 'Pealkiri';
	@override String get hint => 'Sisestage pealkiri';
	@override late final _TranslationsFormTitleErrorsEt errors = _TranslationsFormTitleErrorsEt._(_root);
}

// Path: form.date
class _TranslationsFormDateEt implements TranslationsFormDateEn {
	_TranslationsFormDateEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String label({required String label}) => '${label}';
	@override String hint({required String label}) => 'Valige ${_root.form.date.label(label: label)}';
	@override late final _TranslationsFormDateErrorsEt errors = _TranslationsFormDateErrorsEt._(_root);
}

// Path: form.reason
class _TranslationsFormReasonEt implements TranslationsFormReasonEn {
	_TranslationsFormReasonEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get label => 'Põhjus';
	@override String get hint => 'Sisestage põhjus';
	@override late final _TranslationsFormReasonErrorsEt errors = _TranslationsFormReasonErrorsEt._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodEt implements TranslationsFormWithdrawMethodEn {
	_TranslationsFormWithdrawMethodEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get label => _root.common.withdrawMethod;
	@override String get hint => 'Valige ${_root.common.withdrawMethod}';
	@override late final _TranslationsFormWithdrawMethodErrorsEt errors = _TranslationsFormWithdrawMethodErrorsEt._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldEt implements TranslationsFormFileFieldEn {
	_TranslationsFormFileFieldEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String label({required String label}) => '${label}';
	@override String hint({required String label}) => 'Laadige üles ${label}';
	@override late final _TranslationsFormFileFieldErrorsEt errors = _TranslationsFormFileFieldErrorsEt._(_root);
}

// Path: form.note
class _TranslationsFormNoteEt implements TranslationsFormNoteEn {
	_TranslationsFormNoteEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String label({required String note}) => '${note}';
	@override String hint({required String note}) => 'Sisestage ${_root.form.note.label(note: note)}';
	@override late final _TranslationsFormNoteErrorsEt errors = _TranslationsFormNoteErrorsEt._(_root);
}

// Path: form.gender
class _TranslationsFormGenderEt implements TranslationsFormGenderEn {
	_TranslationsFormGenderEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get label => _root.common.gender;
	@override String get hint => 'Valige ${_root.common.gender}';
	@override late final _TranslationsFormGenderErrorsEt errors = _TranslationsFormGenderErrorsEt._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldEt implements TranslationsFormAnyFieldEn {
	_TranslationsFormAnyFieldEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String label({required String label}) => '${label}';
	@override String hint({required String label}) => 'Sisestage ${_root.form.anyField.label(label: label)}';
	@override late final _TranslationsFormAnyFieldErrorsEt errors = _TranslationsFormAnyFieldErrorsEt._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownEt implements TranslationsFormAnyDropdownEn {
	_TranslationsFormAnyDropdownEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String label({required String label}) => '${label}';
	@override String hint({required String label}) => 'Valige ${_root.form.anyDropdown.label(label: label)}';
	@override late final _TranslationsFormAnyDropdownErrorsEt errors = _TranslationsFormAnyDropdownErrorsEt._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguageEt implements TranslationsPagesLanguageEn {
	_TranslationsPagesLanguageEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardEt implements TranslationsPagesOnboardEn {
	_TranslationsPagesOnboardEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesOnboardOnboardDataEt onboardData = _TranslationsPagesOnboardOnboardDataEt._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInEt implements TranslationsPagesSignInEn {
	_TranslationsPagesSignInEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tere tulemast tagasi';
	@override String get subtitle => 'Logige kohe sisse, et alustada imelist teekonda.';
	@override late final _TranslationsPagesSignInExtraEt extra = _TranslationsPagesSignInExtraEt._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordEt implements TranslationsPagesForgotPasswordEn {
	_TranslationsPagesForgotPasswordEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unustasin parooli';
	@override String get subtitle => 'Sisestage oma e-posti aadress, et oma parooli taastada.';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationEt implements TranslationsPagesOtpVerificationEn {
	_TranslationsPagesOtpVerificationEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kinnitus';
	@override String subtitle({required String email}) => '4-kohaline PIN-kood on saadetud teie e-posti aadressile. ${email}';
	@override late final _TranslationsPagesOtpVerificationExtraEt extra = _TranslationsPagesOtpVerificationExtraEt._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordEt implements TranslationsPagesResetPasswordEn {
	_TranslationsPagesResetPasswordEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Parooli lähtestamine';
	@override String get subtitle => 'Lähtestage oma parool, et see taastada ja oma kontole sisse logida';
	@override late final _TranslationsPagesResetPasswordExtraEt extra = _TranslationsPagesResetPasswordExtraEt._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpEt implements TranslationsPagesSignUpEn {
	_TranslationsPagesSignUpEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Loo konto';
	@override String get subtitle => 'Registreeruge kohe, et alustada imelist teekonda';
	@override late final _TranslationsPagesSignUpExtraEt extra = _TranslationsPagesSignUpExtraEt._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomeEt implements TranslationsPagesWelcomeEn {
	_TranslationsPagesWelcomeEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kes sa oled?';
	@override String get subtitle => 'Palun valige allolev valik.';
	@override late final _TranslationsPagesWelcomeExtraEt extra = _TranslationsPagesWelcomeExtraEt._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsEt implements TranslationsPagesAboutUsEn {
	_TranslationsPagesAboutUsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsEt implements TranslationsPagesTermsAndConditionsEn {
	_TranslationsPagesTermsAndConditionsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListEt implements TranslationsPagesNotificationListEn {
	_TranslationsPagesNotificationListEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get appbarTitle => 'Teavitused';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsEt implements TranslationsPagesContactUsEn {
	_TranslationsPagesContactUsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get appbarTitle => _root.common.contactUs;
	@override late final _TranslationsPagesContactUsExtraEt extra = _TranslationsPagesContactUsExtraEt._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingEt implements TranslationsPagesCancelRentingEn {
	_TranslationsPagesCancelRentingEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get appbarTitle => _root.common.cancelRenting;
	@override String get title => 'Miks te ${_root.common.cancelRenting}?';
	@override late final _TranslationsPagesCancelRentingFormEt form = _TranslationsPagesCancelRentingFormEt._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsEt implements TranslationsPagesInvoiceDetailsEn {
	_TranslationsPagesInvoiceDetailsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentEt implements TranslationsPagesOfflinePaymentEn {
	_TranslationsPagesOfflinePaymentEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get appbarTitle => 'Offline makse';
	@override late final _TranslationsPagesOfflinePaymentFormEt form = _TranslationsPagesOfflinePaymentFormEt._(_root);
	@override late final _TranslationsPagesOfflinePaymentExtraEt extra = _TranslationsPagesOfflinePaymentExtraEt._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusEt implements TranslationsPagesPaymentStatusEn {
	_TranslationsPagesPaymentStatusEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesPaymentStatusSuccessEt success = _TranslationsPagesPaymentStatusSuccessEt._(_root);
	@override late final _TranslationsPagesPaymentStatusFailEt fail = _TranslationsPagesPaymentStatusFailEt._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsEt implements TranslationsPagesPropertyDetailsEn {
	_TranslationsPagesPropertyDetailsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesPropertyDetailsExtraEt extra = _TranslationsPagesPropertyDetailsExtraEt._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchEt implements TranslationsPagesSearchEn {
	_TranslationsPagesSearchEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get appbarTitle => 'Otsing';
	@override late final _TranslationsPagesSearchExtraEt extra = _TranslationsPagesSearchExtraEt._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanEt implements TranslationsPagesSubscriptionPlanEn {
	_TranslationsPagesSubscriptionPlanEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get appbarTitle => 'Valige oma plaan';
	@override late final _TranslationsPagesSubscriptionPlanExtraEt extra = _TranslationsPagesSubscriptionPlanExtraEt._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportEt implements TranslationsPagesLandlordMaintenanceReportEn {
	_TranslationsPagesLandlordMaintenanceReportEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(children: [
		const TextSpan(text: 'Hoolduskulud kokku: '),
		amount,
	]);
	@override String get maintenancePending => '${_root.common.maintenance} ${_root.enums.maintenanceStatus.pending}';
	@override String get maintenanceProcessing => '${_root.common.maintenance} ${_root.enums.maintenanceStatus.processing}';
	@override String get maintenanceCompleted => '${_root.common.maintenance} ${_root.enums.maintenanceStatus.completed}';
	@override String get maintenanceRejected => '${_root.common.maintenance} ${_root.enums.maintenanceStatus.rejected}';
}

// Path: enums.propertyStatus
class _TranslationsEnumsPropertyStatusEt implements TranslationsEnumsPropertyStatusEn {
	_TranslationsEnumsPropertyStatusEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get allProperty => 'Kogu kinnisvara';
	@override String get pending => 'Ootel';
	@override String get active => 'Aktiivne';
	@override String get inactive => 'Inaktiivne';
	@override String get rejected => 'Tagasi lükatud';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypeEt implements TranslationsEnumsPropertyTypeEn {
	_TranslationsEnumsPropertyTypeEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get apartmentCondominium => 'Korter/Korterelamu';
	@override String get house => 'Maja';
	@override String get commercialProperty => 'Äripind';
	@override String get land => 'Maa';
	@override String get room => 'Tuba';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusEt implements TranslationsEnumsApplicationStatusEn {
	_TranslationsEnumsApplicationStatusEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get all => 'Kõik';
	@override String get pending => 'Ootel';
	@override String get processing => 'Töötlemisel';
	@override String get approved => 'Kinnitatud';
	@override String get rejected => 'Tagasi lükatud';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusEt implements TranslationsEnumsMyRentStatusEn {
	_TranslationsEnumsMyRentStatusEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get pending => 'Ootel';
	@override String get processing => 'Töötlemisel';
	@override String get active => 'Aktiivne';
	@override String get expired => 'Aegunud';
	@override String get cancelled => 'Tühistatud';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusEt implements TranslationsEnumsMaintenanceStatusEn {
	_TranslationsEnumsMaintenanceStatusEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get pending => 'Ootel';
	@override String get processing => 'Töötlemisel';
	@override String get rejected => 'Tagasi lükatud';
	@override String get completed => 'Lõpetatud';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypeEt implements TranslationsEnumsTenantProfileTypeEn {
	_TranslationsEnumsTenantProfileTypeEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get privateIndividual => 'Era (Isik)';
	@override String get company => 'Ettevõte';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypeEt implements TranslationsEnumsTenantTypeEn {
	_TranslationsEnumsTenantTypeEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get newTenant => 'Uus üürnik';
	@override String get activeTenant => 'Aktiivne üürnik';
	@override String get expiredTenant => 'Aegunud üürnik';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusEt implements TranslationsEnumsPaymentStatusEn {
	_TranslationsEnumsPaymentStatusEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get all => 'Kõik';
	@override String get pending => 'Ootel';
	@override String get paid => 'Makstud';
	@override String get unpaid => 'Maksmata';
	@override String get rejected => 'Tagasi lükatud';
	@override String get refund => 'Tagasimakse';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsEt implements TranslationsEnumsPaymentOptionsEn {
	_TranslationsEnumsPaymentOptionsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get onlinePayment => 'Online makse';
	@override String get offlinePayment => 'Offline makse';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypeEt implements TranslationsEnumsPaymentTypeEn {
	_TranslationsEnumsPaymentTypeEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get securityDeposit => 'Tagatisraha';
	@override String get rentPayment => 'Üüri makse';
	@override String get subscription => 'Tellimus';
}

// Path: enums.gender
class _TranslationsEnumsGenderEt implements TranslationsEnumsGenderEn {
	_TranslationsEnumsGenderEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get male => 'Mees';
	@override String get female => 'Naine';
	@override String get other => 'Muu';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationEt implements TranslationsEnumsEcRelationEn {
	_TranslationsEnumsEcRelationEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get wife => 'Abikaasa';
	@override String get parent => 'Vanem';
	@override String get friend => 'Sõber';
	@override String get brother => 'Vend';
	@override String get sister => 'Õde';
	@override String get child => 'Laps';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypeEt implements TranslationsEnumsVehicleTypeEn {
	_TranslationsEnumsVehicleTypeEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get car => 'Auto';
	@override String get motorcycles => 'Mootorrattad';
	@override String get lorry => 'Veoauto';
}

// Path: enums.sortBy
class _TranslationsEnumsSortByEt implements TranslationsEnumsSortByEn {
	_TranslationsEnumsSortByEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get lowToHigh => 'Madalaimast kõrgeimani';
	@override String get highToLow => 'Kõrgeimast madalaimani';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypeEt implements TranslationsEnumsResidentialTypeEn {
	_TranslationsEnumsResidentialTypeEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get flat => 'Korter';
	@override String get apartment => 'Korter';
	@override String get condominium => 'Korterelamu';
	@override String get serviceResidence => 'Teeninduskorter';
	@override String get studio => 'Stuudio';
	@override String get duplex => 'Dupleks';
	@override String get townhouseCondo => 'Ridaelamukorter';
	@override String get others => 'Muu';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangeEt implements TranslationsEnumsFloorRangeEn {
	_TranslationsEnumsFloorRangeEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get high => 'Kõrge';
	@override String get medium => 'Keskmine';
	@override String get low => 'Madal';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsEt implements TranslationsEnumsFurnishingsEn {
	_TranslationsEnumsFurnishingsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get fullyFurnished => 'Täielikult möbleeritud';
	@override String get partiallyFurnished => 'Osaliselt möbleeritud';
	@override String get notFurnished => 'Mööbleerimata';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypeEt implements TranslationsEnumsCommercialPropertyTypeEn {
	_TranslationsEnumsCommercialPropertyTypeEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get officeSpace => 'Kontoripind';
	@override String get retailSpace => 'Müügipind';
	@override String get shopLot => 'Kauplus';
	@override String get warehouseFactory => 'Ladu / Tehas';
	@override String get hotelResort => 'Hotell / Puhkekeskus';
	@override String get sofo => 'SOFO';
	@override String get soho => 'SOHO';
	@override String get sovo => 'SOVO';
	@override String get others => 'Muu';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypeEt implements TranslationsEnumsLandPropertyTypeEn {
	_TranslationsEnumsLandPropertyTypeEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get residential => 'Elamumaa';
	@override String get industrial => 'Tööstusmaa';
	@override String get agricultural => 'Põllumajandusmaa';
	@override String get commercial => 'Ärimaa';
	@override String get mixedDevelopment => 'Segakasutusala';
	@override String get others => 'Muu';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypeEt implements TranslationsEnumsResidentPropertyTypeEn {
	_TranslationsEnumsResidentPropertyTypeEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get condo => 'Korterelamu / Teeninduskorter / Katusekorter';
	@override String get apartment => 'Korter';
	@override String get house => 'Maja';
	@override String get shoplot => 'Kauplus';
	@override String get sharing => 'Maja / Korteri jagamine';
	@override String get others => 'Muu';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodEt implements TranslationsEnumsMinimumRentalPeriodEn {
	_TranslationsEnumsMinimumRentalPeriodEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get sixMonths => '6 kuud';
	@override String get oneYear => '1 aasta';
	@override String get oneAndHalfYears => '1,5 aastat';
	@override String get twoYears => '2 aastat';
	@override String get twoAndHalfYears => '2,5 aastat';
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterEt implements TranslationsEnumsDropdownDateFilterEn {
	_TranslationsEnumsDropdownDateFilterEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get daily => 'Päevaselt';
	@override String get weekly => 'Nädalaselt';
	@override String get monthly => 'Kuuselt';
	@override String get yearly => 'Aastaselt';
	@override String get custom => 'Kohandatud';
}

// Path: exceptions.noApplicationFoundHint.subjects
class _TranslationsExceptionsNoApplicationFoundHintSubjectsEt implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
	_TranslationsExceptionsNoApplicationFoundHintSubjectsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get tenant => 'Teie taotlus';
	@override String get landlord => 'Üürniku taotlus';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentEt implements TranslationsPromptApplicationApplicationSentEn {
	_TranslationsPromptApplicationApplicationSentEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get successfully => 'Taotlus on edukalt saadetud!';
	@override String get sucessDescription => 'Näete seda taotlust oma taotluste loendis';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeleteEt implements TranslationsPromptLaborDeleteEn {
	_TranslationsPromptLaborDeleteEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kustuta tööjõud?';
	@override String get description => 'Kas olete kindel, et soovite selle tööjõu kustutada?';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeleteEt implements TranslationsPromptPropertyDeleteEn {
	_TranslationsPromptPropertyDeleteEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kustuta kinnisvara?';
	@override String get message => 'Kas olete kindel, et soovite selle kinnisvara kustutada?';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApproveEt implements TranslationsPromptRentInvitationLandlordApproveEn {
	_TranslationsPromptRentInvitationLandlordApproveEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kas olete kindel, et soovite selle üüri kinnitada?';
	@override String get description => 'Veenduge, et olete läbi vaadanud üürniku poolt allkirjastatud lepingu.';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptEt implements TranslationsPromptRentInvitationTenantAcceptEn {
	_TranslationsPromptRentInvitationTenantAcceptEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kas olete kindel, et soovite selle kutse vastu võtta?';
	@override String get description => 'Veenduge, et olete lepingu PDF-faili alla laadinud!';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsEt implements TranslationsFormFullNameErrorsEn {
	_TranslationsFormFullNameErrorsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get required => 'Palun sisestage oma ${_root.common.fullName}';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsEt implements TranslationsFormEmailErrorsEn {
	_TranslationsFormEmailErrorsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get required => 'Palun sisestage oma ${_root.common.email} aadress';
	@override String get invalid => '⦸ Vigane e-posti aadress, proovige uuesti';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsEt implements TranslationsFormPasswordErrorsEn {
	_TranslationsFormPasswordErrorsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get required => 'Palun sisestage oma ${_root.common.password}';
	@override String minLength({required Object count}) => 'Parool peab olema vähemalt ${count} tähemärki pikk!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsEt implements TranslationsFormConfirmPasswordErrorsEn {
	_TranslationsFormConfirmPasswordErrorsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get required => 'Palun sisestage oma ${_root.common.password}';
	@override String get notMatched => 'Kinnitatud parool ei ühti!';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsEt implements TranslationsFormMobileNumberErrorsEn {
	_TranslationsFormMobileNumberErrorsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get required => 'Palun sisestage oma ${_root.common.mobileNumber}';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsEt implements TranslationsFormAddress1ErrorsEn {
	_TranslationsFormAddress1ErrorsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get required => 'Palun sisestage oma ${_root.form.address1.label}';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsEt implements TranslationsFormAddress2ErrorsEn {
	_TranslationsFormAddress2ErrorsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get required => 'Palun sisestage oma ${_root.form.address2.label}';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsEt implements TranslationsFormPostalCodeErrorsEn {
	_TranslationsFormPostalCodeErrorsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get required => 'Palun sisestage oma ${_root.common.postalCode}';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsEt implements TranslationsFormCityErrorsEn {
	_TranslationsFormCityErrorsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get required => 'Palun sisestage oma ${_root.common.city} nimi.';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsEt implements TranslationsFormStateErrorsEn {
	_TranslationsFormStateErrorsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get required => 'Palun sisestage oma ${_root.common.state} nimi.';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsEt implements TranslationsFormCountryErrorsEn {
	_TranslationsFormCountryErrorsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get required => 'Palun valige oma ${_root.common.country}';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsEt implements TranslationsFormOtpErrorsEn {
	_TranslationsFormOtpErrorsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get required => 'Palun sisestage OTP.';
	@override String get invalid => 'Palun sisestage õige OTP.';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsEt implements TranslationsFormTitleErrorsEn {
	_TranslationsFormTitleErrorsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get required => 'Palun sisestage pealkiri';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsEt implements TranslationsFormDateErrorsEn {
	_TranslationsFormDateErrorsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String required({required String label}) => 'Palun valige ${_root.form.date.label(label: label)}';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsEt implements TranslationsFormReasonErrorsEn {
	_TranslationsFormReasonErrorsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get required => 'Palun sisestage põhjus';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsEt implements TranslationsFormWithdrawMethodErrorsEn {
	_TranslationsFormWithdrawMethodErrorsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get required => 'Palun valige ${_root.common.withdrawMethod}';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsEt implements TranslationsFormFileFieldErrorsEn {
	_TranslationsFormFileFieldErrorsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String required({required String label}) => 'Palun valige ${label}';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsEt implements TranslationsFormNoteErrorsEn {
	_TranslationsFormNoteErrorsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String required({required String note}) => 'Palun sisestage ${_root.form.note.label(note: note)}';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsEt implements TranslationsFormGenderErrorsEn {
	_TranslationsFormGenderErrorsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get required => 'Palun valige ${_root.common.gender}';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsEt implements TranslationsFormAnyFieldErrorsEn {
	_TranslationsFormAnyFieldErrorsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String required({required String label}) => 'Palun sisestage ${_root.form.anyField.label(label: label)}';
	@override String get invalid => 'Palun sisestage kehtiv @form.anyField.label';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsEt implements TranslationsFormAnyDropdownErrorsEn {
	_TranslationsFormAnyDropdownErrorsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String required({required String label}) => 'Palun valige ${_root.form.anyDropdown.label(label: label)}';
	@override String get invalid => 'Palun valige kehtiv @form.anyDropdown.label';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataEt implements TranslationsPagesOnboardOnboardDataEn {
	_TranslationsPagesOnboardOnboardDataEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesOnboardOnboardDataData1Et data1 = _TranslationsPagesOnboardOnboardDataData1Et._(_root);
	@override late final _TranslationsPagesOnboardOnboardDataData2Et data2 = _TranslationsPagesOnboardOnboardDataData2Et._(_root);
	@override late final _TranslationsPagesOnboardOnboardDataData3Et data3 = _TranslationsPagesOnboardOnboardDataData3Et._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraEt implements TranslationsPagesSignInExtraEn {
	_TranslationsPagesSignInExtraEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get rememberMe => 'Mäleta mind';
	@override TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(children: [
		const TextSpan(text: 'Kas sul pole kontot? '),
		getStarted(_root.action.getStarted),
	]);
	@override String get forgotPassword => '${_root.common.forgotPassword}?';
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraEt implements TranslationsPagesOtpVerificationExtraEn {
	_TranslationsPagesOtpVerificationExtraEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesOtpVerificationExtraCodeResendEt codeResend = _TranslationsPagesOtpVerificationExtraCodeResendEt._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraEt implements TranslationsPagesResetPasswordExtraEn {
	_TranslationsPagesResetPasswordExtraEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesResetPasswordExtraDialogEt dialog = _TranslationsPagesResetPasswordExtraDialogEt._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraEt implements TranslationsPagesSignUpExtraEn {
	_TranslationsPagesSignUpExtraEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(children: [
		const TextSpan(text: 'Kas sul on konto? '),
		signIn(_root.action.signIn),
	]);
}

// Path: pages.welcome.extra
class _TranslationsPagesWelcomeExtraEt implements TranslationsPagesWelcomeExtraEn {
	_TranslationsPagesWelcomeExtraEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get landlordTag => 'Hallake oma kinnisvara';
	@override String get tenantTag => 'Logige sisse oma üürikontole';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraEt implements TranslationsPagesContactUsExtraEn {
	_TranslationsPagesContactUsExtraEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get messageHint => 'Sõnum...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormEt implements TranslationsPagesCancelRentingFormEn {
	_TranslationsPagesCancelRentingFormEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesCancelRentingFormReasonEt reason = _TranslationsPagesCancelRentingFormReasonEt._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormEt implements TranslationsPagesOfflinePaymentFormEn {
	_TranslationsPagesOfflinePaymentFormEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesOfflinePaymentFormPaymentNoteEt paymentNote = _TranslationsPagesOfflinePaymentFormPaymentNoteEt._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraEt implements TranslationsPagesOfflinePaymentExtraEn {
	_TranslationsPagesOfflinePaymentExtraEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override TextSpan payAmount({required InlineSpan amount}) => TextSpan(children: [
		const TextSpan(text: 'Makstav summa: '),
		amount,
	]);
	@override String get accountHolderName => 'Konto omaniku nimi';
	@override String get accountNumber => 'Kontonumber';
	@override String get swiftCode => 'SWIFT-kood';
	@override String get branch => 'Filiaal';
	@override TextSpan fileTypeHint({required InlineSpanBuilder fileType, required InlineSpanBuilder fileSize}) => TextSpan(children: [
		const TextSpan(text: 'Valige ainult '),
		fileType('JPG, PNG, PDF'),
		const TextSpan(text: ' või '),
		fileType('DOC'),
		const TextSpan(text: '-vormingus failid. Faili suurus '),
		fileSize('2000 KB'),
	]);
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessEt implements TranslationsPagesPaymentStatusSuccessEn {
	_TranslationsPagesPaymentStatusSuccessEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get actionButton => 'Vaata arvet';
	@override String get title => _root.common.thankYou;
	@override String get description => 'Me vaatame makse läbi ja kinnitame selle 24 tunni jooksul.';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailEt implements TranslationsPagesPaymentStatusFailEn {
	_TranslationsPagesPaymentStatusFailEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get actionButton => 'Proovi uuesti';
	@override String get title => 'Oih! Makse ebaõnnestus';
	@override String get description => 'Teie tehing ebaõnnestus mõne tehnilise vea tõttu.';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraEt implements TranslationsPagesPropertyDetailsExtraEn {
	_TranslationsPagesPropertyDetailsExtraEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override TextSpan landlord({required InlineSpan landlordName}) => TextSpan(children: [
		TextSpan(text: '${_root.common.landlord}: '),
		landlordName,
	]);
	@override TextSpan ratingReviews({required InlineSpan rating, required InlineSpanBuilder reviews}) => TextSpan(children: [
		rating,
		const TextSpan(text: ' '),
		reviews(_root.common.reviews),
	]);
	@override TextSpan features({required InlineSpanBuilder fa}) => TextSpan(children: [
		const TextSpan(text: 'Funktsioonid '),
		fa('(Mugavused ja teenused)'),
	]);
	@override String get selectRentalPeriod => 'Valige rendiperiood';
	@override String get writeAReview => '+ Kirjuta arvustus';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraEt implements TranslationsPagesSearchExtraEn {
	_TranslationsPagesSearchExtraEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get hint => 'Otsige krunte, kortereid, tube...';
	@override String get noRecentSearch => 'Teil pole hiljutisi otsinguid.';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraEt implements TranslationsPagesSubscriptionPlanExtraEn {
	_TranslationsPagesSubscriptionPlanExtraEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get subscriptionPaymentSuccess => 'Tellimuse makse õnnestus.\nNüüd pääsete tellitud funktsioonidele juurde.';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1Et implements TranslationsPagesOnboardOnboardDataData1En {
	_TranslationsPagesOnboardOnboardDataData1Et._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Leia oma kinnisvara';
	@override String get description => 'Oleme muutnud imelihtsaks endale sobiva koha leidmise – olgu selleks siis tuba, korter või maja.';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2Et implements TranslationsPagesOnboardOnboardDataData2En {
	_TranslationsPagesOnboardOnboardDataData2Et._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Korter linnas';
	@override String get description => 'Säästame teie aega, sobitades teid kiiresti ideaalse kinnisvaraga, enne kui see kaob, et saaksite oma uut kodu nautida või omaenda tasuta loetleda.';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3Et implements TranslationsPagesOnboardOnboardDataData3En {
	_TranslationsPagesOnboardOnboardDataData3Et._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Teie mugavusmaja';
	@override String get description => 'Kui otsite elukohta, siis vaadake meie üürile antavaid maju. Meil on lai valik maju, mille vahel saate valida üle kogu riigi.';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendEt implements TranslationsPagesOtpVerificationExtraCodeResendEn {
	_TranslationsPagesOtpVerificationExtraCodeResendEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String codeSendIn({required Object minutes, required Object seconds}) => 'Kood saadetakse ${minutes}:${seconds} pärast';
	@override TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(children: [
		const TextSpan(text: ' '),
		resendCode('Saada kood uuesti'),
		const TextSpan(text: ' '),
	]);
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogEt implements TranslationsPagesResetPasswordExtraDialogEn {
	_TranslationsPagesResetPasswordExtraDialogEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Edukalt muudetud!';
	@override String get subtitle => 'Logige sisse oma uue parooliga.\nTeid suunatakse sisselogimisele...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonEt implements TranslationsPagesCancelRentingFormReasonEn {
	_TranslationsPagesCancelRentingFormReasonEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get hint => 'Kirjuta põhjus';
	@override late final _TranslationsPagesCancelRentingFormReasonErrorsEt errors = _TranslationsPagesCancelRentingFormReasonErrorsEt._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNoteEt implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
	_TranslationsPagesOfflinePaymentFormPaymentNoteEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get label => 'Makse märkus (${_root.common.optional})';
	@override String get hint => 'Sisestage mõni tekst...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsEt implements TranslationsPagesCancelRentingFormReasonErrorsEn {
	_TranslationsPagesCancelRentingFormReasonErrorsEt._(this._root);

	final TranslationsEt _root; // ignore: unused_field

	// Translations
	@override String get required => 'Palun sisestage üüri tühistamise põhjus';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsEt {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'common.profile': return 'Profiil';
			case 'common.language': return 'Keel';
			case 'common.subscriptionPlan': return 'Tellimusplaan';
			case 'common.contactUs': return 'Võta meiega ühendust';
			case 'common.termsAndConditions': return 'Kasutustingimused';
			case 'common.aboutUs': return 'Meist';
			case 'common.logout': return 'Logi välja';
			case 'common.editProfile': return 'Muuda profiili';
			case 'common.fullName': return 'Täisnimi';
			case 'common.email': return 'E-post';
			case 'common.mobileNumber': return 'Mobiiltelefoni number';
			case 'common.address': return 'Aadress';
			case 'common.postalCode': return 'Postiindeks';
			case 'common.city': return 'Linn';
			case 'common.country': return 'Riik';
			case 'common.state': return 'Maakond';
			case 'common.password': return 'Parool';
			case 'common.forgotPassword': return 'Unustasin parooli';
			case 'common.tenant': return 'Üürnik';
			case 'common.landlord': return 'Väljarent';
			case 'common.cancelRenting': return 'Tühista rentimine';
			case 'common.startDate': return 'Alguskuupäev';
			case 'common.endDate': return 'Lõppkuupäev';
			case 'common.fromDate': return 'Alates kuupäevast';
			case 'common.toDate': return 'Kuni kuupäevani';
			case 'common.online': return 'Veebis';
			case 'common.bankList': return 'Pankade loetelu';
			case 'common.withdrawMethod': return 'Väljamakse meetod';
			case 'common.uploadPaymentReceipt': return 'Laadi üles maksekviitung';
			case 'common.offlinePaymentNote': return ({required InlineSpanBuilder note, required InlineSpanBuilder duraion}) => TextSpan(children: [
				const TextSpan(text: 'Märkus: '),
				note('Makse vajab käsitsi kinnitamist administraatori poolt'),
				const TextSpan(text: ' '),
				duraion('24–48 tunni jooksul.'),
			]);
			case 'common.reviews': return 'Arvustused';
			case 'common.description': return 'Kirjeldus';
			case 'common.about': return 'Umbes';
			case 'common.propertyTypes': return 'Kinnisvaratüübid';
			case 'common.features': return 'Funktsioonid';
			case 'common.floorPlans': return 'Põrandaplaanid';
			case 'common.buildingDetails': return 'Hoone üksikasjad';
			case 'common.buildingName': return 'Hoone nimi';
			case 'common.propertyAddress': return 'Kinnisvara aadress';
			case 'common.completionYear': return 'Valmimisaasta';
			case 'common.lotNumber': return 'Krundi number';
			case 'common.residentialType': return 'Elamutüüp';
			case 'common.furnishings': return 'Sisustus';
			case 'common.floorRange': return 'Korrus';
			case 'common.bedrooms': return 'Magamistoad';
			case 'common.bathrooms': return 'Vannitoad';
			case 'common.propertySize': return 'Kinnisvara suurus';
			case 'common.rentalPeriod': return 'Rendilepingu periood';
			case 'common.securityDeposit': return 'Tagatisraha';
			case 'common.utilityBill': return 'Kommunaalteenuste arve';
			case 'common.facilities': return 'Rajatised';
			case 'common.amenities': return 'Mugavused';
			case 'common.expiringReason': return 'Aegumise põhjus';
			case 'common.tenantDetails': return 'Üürniku andmed';
			case 'common.typeOfTenant': return 'Üürniku tüüp';
			case 'common.tenantName': return 'Üürniku nimi';
			case 'common.nidPassport': return 'NID/Pass';
			case 'common.nidPassportId': return '${_root.common.nidPassport} ID';
			case 'common.tenantId': return 'Üürniku ID';
			case 'common.dateOfBirth': return 'Sünnikuupäev';
			case 'common.gender': return 'Sugu';
			case 'common.nominee': return 'Kandidaat';
			case 'common.name': return 'Nimi';
			case 'common.optional': return 'Valikuline';
			case 'common.nomineeName': return '${_root.common.nominee} ${_root.common.name}';
			case 'common.nomineeEmail': return '${_root.common.nominee} ${_root.common.email}';
			case 'common.nomineeMobile.short': return '${_root.common.nominee} Mob. Nr.';
			case 'common.nomineeMobile.full': return '${_root.common.nominee} ${_root.common.mobileNumber}';
			case 'common.emergencyContact': return 'Hädaabikontakt';
			case 'common.relation': return 'Suhe';
			case 'common.relationWith': return '${_root.common.relation} With';
			case 'common.relationWithYou': return '${_root.common.relationWith} Sinuga';
			case 'common.company': return 'Ettevõte';
			case 'common.companyName': return '${_root.common.company} ${_root.common.name}';
			case 'common.companySSMNo': return '${_root.common.company} SSM Nr.';
			case 'common.workplace': return 'Töökoht';
			case 'common.officePhoneNo': return 'Kontori telefoninumber';
			case 'common.officeMobileNo': return 'Kontori ${_root.common.mobileNumber}';
			case 'common.vehicle': return 'Sõiduk';
			case 'common.vehiclesInfo.plain': return 'Sõidukite info';
			case 'common.vehiclesInfo.optional': return 'Sõidukite info (${_root.common.optional})';
			case 'common.vehiclesType': return '${_root.common.vehicle} Type';
			case 'common.vehicleRegistrationNo.normal': return 'Sõiduki registreerimisnumber';
			case 'common.vehicleRegistrationNo.short': return 'Registreerimisnumber';
			case 'common.vehicleRegistrationNo.alt': return 'Numbrimärk';
			case 'common.vehicleBrand': return '${_root.common.vehicle} Mark';
			case 'common.rentProperty': return 'Kinnisvara rentimine';
			case 'common.propertyDetails': return 'Kinnisvara andmed';
			case 'common.propertyId': return 'Kinnisvara ID';
			case 'common.propertyType': return 'Kinnisvara tüüp';
			case 'common.propertyName': return 'Kinnisvara nimi';
			case 'common.paymentDetails': return 'Makse andmed';
			case 'common.monthlyRent': return 'Igakuine üür';
			case 'common.thisMonthPayment': return 'Selle kuu makse';
			case 'common.totalPaidRent': return 'Kokku makstud üür';
			case 'common.dueRent': return 'Võlgnetav üür';
			case 'common.rentStartDate': return 'Üür ${_root.common.startDate}';
			case 'common.rentEndDate': return 'Üür ${_root.common.endDate}';
			case 'common.status': return 'Staatus';
			case 'common.rentAgreementPdf': return 'Rendilepingu PDF';
			case 'common.noFile': return 'Fail puudub';
			case 'common.tenantImageOp': return 'Üürniku pilt ${_root.common.optional}';
			case 'common.addNewVechicle': return 'Lisa uus sõiduk';
			case 'common.uploadNidPassport': return 'Laadi üles NID/Pass';
			case 'common.nidPassportUploadNote': return 'Ainult failitüübi pilt aktsepteeritakse. Failipiirang kuni 2,5 MB.';
			case 'common.search': return 'Otsi';
			case 'common.sortBy': return 'Sorteeri';
			case 'common.subscription': return 'Tellimus';
			case 'common.downloading': return 'Allalaadimine...';
			case 'common.downloadSuccess': return 'Fail on edukalt alla laaditud!';
			case 'common.addPropertyBannerTitle': return 'Kas soovite oma kinnisvara välja rentida?';
			case 'common.application': return 'Taotlus';
			case 'common.tenantHasPaidDeposit': return 'Üürnik on tagatisraha maksnud.';
			case 'common.askProcessingRentApplication': return 'Kas olete kindel, et soovite seda taotlust rentimiseks kinnisvaraks töödelda?';
			case 'common.dateAndTime': return 'Kuupäev ja aeg';
			case 'common.applicationDetails': return 'Taotluse andmed';
			case 'common.depositStatus': return 'Tagatisraha staatus';
			case 'common.uploadRentAgreement': return 'Laadi üles rendileping';
			case 'common.uploadFilePDF': return 'Laadi üles fail (PDF)';
			case 'common.askSelectRentAgreement': return 'Valige lepingu dokumendi fail.';
			case 'common.landlordRentAgreementPDF': return 'Väljarenti rendilepingu PDF';
			case 'common.tenantRentAgreementPDF': return 'Üürniku rendilepingu PDF';
			case 'common.landlordApplicationApproveNote': return ({required InlineSpanBuilder note}) => TextSpan(children: [
				const TextSpan(text: 'Märkus: '),
				note('Kinnitage taotlus alles pärast seda, kui üürnik on tagatisraha maksnud.'),
			]);
			case 'common.reasonOfRejection': return 'Aegumise põhjus';
			case 'common.youveRejectedThisApplication': return 'Olete selle taotluse tagasi lükanud';
			case 'common.landlordDetails': return 'Väljarenti andmed';
			case 'common.landlordName': return 'Väljarenti nimi';
			case 'common.downloadRentAgreement': return 'Laadi alla rendileping';
			case 'common.acceptTermsConditions': return ({required InlineSpanBuilder toc}) => TextSpan(children: [
				const TextSpan(text: 'Nõustun '),
				toc('Kasutustingimustega'),
			]);
			case 'common.tenantAgreementSignNote1': return ({required InlineSpanBuilder note}) => TextSpan(children: [
				const TextSpan(text: 'Märkus: '),
				note('Laadige leping alla ja lugege see läbi. Saatke allkirjastatud leping WhatsAppi või e-posti teel väljarentile.'),
			]);
			case 'common.tenantAgreementSignNote2': return ({required InlineSpanBuilder note}) => TextSpan(children: [
				const TextSpan(text: 'Märkus: '),
				note('Väljarent kinnitab taotluse, kui üürnik tasub tagatisraha, kommunaalteenuste ja ühe kuu ettemakse.'),
			]);
			case 'common.completeRentAgreementPdf': return ({required InlineSpanBuilder complete}) => TextSpan(children: [
				const TextSpan(text: 'Rendileping (PDF) '),
				complete('Täielik leping'),
			]);
			case 'common.tenantApplicationDepositNote': return ({required InlineSpanBuilder note}) => TextSpan(children: [
				const TextSpan(text: 'Märkus: '),
				note('Väljarent kinnitab taotluse, kui üürnik tasub tagatisraha, kommunaalteenuste ja ühe kuu ettemakse.'),
			]);
			case 'common.whatsapp': return 'Whatsapp';
			case 'common.applicationList': return 'Taotluste loetelu';
			case 'common.viewDetails': return 'Vaata üksikasju';
			case 'common.searchHint': return '${_root.common.search}...';
			case 'common.home': return 'Kodu';
			case 'common.dashboard': return 'Armatuurlaud';
			case 'common.tenants': return 'Üürnikud';
			case 'common.maintenance': return 'Hooldus';
			case 'common.maintenanceList': return 'Hooldusloetelu';
			case 'common.maintenanceReport': return 'Hooldusaruanne';
			case 'common.labor': return 'Tööjõud';
			case 'common.applications': return 'Taotlused';
			case 'common.rentInvitation': return 'Rendikutse';
			case 'common.payment': return 'Makse';
			case 'common.rentPayment': return 'Üüri maksmine';
			case 'common.depositUtilityPayment': return 'Tagatisraha ja kommunaalmakse';
			case 'common.refundRequest': return 'Tagasimaksetaotlus';
			case 'common.withdrawRequest': return 'Väljamaksutaotlus';
			case 'common.myProperty': return 'Minu kinnisvara';
			case 'common.myRent': return 'Minu rent';
			case 'common.wishlist': return 'Soovide nimekiri';
			case 'common.properties': return 'Kinnisvara';
			case 'common.allProperties': return 'Kogu kinnisvara';
			case 'common.totalPropery': return 'Kinnisvara kokku';
			case 'common.occupied': return 'Hõivatud';
			case 'common.vacant': return 'Vaba';
			case 'common.accounting': return 'Raamatupidamine';
			case 'common.totalIncome': return 'Kogutulu';
			case 'common.totalExpense': return 'Kogukulu';
			case 'common.currentBalance': return 'Jääk';
			case 'common.totalWithdrawal': return 'Kokku (väljamakse)';
			case 'common.totalProperties': return 'Kinnisvara kokku';
			case 'common.totalTenant': return 'Üürnikke kokku';
			case 'common.totalRentPaid': return 'Kokku makstud üür';
			case 'common.totalRentDue': return 'Kokku võlgnetav üür';
			case 'common.totalApplication': return 'Taotlusi kokku';
			case 'common.pendingApplication': return 'Ootel taotlus';
			case 'common.processingApplication': return 'Töötlemisel olev taotlus';
			case 'common.approveApplication': return 'Kinnita taotlus';
			case 'common.rejectApplication': return 'Lükka taotlus tagasi';
			case 'common.maintenanceCost': return 'Hoolduskulud';
			case 'common.transactionSummary': return 'Tehingute kokkuvõte';
			case 'common.maintenanceRequest': return 'Hooldustaotlus';
			case 'common.notifications': return 'Teavitused';
			case 'common.myProperties': return 'Minu kinnisvara';
			case 'common.recommendationProperties': return 'Soovituslikud kinnisvaraobjektid';
			case 'common.laborList': return 'Tööjõu loetelu';
			case 'common.addLabor': return 'Lisa tööjõud';
			case 'common.laborDetails': return 'Tööjõu andmed';
			case 'common.laborSalary': return 'Tööjõu palk';
			case 'common.editLabor': return 'Muuda tööjõudu';
			case 'common.addNewLabor': return 'Lisa uus tööjõud';
			case 'common.enterAmount': return 'Sisesta summa';
			case 'common.maintenanceDetails': return 'Hooldusandmed';
			case 'common.laborName': return 'Töölise nimi';
			case 'common.comment': return 'Kommentaar';
			case 'common.image': return 'Pilt';
			case 'common.complete': return 'Lõpeta';
			case 'common.details': return 'Üksikasjad';
			case 'common.title': return 'Pealkiri';
			case 'common.date': return 'Kuupäev';
			case 'common.reason': return 'Põhjus';
			case 'common.edit': return 'Muuda';
			case 'common.property': return 'Kinnisvara';
			case 'common.completeYourProfile': return 'Täida oma profiil';
			case 'common.profileImage': return 'Profiilipilt';
			case 'common.imagePickHint': return 'Ainult JPEG- ja PNG-pildid, mille maksimaalne suurus on 120x120 pikslit.';
			case 'common.invoiceId': return 'Arve ID';
			case 'common.depositAmount': return 'Tagatisraha summa';
			case 'common.landlordPhone': return 'Väljarenti telefon';
			case 'common.rentalAdvance': return 'Üür (ettemaks)';
			case 'common.totalAmount': return 'Kogusumma';
			case 'common.rentalAmount': return 'Üüri summa';
			case 'common.adminCharge': return 'Administreerimistasu';
			case 'common.editAccount': return 'Muuda kontot';
			case 'common.addNewAccount': return 'Lisa uus konto';
			case 'common.transactionId': return 'Tehingu ID';
			case 'common.transactionType': return 'Tehingu tüüp';
			case 'common.requestDate': return 'Taotluse kuupäev';
			case 'common.amount': return 'Summa';
			case 'common.fee': return 'Tasu';
			case 'common.paymentStatus': return 'Makse staatus';
			case 'common.generatedTime': return 'Genereerimise aeg';
			case 'common.systemGeneratedReportHint': return ({required InlineSpan appName}) => TextSpan(children: [
				const TextSpan(text: 'See on süsteemi genereeritud aruanne rakendusest '),
				appName,
			]);
			case 'common.withdrawHistory': return 'Väljamakse ajalugu';
			case 'common.history': return 'Ajalugu';
			case 'common.withdrawAmount': return 'Väljamakse summa';
			case 'common.availableBalance': return 'Saadaval olev saldo';
			case 'common.withdrawCharge': return 'Väljamakse tasu';
			case 'common.paymentMethod': return 'Makseviis';
			case 'common.requestSendSuccess': return 'Taotlus on edukalt saadetud!';
			case 'common.paymentReceiptSubmitSuccess': return 'Maksekviitung on edukalt esitatud.';
			case 'common.refundReason': return 'Tagasimakse põhjus';
			case 'common.note': return 'Märkus';
			case 'common.refundReceiveSuccess': return 'Tagasimakse on edukalt kätte saadud.';
			case 'common.downloadPaymentReceipt': return 'Laadi alla maksekviitung';
			case 'common.invoice': return 'Arve';
			case 'common.selectPropertyToSeeInvoice': return 'Valige kinnisvara, et näha arve numbrit...';
			case 'common.bankAccName': return 'Panga konto nimi';
			case 'common.bankName': return 'Panga nimi';
			case 'common.bankAccNum': return 'Panga kontonumber';
			case 'common.thankYou': return 'Aitäh!';
			case 'common.basicInfo': return 'Põhiteave';
			case 'common.descriptionPricing': return 'Kirjeldus ja hind';
			case 'common.contact': return 'Kontakt';
			case 'common.photos': return 'Fotod';
			case 'common.successfullySubmitted': return 'Edukalt esitatud!';
			case 'common.editProperty': return 'Muuda kinnisvara';
			case 'common.addNewProperty': return 'Lisa uus kinnisvara';
			case 'common.propertyManageRequestSuccess': return 'Teie kuulutus on esitatud ülevaatamiseks.';
			case 'common.postAnotherProperty': return 'Postita veel üks kinnisvara';
			case 'common.browseYourProperty': return 'Sirvige oma kinnisvara';
			case 'common.stepIndicator': return ({required InlineSpan step, required InlineSpan totalSteps}) => TextSpan(children: [
				const TextSpan(text: 'Samm '),
				step,
				const TextSpan(text: ' / '),
				totalSteps,
			]);
			case 'common.whatWouldYouLikeToPost': return 'Mida soovite postitada?';
			case 'common.category': return 'Kategooria';
			case 'common.invalidCategory': return 'Kehtetu kategooria';
			case 'common.unitNumber': return 'Üksuse number';
			case 'common.sqft': return 'm²';
			case 'common.propertySizeMustBeGreaterThan0': return 'Kinnisvara suurus peab olema suurem kui null';
			case 'common.whatAreTheFacility': return 'Millised on rajatised?';
			case 'common.whatAreTheAmenity': return 'Millised on mugavused?';
			case 'common.parkingLot': return 'Parkla';
			case 'common.houseType': return 'Majatüüp';
			case 'common.value': return 'Väärtus';
			case 'common.unitLotSize': return 'Üksuse / krundi suurus';
			case 'common.landSize': return 'Maa suurus';
			case 'common.acres': return 'aakrit';
			case 'common.roomSize': return 'Toa suurus';
			case 'common.askTenantPreference': return 'Millised on teie üürniku eelistused?';
			case 'common.couple': return 'Paar';
			case 'common.describeTheProperty': return ({required String propertyType}) => 'Kirjeldage ${propertyType}';
			case 'common.adTitle': return 'Kuulutuse pealkiri';
			case 'common.minimumRentalPeriod': return 'Minimaalne rendiperiood';
			case 'common.whatsappNumber': return '${_root.common.whatsapp} Number';
			case 'common.hideOrDisplayEmail': return 'Peida või kuva e-posti aadress';
			case 'common.thankYouForPostingProperty': return ({required String appName}) => 'Aitäh, et postitasite rakendusse ${appName}!';
			case 'common.propertyList': return 'Kinnisvaraloetelu';
			case 'common.newInviteRent': return 'Uus rendikutse';
			case 'common.rentAgreement': return 'Rendileping';
			case 'common.rentDetails': return 'Rendi andmed';
			case 'common.landlordRentInvitationPendingNote': return ({required InlineSpanBuilder note}) => TextSpan(children: [
				const TextSpan(text: 'Märkus: '),
				note('Palun oodake, kuni üürnik kutse vastu võtab.'),
			]);
			case 'common.rent': return 'Üür';
			case 'common.editTenant': return 'Muuda üürnikku';
			case 'common.addNewTenant': return 'Lisa uus üürnik';
			case 'common.shareInstallLink': return 'Jaga installimislinki';
			case 'common.tenantList': return 'Üürnike loetelu';
			case 'common.editMaintenanceRequest': return 'Muuda hooldustaotlust';
			case 'common.addNewMaintenance': return 'Lisa uus hooldus';
			case 'common.landlordId': return 'Väljarenti ID';
			case 'common.tenantAgrementUnderReviewNote': return ({required InlineSpanBuilder note}) => TextSpan(children: [
				const TextSpan(text: 'Märkus: '),
				note('Teie leping on läbivaatamisel. Palun oodake, kuni väljarent teie üüri kinnitab.'),
			]);
			case 'common.editReview': return 'Muuda arvustust';
			case 'common.writeAReview': return 'Kirjuta arvustus';
			case 'common.selectRating': return 'Vali hinnang';
			case 'common.enterYourOpinion': return 'Sisesta oma arvamus';
			case 'common.askToEnterReviewMsg': return 'Sisestage arvustuse sõnum';
			case 'common.pressBackAgainToExit': return 'Väljumiseks vajutage uuesti tagasi.';
			case 'common.selectPaymentMethod': return 'Vali makseviis';
			case 'common.filter': return 'Filtreeri';
			case 'common.perMonth': return '/ kuu';
			case 'common.searchHintWithAppName': return ({required String appName}) => 'Otsi kõike rakendusest ${appName}...';
			case 'exceptions.somethingWentWrong': return 'Midagi läks valesti, proovige uuesti';
			case 'exceptions.noNidPassport': return 'NID/Passi pilti pole esitatud.';
			case 'exceptions.noRentPropertyFound': return 'Selle üürniku jaoks ei leitud üürikinnisvara.';
			case 'exceptions.noPropertyFoundWithKeyWord': return 'Kinnisvara ei leitud!\nProovige erinevaid märksõnu';
			case 'exceptions.noSubscriptionFoundRefreshPage': return 'Tellimusplaani ei leitud!\nLehekülje värskendamine ja uuesti proovimine.';
			case 'exceptions.invalidApiDataRefreshPage': return ({required String dataType}) => 'Vigased ${dataType} andmed! Lehekülje värskendamine ja uuesti proovimine.';
			case 'exceptions.invalidDownloadUrl': return 'Vigane allalaadimise URL!';
			case 'exceptions.failedToSaveFile': return ({required String error}) => 'Faili salvestamine ebaõnnestus! ${error}';
			case 'exceptions.errorOpeningFile': return ({required String error}) => 'Faili avamine ebaõnnestus! ${error}';
			case 'exceptions.noVehicleInfoProvided': return 'Sõiduki infot ei esitatud.';
			case 'exceptions.yourApplicationRejected': return 'Teie taotlus on tagasi lükatud';
			case 'exceptions.noApplicationFoundHint.template': return ({required String subject}) => 'Taotlust ei leitud!\n${subject} kuvatakse siin, kui see on saadaval.';
			case 'exceptions.noApplicationFoundHint.subjects.tenant': return 'Teie taotlus';
			case 'exceptions.noApplicationFoundHint.subjects.landlord': return 'Üürniku taotlus';
			case 'exceptions.noPropertyFoundHint.landlordHome': return 'Kinnisvara ei leitud!\nProovige lisada kinnisvara, et seda siin näha.';
			case 'exceptions.noPropertyFoundHint.tenantRecommended': return 'Soovituslikke kinnisvaraobjekte ei leitud\nProovige hiljem uuesti.';
			case 'exceptions.noPropertyFoundHint.tenantAllProperty': return 'Kinnisvara pole saadaval\nProovige hiljem uuesti.';
			case 'exceptions.noImageProvided': return 'Pilti ei esitatud';
			case 'exceptions.noStatusMaintenantFound.landlord': return ({required Object status}) => 'Ühtegi ${status} hooldust ei leitud.';
			case 'exceptions.noStatusMaintenantFound.tenant': return 'Hooldust ei leitud! Saate luua hooldustaotluse, et seda siin näha.';
			case 'exceptions.noDepositFound': return 'Tagatisraha ei leitud!\nTagatisraha on nähtav, kui see on saadaval';
			case 'exceptions.noRentPaymentFound': return 'Üüri makset ei leitud!\nÜüri maksed on nähtavad, kui need on saadaval';
			case 'exceptions.transactionSummaryApiException': return 'Tehingute kokkuvõtte hankimine ebaõnnestus.';
			case 'exceptions.noWithdrawRequestFound': return 'Taotlust ei leitud!\nProovige luua väljamaksutaotlus, et seda siin näha.';
			case 'exceptions.withdrawRequestNotApproved': return 'Seda väljamaksutaotlust pole kinnitatud!.';
			case 'exceptions.nonZeroError': return 'Sisestage nullist suurem summa.';
			case 'exceptions.minAmountError': return ({required String minValue}) => 'Summa peab olema vähemalt ${minValue}.';
			case 'exceptions.maxAmountError': return ({required String maxValue}) => 'Summa ei tohi ületada ${maxValue}.';
			case 'exceptions.selectPaymentMethodHint': return 'Valige kõigepealt makseviis.';
			case 'exceptions.noStatusRefundReqFound.landlord': return ({required Object status}) => 'Ühtegi ${status} tagasimaksetaotlust ei leitud!\nTagasimaksetaotlust on näha siin, kui see on saadaval.';
			case 'exceptions.noStatusRefundReqFound.tenant': return 'Tagasimaksetaotlust ei leitud!\nSaate luua tagasimaksetaotluse, et seda siin näha.';
			case 'exceptions.refundRequestHint.inTenantList': return 'Üürnik kiidab tagasimakse heaks, kui ta raha tagasi saab';
			case 'exceptions.refundRequestHint.tenantReqSuccess': return 'Me vaatame tagasimaksetaotluse läbi ja kiidame selle 24 tunni jooksul heaks.';
			case 'exceptions.oneToTenRequiredField': return ({required String value}) => 'Valige ${value} arv';
			case 'exceptions.invalidDateRange': return 'Vigane kuupäevavahemik.';
			case 'exceptions.valueMustBeGreaterThanZero': return ({required String value}) => '${value} peab olema suurem kui null.';
			case 'exceptions.editProperty.rentalChange': return 'Üürikinnisvara muutub. See peab olema kehtiv (jõus) ainult järgmise kuu üüri makse jaoks.';
			case 'exceptions.editProperty.deleteOnRent': return 'Teie kinnisvara on juba üürniku poolt üüritud. Seda ei saa kustutada enne, kui üürnik on eemaldatud';
			case 'exceptions.editProperty.alreayRented': return 'See kinnisvara on juba üüritud. Proovige hiljem uuesti.\nVõi võtke lisateabe saamiseks ühendust väljarentijaga.';
			case 'exceptions.rentInvitation.landlordNoRentInvitation': return 'Rendikutset ei leitud!\nProovige luua rendikutse, et seda siin näha.';
			case 'exceptions.rentInvitation.tenantNoRentInvitation': return 'Rendikutset ei leitud!\nRendikutset on näha siin, kui see on saadaval.';
			case 'exceptions.notenantFoundList': return 'Üürnikke pole!\nProovige lisada üürnik, et seda siin näha.';
			case 'exceptions.noFeaturesProvided': return 'Funktsioone ei esitatud.';
			case 'exceptions.noNotificationFound': return 'Teavitust pole saadaval.\nTeie teavitust on näha siin, kui see on saadaval.';
			case 'prompt.logout.title': return _root.common.logout;
			case 'prompt.logout.message': return 'Kas olete kindel, et soovite välja logida?';
			case 'prompt.application.rejectTitle': return 'Miks te selle taotluse tagasi lükkate?';
			case 'prompt.application.applicationSent.successfully': return 'Taotlus on edukalt saadetud!';
			case 'prompt.application.applicationSent.sucessDescription': return 'Näete seda taotlust oma taotluste loendis';
			case 'prompt.labor.delete.title': return 'Kustuta tööjõud?';
			case 'prompt.labor.delete.description': return 'Kas olete kindel, et soovite selle tööjõu kustutada?';
			case 'prompt.maintenanceRequest.rejectTitle': return 'Miks see taotlus tagasi lükatakse?';
			case 'prompt.maintenanceRequest.processTitle': return 'Kas olete kindel, et töötlete seda hooldustaotlust?';
			case 'prompt.maintenanceRequest.completeTitle': return 'Töö lõpetatud?';
			case 'prompt.withdrawMethod.deleteTitle': return 'Kustuta väljamakse meetod?';
			case 'prompt.withdrawMethod.deleteDescription': return 'Kas olete kindel, et soovite selle väljamakse meetodi kustutada?';
			case 'prompt.unsavedChanges.title': return 'Kas olete kindel, et soovite tagasi minna?';
			case 'prompt.unsavedChanges.message': return 'Muudetud väljad ei salvestata!';
			case 'prompt.property.delete.title': return 'Kustuta kinnisvara?';
			case 'prompt.property.delete.message': return 'Kas olete kindel, et soovite selle kinnisvara kustutada?';
			case 'prompt.rentInvitation.landlordApprove.title': return 'Kas olete kindel, et soovite selle üüri kinnitada?';
			case 'prompt.rentInvitation.landlordApprove.description': return 'Veenduge, et olete läbi vaadanud üürniku poolt allkirjastatud lepingu.';
			case 'prompt.rentInvitation.tenantAccept.title': return 'Kas olete kindel, et soovite selle kutse vastu võtta?';
			case 'prompt.rentInvitation.tenantAccept.description': return 'Veenduge, et olete lepingu PDF-faili alla laadinud!';
			case 'prompt.sessionExpired.title': return 'Sessioon on aegunud';
			case 'prompt.sessionExpired.message': return 'Teie sessioon on aegunud. Palun logige uuesti sisse';
			case 'prompt.sessionExpired.action': return 'Logi sisse';
			case 'prompt.noInternet.title': return 'Internetiühendus puudub';
			case 'prompt.noInternet.message': return 'Palun kontrollige oma Wi-Fi või mobiilivõrgu ühendust ja proovige uuesti';
			case 'prompt.noInternet.action': return 'Proovi uuesti';
			case 'prompt.permissionHandler.title': return 'Luba on nõutav!';
			case 'prompt.permissionHandler.message': return 'Peate rakenduse seadetes load andma. Kas soovite seaded nüüd avada?';
			case 'prompt.imagePicker.title': return 'Valige valik';
			case 'prompt.imagePicker.gallery': return 'Galerii';
			case 'prompt.imagePicker.camera': return 'Kaamera';
			case 'prompt.verificationDialog.title': return 'Kinnitage oma e-post';
			case 'prompt.verificationDialog.message': return 'Oleme saatnud kinnituskoodi e-kirja';
			case 'prompt.verificationDialog.messageWithEmail': return ({required String? email}) => '${_root.prompt.verificationDialog.message} aadressile ${email}';
			case 'prompt.notification.clearTitle': return 'Kustuta teavitused?';
			case 'prompt.notification.clearMessage': return 'Kas olete kindel, et soovite kõik teavitused kustutada?';
			case 'form.fullName.label': return _root.common.fullName;
			case 'form.fullName.hint': return 'Sisestage ${_root.common.fullName}';
			case 'form.fullName.errors.required': return 'Palun sisestage oma ${_root.common.fullName}';
			case 'form.email.label': return _root.common.email;
			case 'form.email.hint': return 'Sisestage oma ${_root.common.email}';
			case 'form.email.errors.required': return 'Palun sisestage oma ${_root.common.email} aadress';
			case 'form.email.errors.invalid': return '⦸ Vigane e-posti aadress, proovige uuesti';
			case 'form.password.label': return _root.common.password;
			case 'form.password.hint': return '* * * * * * * *';
			case 'form.password.errors.required': return 'Palun sisestage oma ${_root.common.password}';
			case 'form.password.errors.minLength': return ({required Object count}) => 'Parool peab olema vähemalt ${count} tähemärki pikk!';
			case 'form.confirmPassword.label': return 'Kinnita ${_root.common.password}';
			case 'form.confirmPassword.hint': return '* * * * * * * *';
			case 'form.confirmPassword.errors.required': return 'Palun sisestage oma ${_root.common.password}';
			case 'form.confirmPassword.errors.notMatched': return 'Kinnitatud parool ei ühti!';
			case 'form.mobileNumber.label': return _root.common.mobileNumber;
			case 'form.mobileNumber.hint': return '(+60) 555-0123';
			case 'form.mobileNumber.errors.required': return 'Palun sisestage oma ${_root.common.mobileNumber}';
			case 'form.address1.label': return '${_root.common.address} 1';
			case 'form.address1.hint': return 'Maja number ja tänava nimi';
			case 'form.address1.errors.required': return 'Palun sisestage oma ${_root.form.address1.label}';
			case 'form.address2.label': return '${_root.common.address} 2';
			case 'form.address2.hint': return 'Korter, sviit, üksus jne';
			case 'form.address2.errors.required': return 'Palun sisestage oma ${_root.form.address2.label}';
			case 'form.postalCode.label': return _root.common.postalCode;
			case 'form.postalCode.hint': return 'Sisestage ${_root.common.postalCode}';
			case 'form.postalCode.errors.required': return 'Palun sisestage oma ${_root.common.postalCode}';
			case 'form.city.label': return _root.common.city;
			case 'form.city.hint': return 'Sisestage ${_root.common.city} nimi.';
			case 'form.city.errors.required': return 'Palun sisestage oma ${_root.common.city} nimi.';
			case 'form.state.label': return _root.common.state;
			case 'form.state.hint': return 'Sisestage ${_root.common.state} nimi.';
			case 'form.state.errors.required': return 'Palun sisestage oma ${_root.common.state} nimi.';
			case 'form.country.label': return _root.common.country;
			case 'form.country.hint': return 'Valige ${_root.common.country}.';
			case 'form.country.errors.required': return 'Palun valige oma ${_root.common.country}';
			case 'form.otp.errors.required': return 'Palun sisestage OTP.';
			case 'form.otp.errors.invalid': return 'Palun sisestage õige OTP.';
			case 'form.title.label': return 'Pealkiri';
			case 'form.title.hint': return 'Sisestage pealkiri';
			case 'form.title.errors.required': return 'Palun sisestage pealkiri';
			case 'form.date.label': return ({required String label}) => '${label}';
			case 'form.date.hint': return ({required String label}) => 'Valige ${_root.form.date.label(label: label)}';
			case 'form.date.errors.required': return ({required String label}) => 'Palun valige ${_root.form.date.label(label: label)}';
			case 'form.reason.label': return 'Põhjus';
			case 'form.reason.hint': return 'Sisestage põhjus';
			case 'form.reason.errors.required': return 'Palun sisestage põhjus';
			case 'form.withdrawMethod.label': return _root.common.withdrawMethod;
			case 'form.withdrawMethod.hint': return 'Valige ${_root.common.withdrawMethod}';
			case 'form.withdrawMethod.errors.required': return 'Palun valige ${_root.common.withdrawMethod}';
			case 'form.fileField.label': return ({required String label}) => '${label}';
			case 'form.fileField.hint': return ({required String label}) => 'Laadige üles ${label}';
			case 'form.fileField.errors.required': return ({required String label}) => 'Palun valige ${label}';
			case 'form.note.label': return ({required String note}) => '${note}';
			case 'form.note.hint': return ({required String note}) => 'Sisestage ${_root.form.note.label(note: note)}';
			case 'form.note.errors.required': return ({required String note}) => 'Palun sisestage ${_root.form.note.label(note: note)}';
			case 'form.gender.label': return _root.common.gender;
			case 'form.gender.hint': return 'Valige ${_root.common.gender}';
			case 'form.gender.errors.required': return 'Palun valige ${_root.common.gender}';
			case 'form.anyField.label': return ({required String label}) => '${label}';
			case 'form.anyField.hint': return ({required String label}) => 'Sisestage ${_root.form.anyField.label(label: label)}';
			case 'form.anyField.errors.required': return ({required String label}) => 'Palun sisestage ${_root.form.anyField.label(label: label)}';
			case 'form.anyField.errors.invalid': return 'Palun sisestage kehtiv @form.anyField.label';
			case 'form.anyDropdown.label': return ({required String label}) => '${label}';
			case 'form.anyDropdown.hint': return ({required String label}) => 'Valige ${_root.form.anyDropdown.label(label: label)}';
			case 'form.anyDropdown.errors.required': return ({required String label}) => 'Palun valige ${_root.form.anyDropdown.label(label: label)}';
			case 'form.anyDropdown.errors.invalid': return 'Palun valige kehtiv @form.anyDropdown.label';
			case 'action.next': return 'Järgmine';
			case 'action.getStarted': return 'Alusta';
			case 'action.skip': return 'Jäta vahele';
			case 'action.select': return 'Vali';
			case 'action.save': return 'Salvesta';
			case 'action.signIn': return 'Logi sisse';
			case 'action.signUp': return 'Registreeru';
			case 'action.kContinue': return 'Jätka';
			case 'action.clearAll': return 'Puhasta kõik';
			case 'action.cancelRenting': return _root.common.cancelRenting;
			case 'action.send': return 'Saada';
			case 'action.pay': return 'Maksa';
			case 'action.remove': return 'Eemalda';
			case 'action.goBack': return 'Mine tagasi';
			case 'action.buyNow': return 'Osta nüüd';
			case 'action.no': return 'Ei';
			case 'action.open': return 'Ava';
			case 'action.addProperty': return 'Lisa kinnisvara';
			case 'action.process': return 'Töötle';
			case 'action.approve': return 'Kinnita';
			case 'action.reject': return 'Lükka tagasi';
			case 'action.viewRent': return 'Vaata üüri';
			case 'action.openNavigationMenu': return 'Ava navigatsioonimenüü';
			case 'action.seeAll': return 'Näe kõiki';
			case 'action.update': return 'Uuenda';
			case 'action.printTransaction': return 'Trüki tehing';
			case 'action.payoutRequest': return 'Väljamaksutaotlus';
			case 'action.addNew': return '+ Lisa uus';
			case 'action.sendRequest': return 'Saada taotlus';
			case 'action.print': return 'Trüki';
			case 'action.requestForRefund': return 'Taotle tagasimakset';
			case 'action.previous': return 'Eelmine';
			case 'action.delete': return 'Kustuta';
			case 'action.applyProperty': return 'Rakenda kinnisvara';
			case 'action.viewApplication': return 'Vaata taotlust';
			case 'action.inviteTenant': return 'Kutsu üürnik';
			case 'action.inviteRent': return 'Kutsu üür';
			case 'action.cancel': return 'Tühista';
			case 'action.accept': return 'Nõustu';
			case 'action.submit': return 'Esita';
			case 'action.yes': return 'Jah';
			case 'action.okay': return 'Olgu';
			case 'action.confirm': return 'Kinnita';
			case 'action.apply': return 'Rakenda';
			case 'action.reset': return 'Lähtesta';
			case 'action.retry': return 'Proovi uuesti';
			case 'action.viewAll': return 'Vaata kogu';
			case 'pages.language.appbarTitle': return '${_root.action.select} ${_root.common.language}';
			case 'pages.onboard.onboardData.data1.title': return 'Leia oma kinnisvara';
			case 'pages.onboard.onboardData.data1.description': return 'Oleme muutnud imelihtsaks endale sobiva koha leidmise – olgu selleks siis tuba, korter või maja.';
			case 'pages.onboard.onboardData.data2.title': return 'Korter linnas';
			case 'pages.onboard.onboardData.data2.description': return 'Säästame teie aega, sobitades teid kiiresti ideaalse kinnisvaraga, enne kui see kaob, et saaksite oma uut kodu nautida või omaenda tasuta loetleda.';
			case 'pages.onboard.onboardData.data3.title': return 'Teie mugavusmaja';
			case 'pages.onboard.onboardData.data3.description': return 'Kui otsite elukohta, siis vaadake meie üürile antavaid maju. Meil on lai valik maju, mille vahel saate valida üle kogu riigi.';
			case 'pages.signIn.title': return 'Tere tulemast tagasi';
			case 'pages.signIn.subtitle': return 'Logige kohe sisse, et alustada imelist teekonda.';
			case 'pages.signIn.extra.rememberMe': return 'Mäleta mind';
			case 'pages.signIn.extra.signUpNavigator': return ({required InlineSpanBuilder getStarted}) => TextSpan(children: [
				const TextSpan(text: 'Kas sul pole kontot? '),
				getStarted(_root.action.getStarted),
			]);
			case 'pages.signIn.extra.forgotPassword': return '${_root.common.forgotPassword}?';
			case 'pages.forgotPassword.title': return 'Unustasin parooli';
			case 'pages.forgotPassword.subtitle': return 'Sisestage oma e-posti aadress, et oma parooli taastada.';
			case 'pages.otpVerification.title': return 'Kinnitus';
			case 'pages.otpVerification.subtitle': return ({required String email}) => '4-kohaline PIN-kood on saadetud teie e-posti aadressile. ${email}';
			case 'pages.otpVerification.extra.codeResend.codeSendIn': return ({required Object minutes, required Object seconds}) => 'Kood saadetakse ${minutes}:${seconds} pärast';
			case 'pages.otpVerification.extra.codeResend.resendCode': return ({required InlineSpanBuilder resendCode}) => TextSpan(children: [
				const TextSpan(text: ' '),
				resendCode('Saada kood uuesti'),
				const TextSpan(text: ' '),
			]);
			case 'pages.resetPassword.title': return 'Parooli lähtestamine';
			case 'pages.resetPassword.subtitle': return 'Lähtestage oma parool, et see taastada ja oma kontole sisse logida';
			case 'pages.resetPassword.extra.dialog.title': return 'Edukalt muudetud!';
			case 'pages.resetPassword.extra.dialog.subtitle': return 'Logige sisse oma uue parooliga.\nTeid suunatakse sisselogimisele...';
			case 'pages.signUp.title': return 'Loo konto';
			case 'pages.signUp.subtitle': return 'Registreeruge kohe, et alustada imelist teekonda';
			case 'pages.signUp.extra.signInNavigator': return ({required InlineSpanBuilder signIn}) => TextSpan(children: [
				const TextSpan(text: 'Kas sul on konto? '),
				signIn(_root.action.signIn),
			]);
			case 'pages.welcome.title': return 'Kes sa oled?';
			case 'pages.welcome.subtitle': return 'Palun valige allolev valik.';
			case 'pages.welcome.extra.landlordTag': return 'Hallake oma kinnisvara';
			case 'pages.welcome.extra.tenantTag': return 'Logige sisse oma üürikontole';
			case 'pages.aboutUs.appbarTitle': return _root.common.aboutUs;
			case 'pages.termsAndConditions.appbarTitle': return _root.common.termsAndConditions;
			case 'pages.notificationList.appbarTitle': return 'Teavitused';
			case 'pages.contactUs.appbarTitle': return _root.common.contactUs;
			case 'pages.contactUs.extra.messageHint': return 'Sõnum...';
			case 'pages.cancelRenting.appbarTitle': return _root.common.cancelRenting;
			case 'pages.cancelRenting.title': return 'Miks te ${_root.common.cancelRenting}?';
			case 'pages.cancelRenting.form.reason.hint': return 'Kirjuta põhjus';
			case 'pages.cancelRenting.form.reason.errors.required': return 'Palun sisestage üüri tühistamise põhjus';
			case 'pages.invoiceDetails.appbarTitle': return _root.common.viewDetails;
			case 'pages.offlinePayment.appbarTitle': return 'Offline makse';
			case 'pages.offlinePayment.form.paymentNote.label': return 'Makse märkus (${_root.common.optional})';
			case 'pages.offlinePayment.form.paymentNote.hint': return 'Sisestage mõni tekst...';
			case 'pages.offlinePayment.extra.payAmount': return ({required InlineSpan amount}) => TextSpan(children: [
				const TextSpan(text: 'Makstav summa: '),
				amount,
			]);
			case 'pages.offlinePayment.extra.accountHolderName': return 'Konto omaniku nimi';
			case 'pages.offlinePayment.extra.accountNumber': return 'Kontonumber';
			case 'pages.offlinePayment.extra.swiftCode': return 'SWIFT-kood';
			case 'pages.offlinePayment.extra.branch': return 'Filiaal';
			case 'pages.offlinePayment.extra.fileTypeHint': return ({required InlineSpanBuilder fileType, required InlineSpanBuilder fileSize}) => TextSpan(children: [
				const TextSpan(text: 'Valige ainult '),
				fileType('JPG, PNG, PDF'),
				const TextSpan(text: ' või '),
				fileType('DOC'),
				const TextSpan(text: '-vormingus failid. Faili suurus '),
				fileSize('2000 KB'),
			]);
			case 'pages.paymentStatus.success.actionButton': return 'Vaata arvet';
			case 'pages.paymentStatus.success.title': return _root.common.thankYou;
			case 'pages.paymentStatus.success.description': return 'Me vaatame makse läbi ja kinnitame selle 24 tunni jooksul.';
			case 'pages.paymentStatus.fail.actionButton': return 'Proovi uuesti';
			case 'pages.paymentStatus.fail.title': return 'Oih! Makse ebaõnnestus';
			case 'pages.paymentStatus.fail.description': return 'Teie tehing ebaõnnestus mõne tehnilise vea tõttu.';
			case 'pages.propertyDetails.extra.landlord': return ({required InlineSpan landlordName}) => TextSpan(children: [
				TextSpan(text: '${_root.common.landlord}: '),
				landlordName,
			]);
			case 'pages.propertyDetails.extra.ratingReviews': return ({required InlineSpan rating, required InlineSpanBuilder reviews}) => TextSpan(children: [
				rating,
				const TextSpan(text: ' '),
				reviews(_root.common.reviews),
			]);
			case 'pages.propertyDetails.extra.features': return ({required InlineSpanBuilder fa}) => TextSpan(children: [
				const TextSpan(text: 'Funktsioonid '),
				fa('(Mugavused ja teenused)'),
			]);
			case 'pages.propertyDetails.extra.selectRentalPeriod': return 'Valige rendiperiood';
			case 'pages.propertyDetails.extra.writeAReview': return '+ Kirjuta arvustus';
			case 'pages.search.appbarTitle': return 'Otsing';
			case 'pages.search.extra.hint': return 'Otsige krunte, kortereid, tube...';
			case 'pages.search.extra.noRecentSearch': return 'Teil pole hiljutisi otsinguid.';
			case 'pages.subscriptionPlan.appbarTitle': return 'Valige oma plaan';
			case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess': return 'Tellimuse makse õnnestus.\nNüüd pääsete tellitud funktsioonidele juurde.';
			case 'pages.landlordMaintenanceReport.totalMaintenanceCost': return ({required InlineSpan amount}) => TextSpan(children: [
				const TextSpan(text: 'Hoolduskulud kokku: '),
				amount,
			]);
			case 'pages.landlordMaintenanceReport.maintenancePending': return '${_root.common.maintenance} ${_root.enums.maintenanceStatus.pending}';
			case 'pages.landlordMaintenanceReport.maintenanceProcessing': return '${_root.common.maintenance} ${_root.enums.maintenanceStatus.processing}';
			case 'pages.landlordMaintenanceReport.maintenanceCompleted': return '${_root.common.maintenance} ${_root.enums.maintenanceStatus.completed}';
			case 'pages.landlordMaintenanceReport.maintenanceRejected': return '${_root.common.maintenance} ${_root.enums.maintenanceStatus.rejected}';
			case 'enums.propertyStatus.allProperty': return 'Kogu kinnisvara';
			case 'enums.propertyStatus.pending': return 'Ootel';
			case 'enums.propertyStatus.active': return 'Aktiivne';
			case 'enums.propertyStatus.inactive': return 'Inaktiivne';
			case 'enums.propertyStatus.rejected': return 'Tagasi lükatud';
			case 'enums.propertyType.apartmentCondominium': return 'Korter/Korterelamu';
			case 'enums.propertyType.house': return 'Maja';
			case 'enums.propertyType.commercialProperty': return 'Äripind';
			case 'enums.propertyType.land': return 'Maa';
			case 'enums.propertyType.room': return 'Tuba';
			case 'enums.applicationStatus.all': return 'Kõik';
			case 'enums.applicationStatus.pending': return 'Ootel';
			case 'enums.applicationStatus.processing': return 'Töötlemisel';
			case 'enums.applicationStatus.approved': return 'Kinnitatud';
			case 'enums.applicationStatus.rejected': return 'Tagasi lükatud';
			case 'enums.myRentStatus.pending': return 'Ootel';
			case 'enums.myRentStatus.processing': return 'Töötlemisel';
			case 'enums.myRentStatus.active': return 'Aktiivne';
			case 'enums.myRentStatus.expired': return 'Aegunud';
			case 'enums.myRentStatus.cancelled': return 'Tühistatud';
			case 'enums.maintenanceStatus.pending': return 'Ootel';
			case 'enums.maintenanceStatus.processing': return 'Töötlemisel';
			case 'enums.maintenanceStatus.rejected': return 'Tagasi lükatud';
			case 'enums.maintenanceStatus.completed': return 'Lõpetatud';
			case 'enums.tenantProfileType.privateIndividual': return 'Era (Isik)';
			case 'enums.tenantProfileType.company': return 'Ettevõte';
			case 'enums.tenantType.newTenant': return 'Uus üürnik';
			case 'enums.tenantType.activeTenant': return 'Aktiivne üürnik';
			case 'enums.tenantType.expiredTenant': return 'Aegunud üürnik';
			case 'enums.paymentStatus.all': return 'Kõik';
			case 'enums.paymentStatus.pending': return 'Ootel';
			case 'enums.paymentStatus.paid': return 'Makstud';
			case 'enums.paymentStatus.unpaid': return 'Maksmata';
			case 'enums.paymentStatus.rejected': return 'Tagasi lükatud';
			case 'enums.paymentStatus.refund': return 'Tagasimakse';
			case 'enums.paymentOptions.onlinePayment': return 'Online makse';
			case 'enums.paymentOptions.offlinePayment': return 'Offline makse';
			case 'enums.paymentType.securityDeposit': return 'Tagatisraha';
			case 'enums.paymentType.rentPayment': return 'Üüri makse';
			case 'enums.paymentType.subscription': return 'Tellimus';
			case 'enums.gender.male': return 'Mees';
			case 'enums.gender.female': return 'Naine';
			case 'enums.gender.other': return 'Muu';
			case 'enums.ecRelation.wife': return 'Abikaasa';
			case 'enums.ecRelation.parent': return 'Vanem';
			case 'enums.ecRelation.friend': return 'Sõber';
			case 'enums.ecRelation.brother': return 'Vend';
			case 'enums.ecRelation.sister': return 'Õde';
			case 'enums.ecRelation.child': return 'Laps';
			case 'enums.vehicleType.car': return 'Auto';
			case 'enums.vehicleType.motorcycles': return 'Mootorrattad';
			case 'enums.vehicleType.lorry': return 'Veoauto';
			case 'enums.sortBy.lowToHigh': return 'Madalaimast kõrgeimani';
			case 'enums.sortBy.highToLow': return 'Kõrgeimast madalaimani';
			case 'enums.residentialType.flat': return 'Korter';
			case 'enums.residentialType.apartment': return 'Korter';
			case 'enums.residentialType.condominium': return 'Korterelamu';
			case 'enums.residentialType.serviceResidence': return 'Teeninduskorter';
			case 'enums.residentialType.studio': return 'Stuudio';
			case 'enums.residentialType.duplex': return 'Dupleks';
			case 'enums.residentialType.townhouseCondo': return 'Ridaelamukorter';
			case 'enums.residentialType.others': return 'Muu';
			case 'enums.floorRange.high': return 'Kõrge';
			case 'enums.floorRange.medium': return 'Keskmine';
			case 'enums.floorRange.low': return 'Madal';
			case 'enums.furnishings.fullyFurnished': return 'Täielikult möbleeritud';
			case 'enums.furnishings.partiallyFurnished': return 'Osaliselt möbleeritud';
			case 'enums.furnishings.notFurnished': return 'Mööbleerimata';
			case 'enums.commercialPropertyType.officeSpace': return 'Kontoripind';
			case 'enums.commercialPropertyType.retailSpace': return 'Müügipind';
			case 'enums.commercialPropertyType.shopLot': return 'Kauplus';
			case 'enums.commercialPropertyType.warehouseFactory': return 'Ladu / Tehas';
			case 'enums.commercialPropertyType.hotelResort': return 'Hotell / Puhkekeskus';
			case 'enums.commercialPropertyType.sofo': return 'SOFO';
			case 'enums.commercialPropertyType.soho': return 'SOHO';
			case 'enums.commercialPropertyType.sovo': return 'SOVO';
			case 'enums.commercialPropertyType.others': return 'Muu';
			case 'enums.landPropertyType.residential': return 'Elamumaa';
			case 'enums.landPropertyType.industrial': return 'Tööstusmaa';
			case 'enums.landPropertyType.agricultural': return 'Põllumajandusmaa';
			case 'enums.landPropertyType.commercial': return 'Ärimaa';
			case 'enums.landPropertyType.mixedDevelopment': return 'Segakasutusala';
			case 'enums.landPropertyType.others': return 'Muu';
			case 'enums.residentPropertyType.condo': return 'Korterelamu / Teeninduskorter / Katusekorter';
			case 'enums.residentPropertyType.apartment': return 'Korter';
			case 'enums.residentPropertyType.house': return 'Maja';
			case 'enums.residentPropertyType.shoplot': return 'Kauplus';
			case 'enums.residentPropertyType.sharing': return 'Maja / Korteri jagamine';
			case 'enums.residentPropertyType.others': return 'Muu';
			case 'enums.minimumRentalPeriod.sixMonths': return '6 kuud';
			case 'enums.minimumRentalPeriod.oneYear': return '1 aasta';
			case 'enums.minimumRentalPeriod.oneAndHalfYears': return '1,5 aastat';
			case 'enums.minimumRentalPeriod.twoYears': return '2 aastat';
			case 'enums.minimumRentalPeriod.twoAndHalfYears': return '2,5 aastat';
			case 'enums.dropdownDateFilter.daily': return 'Päevaselt';
			case 'enums.dropdownDateFilter.weekly': return 'Nädalaselt';
			case 'enums.dropdownDateFilter.monthly': return 'Kuuselt';
			case 'enums.dropdownDateFilter.yearly': return 'Aastaselt';
			case 'enums.dropdownDateFilter.custom': return 'Kohandatud';
			default: return null;
		}
	}
}

