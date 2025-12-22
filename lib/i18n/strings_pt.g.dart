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
class TranslationsPt implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsPt({
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
             locale: AppLocale.pt,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <pt>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsPt _root = this; // ignore: unused_field

  @override
  TranslationsPt $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsPt(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsCommonPt common = _TranslationsCommonPt._(_root);
  @override
  late final _TranslationsExceptionsPt exceptions = _TranslationsExceptionsPt._(
    _root,
  );
  @override
  late final _TranslationsPromptPt prompt = _TranslationsPromptPt._(_root);
  @override
  late final _TranslationsFormPt form = _TranslationsFormPt._(_root);
  @override
  late final _TranslationsActionPt action = _TranslationsActionPt._(_root);
  @override
  late final _TranslationsPagesPt pages = _TranslationsPagesPt._(_root);
  @override
  late final _TranslationsEnumsPt enums = _TranslationsEnumsPt._(_root);
}

// Path: common
class _TranslationsCommonPt implements TranslationsCommonEn {
  _TranslationsCommonPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get profile => 'Perfil';
  @override
  String get language => 'Idioma';
  @override
  String get subscriptionPlan => 'Plano de Subscrição';
  @override
  String get contactUs => 'Contacte-nos';
  @override
  String get termsAndConditions => 'Termos e Condições';
  @override
  String get aboutUs => 'Sobre Nós';
  @override
  String get logout => 'Sair';
  @override
  String get editProfile => 'Editar Perfil';
  @override
  String get fullName => 'Nome Completo';
  @override
  String get email => 'Email';
  @override
  String get mobileNumber => 'Número de Telemóvel';
  @override
  String get address => 'Morada';
  @override
  String get postalCode => 'Código Postal';
  @override
  String get city => 'Cidade';
  @override
  String get country => 'País';
  @override
  String get state => 'Estado';
  @override
  String get password => 'Password';
  @override
  String get forgotPassword => 'Esqueceu-se da password';
  @override
  String get tenant => 'Inquilino';
  @override
  String get landlord => 'Senhorio';
  @override
  String get cancelRenting => 'Cancelar Arrendamento';
  @override
  String get startDate => 'Data de Início';
  @override
  String get endDate => 'Data de Fim';
  @override
  String get fromDate => 'Data de Início';
  @override
  String get toDate => 'Data de Fim';
  @override
  String get online => 'Online';
  @override
  String get bankList => 'Lista de Bancos';
  @override
  String get withdrawMethod => 'Método de Levantamento';
  @override
  String get uploadPaymentReceipt => 'Carregar Recibo de Pagamento';
  @override
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota: '),
      note('O pagamento requer aprovação manual pelo administrador dentro de'),
      const TextSpan(text: ' '),
      duraion('24~48 horas.'),
    ],
  );
  @override
  String get reviews => 'Avaliações';
  @override
  String get description => 'Descrição';
  @override
  String get about => 'Sobre';
  @override
  String get propertyTypes => 'Tipos de Propriedade';
  @override
  String get features => 'Características';
  @override
  String get floorPlans => 'Plantas';
  @override
  String get buildingDetails => 'Detalhes do Edifício';
  @override
  String get buildingName => 'Nome do Edifício';
  @override
  String get propertyAddress => 'Morada da Propriedade';
  @override
  String get completionYear => 'Ano de Conclusão';
  @override
  String get lotNumber => 'Número do Lote';
  @override
  String get residentialType => 'Tipo Residencial';
  @override
  String get furnishings => 'Mobilização';
  @override
  String get floorRange => 'Andar';
  @override
  String get bedrooms => 'Quartos';
  @override
  String get bathrooms => 'Casas de Banho';
  @override
  String get propertySize => 'Tamanho da Propriedade';
  @override
  String get rentalPeriod => 'Período de Aluguer';
  @override
  String get securityDeposit => 'Caução';
  @override
  String get utilityBill => 'Conta de Serviços';
  @override
  String get facilities => 'Instalações';
  @override
  String get amenities => 'Comodidades';
  @override
  String get expiringReason => 'Motivo de Expiração';
  @override
  String get tenantDetails => 'Detalhes do Inquilino';
  @override
  String get typeOfTenant => 'Tipo de Inquilino';
  @override
  String get tenantName => 'Nome do Inquilino';
  @override
  String get nidPassport => 'NID/Passaporte';
  @override
  String get nidPassportId => '${_root.common.nidPassport} ID';
  @override
  String get tenantId => 'ID do Inquilino';
  @override
  String get dateOfBirth => 'Data de Nascimento';
  @override
  String get gender => 'Género';
  @override
  String get nominee => 'Nomeado';
  @override
  String get name => 'Nome';
  @override
  String get optional => 'Opcional';
  @override
  String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
  @override
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  @override
  late final _TranslationsCommonNomineeMobilePt nomineeMobile =
      _TranslationsCommonNomineeMobilePt._(_root);
  @override
  String get emergencyContact => 'Contacto de Emergência';
  @override
  String get relation => 'Relação';
  @override
  String get relationWith => '${_root.common.relation} With';
  @override
  String get relationWithYou => '${_root.common.relationWith} You';
  @override
  String get company => 'Empresa';
  @override
  String get companyName => '${_root.common.company} ${_root.common.name}';
  @override
  String get companySSMNo => '${_root.common.company} SSM No.';
  @override
  String get workplace => 'Local de Trabalho';
  @override
  String get officePhoneNo => 'Número de Telefone do Escritório';
  @override
  String get officeMobileNo => 'Escritório ${_root.common.mobileNumber}';
  @override
  String get vehicle => 'Veículo';
  @override
  late final _TranslationsCommonVehiclesInfoPt vehiclesInfo =
      _TranslationsCommonVehiclesInfoPt._(_root);
  @override
  String get vehiclesType => '${_root.common.vehicle} Type';
  @override
  late final _TranslationsCommonVehicleRegistrationNoPt vehicleRegistrationNo =
      _TranslationsCommonVehicleRegistrationNoPt._(_root);
  @override
  String get vehicleBrand => '${_root.common.vehicle} Brand';
  @override
  String get rentProperty => 'Alugar Propriedade';
  @override
  String get propertyDetails => 'Detalhes da Propriedade';
  @override
  String get propertyId => 'ID da Propriedade';
  @override
  String get propertyType => 'Tipo de Propriedade';
  @override
  String get propertyName => 'Nome da Propriedade';
  @override
  String get paymentDetails => 'Detalhes de Pagamento';
  @override
  String get monthlyRent => 'Renda Mensal';
  @override
  String get thisMonthPayment => 'Pagamento Deste Mês';
  @override
  String get totalPaidRent => 'Renda Total Paga';
  @override
  String get dueRent => 'Renda em Atraso';
  @override
  String get rentStartDate => 'Renda ${_root.common.startDate}';
  @override
  String get rentEndDate => 'Renda ${_root.common.endDate}';
  @override
  String get status => 'Estado';
  @override
  String get rentAgreementPdf => 'PDF do Contrato de Aluguer';
  @override
  String get noFile => 'Sem Ficheiro';
  @override
  String get tenantImageOp => 'Imagem do Inquilino ${_root.common.optional}';
  @override
  String get addNewVechicle => 'Adicionar Novos Veículos';
  @override
  String get uploadNidPassport => 'Carregar NID/Passaporte';
  @override
  String get nidPassportUploadNote =>
      'Apenas imagens do tipo ficheiro serão aceites. Limite de ficheiro até 2,5 MB.';
  @override
  String get search => 'Pesquisar';
  @override
  String get sortBy => 'Ordenar Por';
  @override
  String get subscription => 'Subscrição';
  @override
  String get downloading => 'A Descarregar...';
  @override
  String get downloadSuccess => 'Ficheiro descarregado com sucesso!';
  @override
  String get addPropertyBannerTitle => 'Quer Alugar a Sua Propriedade?';
  @override
  String get application => 'Aplicação';
  @override
  String get tenantHasPaidDeposit => 'O inquilino pagou a caução.';
  @override
  String get askProcessingRentApplication =>
      'Tem a certeza que pretende processar este pedido para aluguer de propriedade?';
  @override
  String get dateAndTime => 'Data e Hora';
  @override
  String get applicationDetails => 'Detalhes da Aplicação';
  @override
  String get depositStatus => 'Estado da Caução';
  @override
  String get uploadRentAgreement => 'Carregar Contrato de Aluguer';
  @override
  String get uploadFilePDF => 'Carregar Ficheiro (PDF)';
  @override
  String get askSelectRentAgreement =>
      'Por favor, selecione um ficheiro de documento de contrato.';
  @override
  String get landlordRentAgreementPDF =>
      'PDF do Contrato de Aluguer do Senhorio';
  @override
  String get tenantRentAgreementPDF =>
      'PDF do Contrato de Aluguer do Inquilino';
  @override
  TextSpan landlordApplicationApproveNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota: '),
      note(
        'Apenas aprove o pedido depois do inquilino efetuar o pagamento da caução.',
      ),
    ],
  );
  @override
  String get reasonOfRejection => 'Motivo da Rejeição';
  @override
  String get youveRejectedThisApplication => 'Rejeitou este pedido';
  @override
  String get landlordDetails => 'Detalhes do Senhorio';
  @override
  String get landlordName => 'Nome do Senhorio';
  @override
  String get downloadRentAgreement => 'Descarregar Contrato de Aluguer';
  @override
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      const TextSpan(text: 'Aceitar '),
      toc('Termos e Condições'),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote1({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota: '),
      note(
        'Por favor, descarregue e leia o contrato. Por favor, envie o contrato assinado ao senhorio via WhatsApp ou email.',
      ),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote2({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota: '),
      note(
        'O senhorio aprova o pedido, quando o inquilino paga a caução, a conta de serviços e o pagamento da renda adiantada de um mês.',
      ),
    ],
  );
  @override
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Contrato de Aluguer (PDF) '),
          complete('Contrato Completo'),
        ],
      );
  @override
  TextSpan tenantApplicationDepositNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota : '),
      note(
        'O senhorio aprova o pedido, quando o inquilino paga a caução, a conta de serviços e o pagamento da renda adiantada de um mês.',
      ),
    ],
  );
  @override
  String get whatsapp => 'Whatsapp';
  @override
  String get applicationList => 'Lista de Aplicações';
  @override
  String get viewDetails => 'Ver Detalhes';
  @override
  String get searchHint => '${_root.common.search}...';
  @override
  String get home => 'Início';
  @override
  String get dashboard => 'Painel de Controlo';
  @override
  String get tenants => 'Inquilinos';
  @override
  String get maintenance => 'Manutenção';
  @override
  String get maintenanceList => 'Lista de Manutenção';
  @override
  String get maintenanceReport => 'Relatório de Manutenção';
  @override
  String get labor => 'Mão de Obra';
  @override
  String get applications => 'Aplicações';
  @override
  String get rentInvitation => 'Convite de Aluguer';
  @override
  String get payment => 'Pagamento';
  @override
  String get rentPayment => 'Pagamento de Renda';
  @override
  String get depositUtilityPayment => 'Pagamento de Caução e Contas';
  @override
  String get refundRequest => 'Pedido de Reembolso';
  @override
  String get withdrawRequest => 'Pedido de Levantamento';
  @override
  String get myProperty => 'Minha Propriedade';
  @override
  String get myRent => 'Meu Aluguer';
  @override
  String get wishlist => 'Lista de Desejos';
  @override
  String get properties => 'Propriedades';
  @override
  String get allProperties => 'Todas as Propriedades';
  @override
  String get totalPropery => 'Total de Propriedades';
  @override
  String get occupied => 'Ocupado';
  @override
  String get vacant => 'Vazio';
  @override
  String get accounting => 'Contabilidade';
  @override
  String get totalIncome => 'Rendimento Total';
  @override
  String get totalExpense => 'Despesa Total';
  @override
  String get currentBalance => 'Saldo Atual';
  @override
  String get totalWithdrawal => 'Total (Levantamento)';
  @override
  String get totalProperties => 'Total de Propriedades';
  @override
  String get totalTenant => 'Total de Inquilinos';
  @override
  String get totalRentPaid => 'Total de Renda Paga';
  @override
  String get totalRentDue => 'Total de Renda em Atraso';
  @override
  String get totalApplication => 'Total de Candidaturas';
  @override
  String get pendingApplication => 'Candidatura Pendente';
  @override
  String get processingApplication => 'Candidatura em Processamento';
  @override
  String get approveApplication => 'Aprovar Candidatura';
  @override
  String get rejectApplication => 'Rejeitar Candidatura';
  @override
  String get maintenanceCost => 'Custo de Manutenção';
  @override
  String get transactionSummary => 'Resumo de Transações';
  @override
  String get maintenanceRequest => 'Pedido de Manutenção';
  @override
  String get notifications => 'Notificações';
  @override
  String get myProperties => 'Minhas Propriedades';
  @override
  String get recommendationProperties => 'Propriedades Recomendadas';
  @override
  String get laborList => 'Lista de Mão de Obra';
  @override
  String get addLabor => 'Adicionar Mão de Obra';
  @override
  String get laborDetails => 'Detalhes da Mão de Obra';
  @override
  String get laborSalary => 'Salário da Mão de Obra';
  @override
  String get editLabor => 'Editar Mão de Obra';
  @override
  String get addNewLabor => 'Adicionar Nova Mão de Obra';
  @override
  String get enterAmount => 'Introduza o Valor';
  @override
  String get maintenanceDetails => 'Detalhes da Manutenção';
  @override
  String get laborName => 'Nome da Mão de Obra';
  @override
  String get comment => 'Comentário';
  @override
  String get image => 'Imagem';
  @override
  String get complete => 'Concluir';
  @override
  String get details => 'Detalhes';
  @override
  String get title => 'Título';
  @override
  String get date => 'Data';
  @override
  String get reason => 'Motivo';
  @override
  String get edit => 'Editar';
  @override
  String get property => 'Propriedade';
  @override
  String get completeYourProfile => 'Complete o Seu Perfil';
  @override
  String get profileImage => 'Imagem de Perfil';
  @override
  String get imagePickHint =>
      'Apenas Imagem JPEG e PNG com tamanho máximo de 120x120 pixels.';
  @override
  String get invoiceId => 'ID da Fatura';
  @override
  String get depositAmount => 'Valor da Caução';
  @override
  String get landlordPhone => 'Telefone do Senhorio';
  @override
  String get rentalAdvance => 'Aluguer (Adiantamento)';
  @override
  String get totalAmount => 'Valor Total';
  @override
  String get rentalAmount => 'Valor do Aluguer';
  @override
  String get adminCharge => 'Taxa Administrativa';
  @override
  String get editAccount => 'Editar Conta';
  @override
  String get addNewAccount => 'Adicionar Nova Conta';
  @override
  String get transactionId => 'ID da Transação';
  @override
  String get transactionType => 'Tipo de Transação';
  @override
  String get requestDate => 'Data do Pedido';
  @override
  String get amount => 'Valor';
  @override
  String get fee => 'Taxa';
  @override
  String get paymentStatus => 'Estado do Pagamento';
  @override
  String get generatedTime => 'Hora de Geração';
  @override
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(text: 'Este é um relatório gerado pelo sistema de '),
      appName,
    ],
  );
  @override
  String get withdrawHistory => 'Histórico de Levantamentos';
  @override
  String get history => 'Histórico';
  @override
  String get withdrawAmount => 'Valor do Levantamento';
  @override
  String get availableBalance => 'Saldo Disponível';
  @override
  String get withdrawCharge => 'Taxa de Levantamento';
  @override
  String get paymentMethod => 'Método de Pagamento';
  @override
  String get requestSendSuccess => 'Pedido enviado com sucesso!';
  @override
  String get paymentReceiptSubmitSuccess =>
      'Recibo de pagamento submetido com sucesso.';
  @override
  String get refundReason => 'Motivo do Reembolso';
  @override
  String get note => 'Nota';
  @override
  String get refundReceiveSuccess => 'Reembolso recebido com sucesso.';
  @override
  String get downloadPaymentReceipt => 'Descarregar Recibo de Pagamento';
  @override
  String get invoice => 'Fatura';
  @override
  String get selectPropertyToSeeInvoice =>
      'Selecione a propriedade para ver o número da fatura...';
  @override
  String get bankAccName => 'Nome da Conta Bancária';
  @override
  String get bankName => 'Nome do Banco';
  @override
  String get bankAccNum => 'Número da Conta Bancária';
  @override
  String get thankYou => 'Obrigado!';
  @override
  String get basicInfo => 'Informação Básica';
  @override
  String get descriptionPricing => 'Descrição e Preços';
  @override
  String get contact => 'Contacto';
  @override
  String get photos => 'Fotos';
  @override
  String get successfullySubmitted => 'Submetido com sucesso!';
  @override
  String get editProperty => 'Editar Propriedade';
  @override
  String get addNewProperty => 'Adicionar Nova Propriedade';
  @override
  String get propertyManageRequestSuccess =>
      'O seu anúncio foi submetido para revisão.';
  @override
  String get postAnotherProperty => 'Publicar Outra Propriedade';
  @override
  String get browseYourProperty => 'Navegar na Sua Propriedade';
  @override
  TextSpan stepIndicator({
    required InlineSpan step,
    required InlineSpan totalSteps,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Passo '),
      step,
      const TextSpan(text: ' de '),
      totalSteps,
    ],
  );
  @override
  String get whatWouldYouLikeToPost => 'O que Gostaria de Publicar?';
  @override
  String get category => 'Categoria';
  @override
  String get invalidCategory => 'Categoria Inválida';
  @override
  String get unitNumber => 'Número da Unidade';
  @override
  String get sqft => 'm²';
  @override
  String get propertySizeMustBeGreaterThan0 =>
      'O tamanho da propriedade deve ser superior a zero';
  @override
  String get whatAreTheFacility => 'Quais são as instalações?';
  @override
  String get whatAreTheAmenity => 'Quais são as comodidades?';
  @override
  String get parkingLot => 'Parque de Estacionamento';
  @override
  String get houseType => 'Tipo de Casa';
  @override
  String get value => 'Valor';
  @override
  String get unitLotSize => 'Tamanho da Unidade / Lote';
  @override
  String get landSize => 'Tamanho do Terreno';
  @override
  String get acres => 'acre(s)';
  @override
  String get roomSize => 'Tamanho do Quarto';
  @override
  String get askTenantPreference => 'Qual é a sua preferência de inquilino?';
  @override
  String get couple => 'Casal';
  @override
  String describeTheProperty({required String propertyType}) =>
      'Descreva o(a) ${propertyType}';
  @override
  String get adTitle => 'Título do Anúncio';
  @override
  String get minimumRentalPeriod => 'Período Mínimo de Aluguer';
  @override
  String get whatsappNumber => '${_root.common.whatsapp} Number';
  @override
  String get hideOrDisplayEmail => 'Ocultar ou exibir endereço de email';
  @override
  String thankYouForPostingProperty({required String appName}) =>
      'Obrigado por publicar em ${appName}!';
  @override
  String get propertyList => 'Lista de Propriedades';
  @override
  String get newInviteRent => 'Novo Convite de Aluguer';
  @override
  String get rentAgreement => 'Contrato de Aluguer';
  @override
  String get rentDetails => 'Detalhes do Aluguer';
  @override
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota: '),
      note('Aguarde que o inquilino aceite o convite.'),
    ],
  );
  @override
  String get rent => 'Aluguer';
  @override
  String get editTenant => 'Editar Inquilino';
  @override
  String get addNewTenant => 'Adicionar Novo Inquilino';
  @override
  String get shareInstallLink => 'Partilhar link de instalação';
  @override
  String get tenantList => 'Lista de Inquilinos';
  @override
  String get editMaintenanceRequest => 'Editar Pedido de Manutenção';
  @override
  String get addNewMaintenance => 'Adicionar Nova Manutenção';
  @override
  String get landlordId => 'ID do Senhorio';
  @override
  TextSpan tenantAgrementUnderReviewNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota '),
      note(
        'O seu contrato está em revisão. Aguarde que o senhorio aprove o seu aluguer.',
      ),
    ],
  );
  @override
  String get editReview => 'Editar Avaliação';
  @override
  String get writeAReview => 'Escrever uma avaliação';
  @override
  String get selectRating => 'Selecionar Avaliação';
  @override
  String get enterYourOpinion => 'Introduza a Sua Opinião';
  @override
  String get askToEnterReviewMsg =>
      'Por favor, introduza uma mensagem de avaliação';
  @override
  String get pressBackAgainToExit => 'Pressione novamente para sair.';
  @override
  String get selectPaymentMethod => 'Selecionar Método de Pagamento';
  @override
  String get filter => 'Filtrar';
  @override
  String get perMonth => '/1 Mês';
  @override
  String searchHintWithAppName({required String appName}) =>
      'Pesquise qualquer coisa em ${appName}...';
}

// Path: exceptions
class _TranslationsExceptionsPt implements TranslationsExceptionsEn {
  _TranslationsExceptionsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get somethingWentWrong =>
      'Algo correu mal, por favor, tente novamente';
  @override
  String get noNidPassport => 'Nenhuma imagem NID/Passaporte fornecida.';
  @override
  String get noRentPropertyFound =>
      'Nenhuma propriedade de aluguer encontrada para este inquilino.';
  @override
  String get noPropertyFoundWithKeyWord =>
      'Nenhuma propriedade encontrada!\nPor favor, tente com palavras-chave diferentes';
  @override
  String get noSubscriptionFoundRefreshPage =>
      'Nenhum plano de subscrição encontrado!\nPor favor, atualize a página e tente novamente.';
  @override
  String invalidApiDataRefreshPage({required String dataType}) =>
      'Informação ${dataType} inválida! Por favor, atualize a página e tente novamente.';
  @override
  String get invalidDownloadUrl => 'URL de download inválido!';
  @override
  String failedToSaveFile({required String error}) =>
      'Falha ao guardar o ficheiro! ${error}';
  @override
  String errorOpeningFile({required String error}) =>
      'Erro ao abrir o ficheiro! ${error}';
  @override
  String get noVehicleInfoProvided =>
      'Nenhuma informação sobre o veículo fornecida.';
  @override
  String get yourApplicationRejected => 'A sua candidatura foi rejeitada';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintPt
  noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintPt._(
    _root,
  );
  @override
  late final _TranslationsExceptionsNoPropertyFoundHintPt noPropertyFoundHint =
      _TranslationsExceptionsNoPropertyFoundHintPt._(_root);
  @override
  String get noImageProvided => 'Nenhuma Imagem Fornecida';
  @override
  late final _TranslationsExceptionsNoStatusMaintenantFoundPt
  noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundPt._(
    _root,
  );
  @override
  String get noDepositFound =>
      'Nenhuma caução encontrada!\nPor favor, pode ver as cauções quando disponíveis';
  @override
  String get noRentPaymentFound =>
      'Nenhum pagamento de renda encontrado!\nPor favor, pode ver os pagamentos de renda quando disponíveis';
  @override
  String get transactionSummaryApiException =>
      'Falha ao obter o resumo da transação.';
  @override
  String get noWithdrawRequestFound =>
      'Nenhum pedido encontrado!\nPor favor, tente criar um pedido de levantamento para ver aqui.';
  @override
  String get withdrawRequestNotApproved =>
      'Este pedido de levantamento não foi aprovado!.';
  @override
  String get nonZeroError =>
      'Por favor, introduza um valor válido superior a zero.';
  @override
  String minAmountError({required String minValue}) =>
      'O valor deve ser de pelo menos ${minValue}.';
  @override
  String maxAmountError({required String maxValue}) =>
      'O valor não deve exceder ${maxValue}.';
  @override
  String get selectPaymentMethodHint =>
      'Por favor, selecione primeiro um método de pagamento.';
  @override
  late final _TranslationsExceptionsNoStatusRefundReqFoundPt
  noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundPt._(
    _root,
  );
  @override
  late final _TranslationsExceptionsRefundRequestHintPt refundRequestHint =
      _TranslationsExceptionsRefundRequestHintPt._(_root);
  @override
  String oneToTenRequiredField({required String value}) =>
      'Por favor, selecione o número de ${value}';
  @override
  String get invalidDateRange => 'Intervalo de datas inválido.';
  @override
  String valueMustBeGreaterThanZero({required String value}) =>
      '${value} deve ser superior a zero.';
  @override
  late final _TranslationsExceptionsEditPropertyPt editProperty =
      _TranslationsExceptionsEditPropertyPt._(_root);
  @override
  late final _TranslationsExceptionsRentInvitationPt rentInvitation =
      _TranslationsExceptionsRentInvitationPt._(_root);
  @override
  String get notenantFoundList =>
      'Nenhum inquilino!\nPor favor, tente adicionar um inquilino para ver aqui.';
  @override
  String get noFeaturesProvided => 'Nenhuma funcionalidade fornecida.';
  @override
  String get noNotificationFound =>
      'Nenhuma notificação disponível.\nPode ver a sua notificação aqui quando disponível.';
}

// Path: prompt
class _TranslationsPromptPt implements TranslationsPromptEn {
  _TranslationsPromptPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLogoutPt logout = _TranslationsPromptLogoutPt._(
    _root,
  );
  @override
  late final _TranslationsPromptApplicationPt application =
      _TranslationsPromptApplicationPt._(_root);
  @override
  late final _TranslationsPromptLaborPt labor = _TranslationsPromptLaborPt._(
    _root,
  );
  @override
  late final _TranslationsPromptMaintenanceRequestPt maintenanceRequest =
      _TranslationsPromptMaintenanceRequestPt._(_root);
  @override
  late final _TranslationsPromptWithdrawMethodPt withdrawMethod =
      _TranslationsPromptWithdrawMethodPt._(_root);
  @override
  late final _TranslationsPromptUnsavedChangesPt unsavedChanges =
      _TranslationsPromptUnsavedChangesPt._(_root);
  @override
  late final _TranslationsPromptPropertyPt property =
      _TranslationsPromptPropertyPt._(_root);
  @override
  late final _TranslationsPromptRentInvitationPt rentInvitation =
      _TranslationsPromptRentInvitationPt._(_root);
  @override
  late final _TranslationsPromptSessionExpiredPt sessionExpired =
      _TranslationsPromptSessionExpiredPt._(_root);
  @override
  late final _TranslationsPromptNoInternetPt noInternet =
      _TranslationsPromptNoInternetPt._(_root);
  @override
  late final _TranslationsPromptPermissionHandlerPt permissionHandler =
      _TranslationsPromptPermissionHandlerPt._(_root);
  @override
  late final _TranslationsPromptImagePickerPt imagePicker =
      _TranslationsPromptImagePickerPt._(_root);
  @override
  late final _TranslationsPromptVerificationDialogPt verificationDialog =
      _TranslationsPromptVerificationDialogPt._(_root);
  @override
  late final _TranslationsPromptNotificationPt notification =
      _TranslationsPromptNotificationPt._(_root);
}

// Path: form
class _TranslationsFormPt implements TranslationsFormEn {
  _TranslationsFormPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormFullNamePt fullName =
      _TranslationsFormFullNamePt._(_root);
  @override
  late final _TranslationsFormEmailPt email = _TranslationsFormEmailPt._(_root);
  @override
  late final _TranslationsFormPasswordPt password =
      _TranslationsFormPasswordPt._(_root);
  @override
  late final _TranslationsFormConfirmPasswordPt confirmPassword =
      _TranslationsFormConfirmPasswordPt._(_root);
  @override
  late final _TranslationsFormMobileNumberPt mobileNumber =
      _TranslationsFormMobileNumberPt._(_root);
  @override
  late final _TranslationsFormAddress1Pt address1 =
      _TranslationsFormAddress1Pt._(_root);
  @override
  late final _TranslationsFormAddress2Pt address2 =
      _TranslationsFormAddress2Pt._(_root);
  @override
  late final _TranslationsFormPostalCodePt postalCode =
      _TranslationsFormPostalCodePt._(_root);
  @override
  late final _TranslationsFormCityPt city = _TranslationsFormCityPt._(_root);
  @override
  late final _TranslationsFormStatePt state = _TranslationsFormStatePt._(_root);
  @override
  late final _TranslationsFormCountryPt country = _TranslationsFormCountryPt._(
    _root,
  );
  @override
  late final _TranslationsFormOtpPt otp = _TranslationsFormOtpPt._(_root);
  @override
  late final _TranslationsFormTitlePt title = _TranslationsFormTitlePt._(_root);
  @override
  late final _TranslationsFormDatePt date = _TranslationsFormDatePt._(_root);
  @override
  late final _TranslationsFormReasonPt reason = _TranslationsFormReasonPt._(
    _root,
  );
  @override
  late final _TranslationsFormWithdrawMethodPt withdrawMethod =
      _TranslationsFormWithdrawMethodPt._(_root);
  @override
  late final _TranslationsFormFileFieldPt fileField =
      _TranslationsFormFileFieldPt._(_root);
  @override
  late final _TranslationsFormNotePt note = _TranslationsFormNotePt._(_root);
  @override
  late final _TranslationsFormGenderPt gender = _TranslationsFormGenderPt._(
    _root,
  );
  @override
  late final _TranslationsFormAnyFieldPt anyField =
      _TranslationsFormAnyFieldPt._(_root);
  @override
  late final _TranslationsFormAnyDropdownPt anyDropdown =
      _TranslationsFormAnyDropdownPt._(_root);
}

// Path: action
class _TranslationsActionPt implements TranslationsActionEn {
  _TranslationsActionPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get next => 'Próximo';
  @override
  String get getStarted => 'Começar';
  @override
  String get skip => 'Saltar';
  @override
  String get select => 'Selecionar';
  @override
  String get save => 'Guardar';
  @override
  String get signIn => 'Iniciar Sessão';
  @override
  String get signUp => 'Registar';
  @override
  String get kContinue => 'Continuar';
  @override
  String get clearAll => 'Limpar Tudo';
  @override
  String get cancelRenting => _root.common.cancelRenting;
  @override
  String get send => 'Enviar';
  @override
  String get pay => 'Pagar';
  @override
  String get remove => 'Remover';
  @override
  String get goBack => 'Voltar';
  @override
  String get buyNow => 'Comprar Agora';
  @override
  String get no => 'Não';
  @override
  String get open => 'Abrir';
  @override
  String get addProperty => 'Adicionar Propriedade';
  @override
  String get process => 'Processar';
  @override
  String get approve => 'Aprovar';
  @override
  String get reject => 'Rejeitar';
  @override
  String get viewRent => 'Ver Aluguer';
  @override
  String get openNavigationMenu => 'Abrir menu de navegação';
  @override
  String get seeAll => 'Ver Tudo';
  @override
  String get update => 'Atualizar';
  @override
  String get printTransaction => 'Imprimir Transação';
  @override
  String get payoutRequest => 'Pedido de Pagamento';
  @override
  String get addNew => '+ Adicionar Novo';
  @override
  String get sendRequest => 'Enviar Pedido';
  @override
  String get print => 'Imprimir';
  @override
  String get requestForRefund => 'Pedido de Reembolso';
  @override
  String get previous => 'Anterior';
  @override
  String get delete => 'Eliminar';
  @override
  String get applyProperty => 'Candidatar-se à Propriedade';
  @override
  String get viewApplication => 'Ver Candidatura';
  @override
  String get inviteTenant => 'Convidar Inquilino';
  @override
  String get inviteRent => 'Convidar para Aluguer';
  @override
  String get cancel => 'Cancelar';
  @override
  String get accept => 'Aceitar';
  @override
  String get submit => 'Submeter';
  @override
  String get yes => 'Sim';
  @override
  String get okay => 'OK';
  @override
  String get confirm => 'Confirmar';
  @override
  String get apply => 'Aplicar';
  @override
  String get reset => 'Redefinir';
  @override
  String get retry => 'Tentar Novamente';
  @override
  String get viewAll => 'Ver Tudo';
}

// Path: pages
class _TranslationsPagesPt implements TranslationsPagesEn {
  _TranslationsPagesPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesLanguagePt language =
      _TranslationsPagesLanguagePt._(_root);
  @override
  late final _TranslationsPagesOnboardPt onboard =
      _TranslationsPagesOnboardPt._(_root);
  @override
  late final _TranslationsPagesSignInPt signIn = _TranslationsPagesSignInPt._(
    _root,
  );
  @override
  late final _TranslationsPagesForgotPasswordPt forgotPassword =
      _TranslationsPagesForgotPasswordPt._(_root);
  @override
  late final _TranslationsPagesOtpVerificationPt otpVerification =
      _TranslationsPagesOtpVerificationPt._(_root);
  @override
  late final _TranslationsPagesResetPasswordPt resetPassword =
      _TranslationsPagesResetPasswordPt._(_root);
  @override
  late final _TranslationsPagesSignUpPt signUp = _TranslationsPagesSignUpPt._(
    _root,
  );
  @override
  late final _TranslationsPagesWelcomePt welcome =
      _TranslationsPagesWelcomePt._(_root);
  @override
  late final _TranslationsPagesAboutUsPt aboutUs =
      _TranslationsPagesAboutUsPt._(_root);
  @override
  late final _TranslationsPagesTermsAndConditionsPt termsAndConditions =
      _TranslationsPagesTermsAndConditionsPt._(_root);
  @override
  late final _TranslationsPagesNotificationListPt notificationList =
      _TranslationsPagesNotificationListPt._(_root);
  @override
  late final _TranslationsPagesContactUsPt contactUs =
      _TranslationsPagesContactUsPt._(_root);
  @override
  late final _TranslationsPagesCancelRentingPt cancelRenting =
      _TranslationsPagesCancelRentingPt._(_root);
  @override
  late final _TranslationsPagesInvoiceDetailsPt invoiceDetails =
      _TranslationsPagesInvoiceDetailsPt._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentPt offlinePayment =
      _TranslationsPagesOfflinePaymentPt._(_root);
  @override
  late final _TranslationsPagesPaymentStatusPt paymentStatus =
      _TranslationsPagesPaymentStatusPt._(_root);
  @override
  late final _TranslationsPagesPropertyDetailsPt propertyDetails =
      _TranslationsPagesPropertyDetailsPt._(_root);
  @override
  late final _TranslationsPagesSearchPt search = _TranslationsPagesSearchPt._(
    _root,
  );
  @override
  late final _TranslationsPagesSubscriptionPlanPt subscriptionPlan =
      _TranslationsPagesSubscriptionPlanPt._(_root);
  @override
  late final _TranslationsPagesLandlordMaintenanceReportPt
  landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportPt._(
    _root,
  );
}

// Path: enums
class _TranslationsEnumsPt implements TranslationsEnumsEn {
  _TranslationsEnumsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsEnumsPropertyStatusPt propertyStatus =
      _TranslationsEnumsPropertyStatusPt._(_root);
  @override
  late final _TranslationsEnumsPropertyTypePt propertyType =
      _TranslationsEnumsPropertyTypePt._(_root);
  @override
  late final _TranslationsEnumsApplicationStatusPt applicationStatus =
      _TranslationsEnumsApplicationStatusPt._(_root);
  @override
  late final _TranslationsEnumsMyRentStatusPt myRentStatus =
      _TranslationsEnumsMyRentStatusPt._(_root);
  @override
  late final _TranslationsEnumsMaintenanceStatusPt maintenanceStatus =
      _TranslationsEnumsMaintenanceStatusPt._(_root);
  @override
  late final _TranslationsEnumsTenantProfileTypePt tenantProfileType =
      _TranslationsEnumsTenantProfileTypePt._(_root);
  @override
  late final _TranslationsEnumsTenantTypePt tenantType =
      _TranslationsEnumsTenantTypePt._(_root);
  @override
  late final _TranslationsEnumsPaymentStatusPt paymentStatus =
      _TranslationsEnumsPaymentStatusPt._(_root);
  @override
  late final _TranslationsEnumsPaymentOptionsPt paymentOptions =
      _TranslationsEnumsPaymentOptionsPt._(_root);
  @override
  late final _TranslationsEnumsPaymentTypePt paymentType =
      _TranslationsEnumsPaymentTypePt._(_root);
  @override
  late final _TranslationsEnumsGenderPt gender = _TranslationsEnumsGenderPt._(
    _root,
  );
  @override
  late final _TranslationsEnumsEcRelationPt ecRelation =
      _TranslationsEnumsEcRelationPt._(_root);
  @override
  late final _TranslationsEnumsVehicleTypePt vehicleType =
      _TranslationsEnumsVehicleTypePt._(_root);
  @override
  late final _TranslationsEnumsSortByPt sortBy = _TranslationsEnumsSortByPt._(
    _root,
  );
  @override
  late final _TranslationsEnumsResidentialTypePt residentialType =
      _TranslationsEnumsResidentialTypePt._(_root);
  @override
  late final _TranslationsEnumsFloorRangePt floorRange =
      _TranslationsEnumsFloorRangePt._(_root);
  @override
  late final _TranslationsEnumsFurnishingsPt furnishings =
      _TranslationsEnumsFurnishingsPt._(_root);
  @override
  late final _TranslationsEnumsCommercialPropertyTypePt commercialPropertyType =
      _TranslationsEnumsCommercialPropertyTypePt._(_root);
  @override
  late final _TranslationsEnumsLandPropertyTypePt landPropertyType =
      _TranslationsEnumsLandPropertyTypePt._(_root);
  @override
  late final _TranslationsEnumsResidentPropertyTypePt residentPropertyType =
      _TranslationsEnumsResidentPropertyTypePt._(_root);
  @override
  late final _TranslationsEnumsMinimumRentalPeriodPt minimumRentalPeriod =
      _TranslationsEnumsMinimumRentalPeriodPt._(_root);
  @override
  late final _TranslationsEnumsDropdownDateFilterPt dropdownDateFilter =
      _TranslationsEnumsDropdownDateFilterPt._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobilePt
    implements TranslationsCommonNomineeMobileEn {
  _TranslationsCommonNomineeMobilePt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get short => '${_root.common.nominee} Mo. No.';
  @override
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoPt
    implements TranslationsCommonVehiclesInfoEn {
  _TranslationsCommonVehiclesInfoPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get plain => 'Informações sobre Veículos';
  @override
  String get optional =>
      'Informações sobre Veículos (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoPt
    implements TranslationsCommonVehicleRegistrationNoEn {
  _TranslationsCommonVehicleRegistrationNoPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get normal => 'Número de Registo do Veículo';
  @override
  String get short => 'Número de Registo';
  @override
  String get alt => 'Número de Matrícula';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintPt
    implements TranslationsExceptionsNoApplicationFoundHintEn {
  _TranslationsExceptionsNoApplicationFoundHintPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String template({required String subject}) =>
      'Nenhuma candidatura encontrada!\n${subject} será exibido aqui quando disponível.';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSubjectsPt subjects =
      _TranslationsExceptionsNoApplicationFoundHintSubjectsPt._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintPt
    implements TranslationsExceptionsNoPropertyFoundHintEn {
  _TranslationsExceptionsNoPropertyFoundHintPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get landlordHome =>
      'Nenhuma propriedade encontrada!\nPor favor, tente adicionar uma propriedade para ver aqui.';
  @override
  String get tenantRecommended =>
      'Nenhuma Propriedade Recomendada encontrada\nPor favor, tente novamente mais tarde.';
  @override
  String get tenantAllProperty =>
      'Propriedades não disponíveis\nPor favor, tente novamente mais tarde.';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundPt
    implements TranslationsExceptionsNoStatusMaintenantFoundEn {
  _TranslationsExceptionsNoStatusMaintenantFoundPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Nenhuma manutenção ${status} encontrada.';
  @override
  String get tenant =>
      'Nenhuma manutenção encontrada! Pode criar um pedido de manutenção para o ver aqui.';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundPt
    implements TranslationsExceptionsNoStatusRefundReqFoundEn {
  _TranslationsExceptionsNoStatusRefundReqFoundPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Nenhum pedido de reembolso ${status} encontrado!\nPode ver o pedido de reembolso aqui quando disponível.';
  @override
  String get tenant =>
      'Nenhum pedido de reembolso encontrado!\nPode criar um pedido de reembolso para o ver aqui.';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintPt
    implements TranslationsExceptionsRefundRequestHintEn {
  _TranslationsExceptionsRefundRequestHintPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get inTenantList =>
      'O inquilino aprovará o reembolso quando receber o dinheiro de volta';
  @override
  String get tenantReqSuccess =>
      'Analisaremos o pedido de Reembolso e aprová-lo-emos dentro de 24 horas.';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertyPt
    implements TranslationsExceptionsEditPropertyEn {
  _TranslationsExceptionsEditPropertyPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get rentalChange =>
      'A propriedade de aluguer está a mudar. Deve ser válida (eficaz) apenas para o pagamento da renda do próximo mês.';
  @override
  String get deleteOnRent =>
      'A sua propriedade já está alugada pelo inquilino. Não pode eliminá-la até remover o inquilino primeiro';
  @override
  String get alreayRented =>
      'Esta propriedade já está alugada. Por favor, tente novamente mais tarde.\nOu pode contactar o senhorio para obter mais informações.';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationPt
    implements TranslationsExceptionsRentInvitationEn {
  _TranslationsExceptionsRentInvitationPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get landlordNoRentInvitation =>
      'Nenhum convite de aluguer encontrado!\nPor favor, tente criar um convite de aluguer para ver aqui.';
  @override
  String get tenantNoRentInvitation =>
      'Nenhum convite de aluguer encontrado!\nPode ver o convite de aluguer aqui quando disponível.';
}

// Path: prompt.logout
class _TranslationsPromptLogoutPt implements TranslationsPromptLogoutEn {
  _TranslationsPromptLogoutPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get title => _root.common.logout;
  @override
  String get message => 'Tem a certeza que pretende sair?';
}

// Path: prompt.application
class _TranslationsPromptApplicationPt
    implements TranslationsPromptApplicationEn {
  _TranslationsPromptApplicationPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Por que está a rejeitar esta candidatura?';
  @override
  late final _TranslationsPromptApplicationApplicationSentPt applicationSent =
      _TranslationsPromptApplicationApplicationSentPt._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborPt implements TranslationsPromptLaborEn {
  _TranslationsPromptLaborPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLaborDeletePt delete =
      _TranslationsPromptLaborDeletePt._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestPt
    implements TranslationsPromptMaintenanceRequestEn {
  _TranslationsPromptMaintenanceRequestPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Por que este pedido está a ser rejeitado?';
  @override
  String get processTitle =>
      'Tem a certeza que pretende processar este pedido de Manutenção?';
  @override
  String get completeTitle => 'Trabalho concluído?';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodPt
    implements TranslationsPromptWithdrawMethodEn {
  _TranslationsPromptWithdrawMethodPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get deleteTitle => 'Eliminar Método de Levantamento?';
  @override
  String get deleteDescription =>
      'Tem a certeza que pretende eliminar este método de levantamento?';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesPt
    implements TranslationsPromptUnsavedChangesEn {
  _TranslationsPromptUnsavedChangesPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Tem a certeza que pretende voltar atrás?';
  @override
  String get message => 'Os campos que foram alterados não serão guardados!';
}

// Path: prompt.property
class _TranslationsPromptPropertyPt implements TranslationsPromptPropertyEn {
  _TranslationsPromptPropertyPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptPropertyDeletePt delete =
      _TranslationsPromptPropertyDeletePt._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationPt
    implements TranslationsPromptRentInvitationEn {
  _TranslationsPromptRentInvitationPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptRentInvitationLandlordApprovePt
  landlordApprove = _TranslationsPromptRentInvitationLandlordApprovePt._(_root);
  @override
  late final _TranslationsPromptRentInvitationTenantAcceptPt tenantAccept =
      _TranslationsPromptRentInvitationTenantAcceptPt._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredPt
    implements TranslationsPromptSessionExpiredEn {
  _TranslationsPromptSessionExpiredPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sessão expirada';
  @override
  String get message =>
      'A sua sessão expirou. Por favor, inicie sessão novamente';
  @override
  String get action => 'Iniciar Sessão';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetPt
    implements TranslationsPromptNoInternetEn {
  _TranslationsPromptNoInternetPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sem Ligação à Internet';
  @override
  String get message =>
      'Por favor, verifique a sua ligação de rede móvel Wi-Fi e tente novamente';
  @override
  String get action => 'Tentar Novamente';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerPt
    implements TranslationsPromptPermissionHandlerEn {
  _TranslationsPromptPermissionHandlerPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Permissão necessária!';
  @override
  String get message =>
      'Precisa conceder permissões nas configurações da aplicação. Gostaria de abrir as configurações agora?';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerPt
    implements TranslationsPromptImagePickerEn {
  _TranslationsPromptImagePickerPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Selecionar Opção';
  @override
  String get gallery => 'Galeria';
  @override
  String get camera => 'Câmera';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogPt
    implements TranslationsPromptVerificationDialogEn {
  _TranslationsPromptVerificationDialogPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Verifique o Seu Email';
  @override
  String get message => 'Enviámos um email com um código de verificação';
  @override
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message} para ${email}';
}

// Path: prompt.notification
class _TranslationsPromptNotificationPt
    implements TranslationsPromptNotificationEn {
  _TranslationsPromptNotificationPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get clearTitle => 'Limpar notificações?';
  @override
  String get clearMessage =>
      'Tem a certeza que pretende limpar todas as notificações?';
}

// Path: form.fullName
class _TranslationsFormFullNamePt implements TranslationsFormFullNameEn {
  _TranslationsFormFullNamePt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.fullName;
  @override
  String get hint => 'Introduza ${_root.common.fullName}';
  @override
  late final _TranslationsFormFullNameErrorsPt errors =
      _TranslationsFormFullNameErrorsPt._(_root);
}

// Path: form.email
class _TranslationsFormEmailPt implements TranslationsFormEmailEn {
  _TranslationsFormEmailPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.email;
  @override
  String get hint => 'Introduza o seu ${_root.common.email}';
  @override
  late final _TranslationsFormEmailErrorsPt errors =
      _TranslationsFormEmailErrorsPt._(_root);
}

// Path: form.password
class _TranslationsFormPasswordPt implements TranslationsFormPasswordEn {
  _TranslationsFormPasswordPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.password;
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormPasswordErrorsPt errors =
      _TranslationsFormPasswordErrorsPt._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordPt
    implements TranslationsFormConfirmPasswordEn {
  _TranslationsFormConfirmPasswordPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Confirmar ${_root.common.password}';
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormConfirmPasswordErrorsPt errors =
      _TranslationsFormConfirmPasswordErrorsPt._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberPt
    implements TranslationsFormMobileNumberEn {
  _TranslationsFormMobileNumberPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.mobileNumber;
  @override
  String get hint => '(+60) 555-0123';
  @override
  late final _TranslationsFormMobileNumberErrorsPt errors =
      _TranslationsFormMobileNumberErrorsPt._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1Pt implements TranslationsFormAddress1En {
  _TranslationsFormAddress1Pt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 1';
  @override
  String get hint => 'Número da casa e nome da rua';
  @override
  late final _TranslationsFormAddress1ErrorsPt errors =
      _TranslationsFormAddress1ErrorsPt._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2Pt implements TranslationsFormAddress2En {
  _TranslationsFormAddress2Pt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 2';
  @override
  String get hint => 'Apartamento, suíte, unidade, etc.';
  @override
  late final _TranslationsFormAddress2ErrorsPt errors =
      _TranslationsFormAddress2ErrorsPt._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodePt implements TranslationsFormPostalCodeEn {
  _TranslationsFormPostalCodePt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.postalCode;
  @override
  String get hint => 'Introduza ${_root.common.postalCode}';
  @override
  late final _TranslationsFormPostalCodeErrorsPt errors =
      _TranslationsFormPostalCodeErrorsPt._(_root);
}

// Path: form.city
class _TranslationsFormCityPt implements TranslationsFormCityEn {
  _TranslationsFormCityPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.city;
  @override
  String get hint => 'Introduza o nome da ${_root.common.city}.';
  @override
  late final _TranslationsFormCityErrorsPt errors =
      _TranslationsFormCityErrorsPt._(_root);
}

// Path: form.state
class _TranslationsFormStatePt implements TranslationsFormStateEn {
  _TranslationsFormStatePt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.state;
  @override
  String get hint => 'Introduza o nome do ${_root.common.state}.';
  @override
  late final _TranslationsFormStateErrorsPt errors =
      _TranslationsFormStateErrorsPt._(_root);
}

// Path: form.country
class _TranslationsFormCountryPt implements TranslationsFormCountryEn {
  _TranslationsFormCountryPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.country;
  @override
  String get hint => 'Selecione ${_root.common.country}.';
  @override
  late final _TranslationsFormCountryErrorsPt errors =
      _TranslationsFormCountryErrorsPt._(_root);
}

// Path: form.otp
class _TranslationsFormOtpPt implements TranslationsFormOtpEn {
  _TranslationsFormOtpPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormOtpErrorsPt errors =
      _TranslationsFormOtpErrorsPt._(_root);
}

// Path: form.title
class _TranslationsFormTitlePt implements TranslationsFormTitleEn {
  _TranslationsFormTitlePt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Título';
  @override
  String get hint => 'Introduza o título';
  @override
  late final _TranslationsFormTitleErrorsPt errors =
      _TranslationsFormTitleErrorsPt._(_root);
}

// Path: form.date
class _TranslationsFormDatePt implements TranslationsFormDateEn {
  _TranslationsFormDatePt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Selecione ${_root.form.date.label(label: label)}';
  @override
  late final _TranslationsFormDateErrorsPt errors =
      _TranslationsFormDateErrorsPt._(_root);
}

// Path: form.reason
class _TranslationsFormReasonPt implements TranslationsFormReasonEn {
  _TranslationsFormReasonPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Motivo';
  @override
  String get hint => 'Introduza o motivo';
  @override
  late final _TranslationsFormReasonErrorsPt errors =
      _TranslationsFormReasonErrorsPt._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodPt
    implements TranslationsFormWithdrawMethodEn {
  _TranslationsFormWithdrawMethodPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.withdrawMethod;
  @override
  String get hint => 'Selecione ${_root.common.withdrawMethod}';
  @override
  late final _TranslationsFormWithdrawMethodErrorsPt errors =
      _TranslationsFormWithdrawMethodErrorsPt._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldPt implements TranslationsFormFileFieldEn {
  _TranslationsFormFileFieldPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) => 'Carregar ${label}';
  @override
  late final _TranslationsFormFileFieldErrorsPt errors =
      _TranslationsFormFileFieldErrorsPt._(_root);
}

// Path: form.note
class _TranslationsFormNotePt implements TranslationsFormNoteEn {
  _TranslationsFormNotePt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String label({required String note}) => '${note}';
  @override
  String hint({required String note}) =>
      'Introduza ${_root.form.note.label(note: note)}';
  @override
  late final _TranslationsFormNoteErrorsPt errors =
      _TranslationsFormNoteErrorsPt._(_root);
}

// Path: form.gender
class _TranslationsFormGenderPt implements TranslationsFormGenderEn {
  _TranslationsFormGenderPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.gender;
  @override
  String get hint => 'Selecione ${_root.common.gender}';
  @override
  late final _TranslationsFormGenderErrorsPt errors =
      _TranslationsFormGenderErrorsPt._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldPt implements TranslationsFormAnyFieldEn {
  _TranslationsFormAnyFieldPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Introduza ${_root.form.anyField.label(label: label)}';
  @override
  late final _TranslationsFormAnyFieldErrorsPt errors =
      _TranslationsFormAnyFieldErrorsPt._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownPt implements TranslationsFormAnyDropdownEn {
  _TranslationsFormAnyDropdownPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Selecione ${_root.form.anyDropdown.label(label: label)}';
  @override
  late final _TranslationsFormAnyDropdownErrorsPt errors =
      _TranslationsFormAnyDropdownErrorsPt._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguagePt implements TranslationsPagesLanguageEn {
  _TranslationsPagesLanguagePt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardPt implements TranslationsPagesOnboardEn {
  _TranslationsPagesOnboardPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataPt onboardData =
      _TranslationsPagesOnboardOnboardDataPt._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInPt implements TranslationsPagesSignInEn {
  _TranslationsPagesSignInPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Bem-vindo de Volta';
  @override
  String get subtitle =>
      'Inicie sessão agora para começar uma jornada incrível.';
  @override
  late final _TranslationsPagesSignInExtraPt extra =
      _TranslationsPagesSignInExtraPt._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordPt
    implements TranslationsPagesForgotPasswordEn {
  _TranslationsPagesForgotPasswordPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Esqueceu-se da password';
  @override
  String get subtitle =>
      'Introduza o seu endereço de email para recuperar a sua password.';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationPt
    implements TranslationsPagesOtpVerificationEn {
  _TranslationsPagesOtpVerificationPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Verificação';
  @override
  String subtitle({required String email}) =>
      'Um código de 4 dígitos foi enviado para o seu endereço de email. ${email}';
  @override
  late final _TranslationsPagesOtpVerificationExtraPt extra =
      _TranslationsPagesOtpVerificationExtraPt._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordPt
    implements TranslationsPagesResetPasswordEn {
  _TranslationsPagesResetPasswordPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Redefinir password';
  @override
  String get subtitle =>
      'Redefina a sua password para recuperar e iniciar sessão na sua conta';
  @override
  late final _TranslationsPagesResetPasswordExtraPt extra =
      _TranslationsPagesResetPasswordExtraPt._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpPt implements TranslationsPagesSignUpEn {
  _TranslationsPagesSignUpPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Criar Uma Conta';
  @override
  String get subtitle => 'Registe-se agora para começar uma jornada incrível';
  @override
  late final _TranslationsPagesSignUpExtraPt extra =
      _TranslationsPagesSignUpExtraPt._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomePt implements TranslationsPagesWelcomeEn {
  _TranslationsPagesWelcomePt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Quem é você?';
  @override
  String get subtitle => 'Por favor, selecione a opção abaixo.';
  @override
  late final _TranslationsPagesWelcomeExtraPt extra =
      _TranslationsPagesWelcomeExtraPt._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsPt implements TranslationsPagesAboutUsEn {
  _TranslationsPagesAboutUsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsPt
    implements TranslationsPagesTermsAndConditionsEn {
  _TranslationsPagesTermsAndConditionsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListPt
    implements TranslationsPagesNotificationListEn {
  _TranslationsPagesNotificationListPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Notificações';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsPt implements TranslationsPagesContactUsEn {
  _TranslationsPagesContactUsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.contactUs;
  @override
  late final _TranslationsPagesContactUsExtraPt extra =
      _TranslationsPagesContactUsExtraPt._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingPt
    implements TranslationsPagesCancelRentingEn {
  _TranslationsPagesCancelRentingPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.cancelRenting;
  @override
  String get title => 'Por que está a ${_root.common.cancelRenting}?';
  @override
  late final _TranslationsPagesCancelRentingFormPt form =
      _TranslationsPagesCancelRentingFormPt._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsPt
    implements TranslationsPagesInvoiceDetailsEn {
  _TranslationsPagesInvoiceDetailsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentPt
    implements TranslationsPagesOfflinePaymentEn {
  _TranslationsPagesOfflinePaymentPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Pagamento Offline';
  @override
  late final _TranslationsPagesOfflinePaymentFormPt form =
      _TranslationsPagesOfflinePaymentFormPt._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentExtraPt extra =
      _TranslationsPagesOfflinePaymentExtraPt._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusPt
    implements TranslationsPagesPaymentStatusEn {
  _TranslationsPagesPaymentStatusPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPaymentStatusSuccessPt success =
      _TranslationsPagesPaymentStatusSuccessPt._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFailPt fail =
      _TranslationsPagesPaymentStatusFailPt._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsPt
    implements TranslationsPagesPropertyDetailsEn {
  _TranslationsPagesPropertyDetailsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPropertyDetailsExtraPt extra =
      _TranslationsPagesPropertyDetailsExtraPt._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchPt implements TranslationsPagesSearchEn {
  _TranslationsPagesSearchPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Pesquisar';
  @override
  late final _TranslationsPagesSearchExtraPt extra =
      _TranslationsPagesSearchExtraPt._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanPt
    implements TranslationsPagesSubscriptionPlanEn {
  _TranslationsPagesSubscriptionPlanPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Escolha o Seu Plano';
  @override
  late final _TranslationsPagesSubscriptionPlanExtraPt extra =
      _TranslationsPagesSubscriptionPlanExtraPt._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportPt
    implements TranslationsPagesLandlordMaintenanceReportEn {
  _TranslationsPagesLandlordMaintenanceReportPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Custo Total de Manutenção: '),
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
class _TranslationsEnumsPropertyStatusPt
    implements TranslationsEnumsPropertyStatusEn {
  _TranslationsEnumsPropertyStatusPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get allProperty => 'Todas as Propriedades';
  @override
  String get pending => 'Pendente';
  @override
  String get active => 'Ativo';
  @override
  String get inactive => 'Inativo';
  @override
  String get rejected => 'Rejeitado';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypePt
    implements TranslationsEnumsPropertyTypeEn {
  _TranslationsEnumsPropertyTypePt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get apartmentCondominium => 'Apartamento/Condomínio';
  @override
  String get house => 'Casa';
  @override
  String get commercialProperty => 'Propriedade Comercial';
  @override
  String get land => 'Terreno';
  @override
  String get room => 'Quarto';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusPt
    implements TranslationsEnumsApplicationStatusEn {
  _TranslationsEnumsApplicationStatusPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Todos';
  @override
  String get pending => 'Pendente';
  @override
  String get processing => 'Em Processamento';
  @override
  String get approved => 'Aprovado';
  @override
  String get rejected => 'Rejeitado';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusPt
    implements TranslationsEnumsMyRentStatusEn {
  _TranslationsEnumsMyRentStatusPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Pendente';
  @override
  String get processing => 'Em Processamento';
  @override
  String get active => 'Ativo';
  @override
  String get expired => 'Expirado';
  @override
  String get cancelled => 'Cancelado';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusPt
    implements TranslationsEnumsMaintenanceStatusEn {
  _TranslationsEnumsMaintenanceStatusPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Pendente';
  @override
  String get processing => 'Em Processamento';
  @override
  String get rejected => 'Rejeitado';
  @override
  String get completed => 'Concluído';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypePt
    implements TranslationsEnumsTenantProfileTypeEn {
  _TranslationsEnumsTenantProfileTypePt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get privateIndividual => 'Privado (Individual)';
  @override
  String get company => 'Empresa';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypePt implements TranslationsEnumsTenantTypeEn {
  _TranslationsEnumsTenantTypePt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get newTenant => 'Novo Inquilino';
  @override
  String get activeTenant => 'Inquilino Ativo';
  @override
  String get expiredTenant => 'Inquilino Expirado';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusPt
    implements TranslationsEnumsPaymentStatusEn {
  _TranslationsEnumsPaymentStatusPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Todos';
  @override
  String get pending => 'Pendente';
  @override
  String get paid => 'Pago';
  @override
  String get unpaid => 'Não Pago';
  @override
  String get rejected => 'Rejeitado';
  @override
  String get refund => 'Reembolso';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsPt
    implements TranslationsEnumsPaymentOptionsEn {
  _TranslationsEnumsPaymentOptionsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get onlinePayment => 'Pagamento Online';
  @override
  String get offlinePayment => 'Pagamento Offline';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypePt
    implements TranslationsEnumsPaymentTypeEn {
  _TranslationsEnumsPaymentTypePt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get securityDeposit => 'Caução';
  @override
  String get rentPayment => 'Pagamento de Renda';
  @override
  String get subscription => 'Subscrição';
}

// Path: enums.gender
class _TranslationsEnumsGenderPt implements TranslationsEnumsGenderEn {
  _TranslationsEnumsGenderPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get male => 'Masculino';
  @override
  String get female => 'Feminino';
  @override
  String get other => 'Outro';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationPt implements TranslationsEnumsEcRelationEn {
  _TranslationsEnumsEcRelationPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get wife => 'Esposa';
  @override
  String get parent => 'Pai/Mãe';
  @override
  String get friend => 'Amigo(a)';
  @override
  String get brother => 'Irmão';
  @override
  String get sister => 'Irmã';
  @override
  String get child => 'Filho(a)';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypePt
    implements TranslationsEnumsVehicleTypeEn {
  _TranslationsEnumsVehicleTypePt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get car => 'Carro';
  @override
  String get motorcycles => 'Motos';
  @override
  String get lorry => 'Camião';
}

// Path: enums.sortBy
class _TranslationsEnumsSortByPt implements TranslationsEnumsSortByEn {
  _TranslationsEnumsSortByPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get lowToHigh => 'Do Mais Baixo ao Mais Alto';
  @override
  String get highToLow => 'Do Mais Alto ao Mais Baixo';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypePt
    implements TranslationsEnumsResidentialTypeEn {
  _TranslationsEnumsResidentialTypePt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get flat => 'Apartamento';
  @override
  String get apartment => 'Apartamento';
  @override
  String get condominium => 'Condomínio';
  @override
  String get serviceResidence => 'Residência de Serviço';
  @override
  String get studio => 'Estúdio';
  @override
  String get duplex => 'Duplex';
  @override
  String get townhouseCondo => 'Condomínio Geminado';
  @override
  String get others => 'Outros';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangePt implements TranslationsEnumsFloorRangeEn {
  _TranslationsEnumsFloorRangePt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get high => 'Alto';
  @override
  String get medium => 'Médio';
  @override
  String get low => 'Baixo';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsPt
    implements TranslationsEnumsFurnishingsEn {
  _TranslationsEnumsFurnishingsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get fullyFurnished => 'Totalmente Mobilado';
  @override
  String get partiallyFurnished => 'Parcialmente Mobilado';
  @override
  String get notFurnished => 'Não Mobilado';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypePt
    implements TranslationsEnumsCommercialPropertyTypeEn {
  _TranslationsEnumsCommercialPropertyTypePt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get officeSpace => 'Espaço de escritório';
  @override
  String get retailSpace => 'Espaço de retalho';
  @override
  String get shopLot => 'Lote de loja';
  @override
  String get warehouseFactory => 'Armazém / Fábrica';
  @override
  String get hotelResort => 'Hotel / Resort';
  @override
  String get sofo => 'Sofo';
  @override
  String get soho => 'Soho';
  @override
  String get sovo => 'Sovo';
  @override
  String get others => 'Outros';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypePt
    implements TranslationsEnumsLandPropertyTypeEn {
  _TranslationsEnumsLandPropertyTypePt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get residential => 'Residencial';
  @override
  String get industrial => 'Industrial';
  @override
  String get agricultural => 'Agrícola';
  @override
  String get commercial => 'Comercial';
  @override
  String get mixedDevelopment => 'Desenvolvimento Misto';
  @override
  String get others => 'Outros';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypePt
    implements TranslationsEnumsResidentPropertyTypeEn {
  _TranslationsEnumsResidentPropertyTypePt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get condo => 'Condomínio / Residência de serviços / Penthouse';
  @override
  String get apartment => 'Apartamento';
  @override
  String get house => 'Casas';
  @override
  String get shoplot => 'Loja';
  @override
  String get sharing => 'Partilha de casa / Apartamento';
  @override
  String get others => 'Outros';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodPt
    implements TranslationsEnumsMinimumRentalPeriodEn {
  _TranslationsEnumsMinimumRentalPeriodPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get sixMonths => '6 Meses';
  @override
  String get oneYear => '1 Ano';
  @override
  String get oneAndHalfYears => '1,5 Anos';
  @override
  String get twoYears => '2 Anos';
  @override
  String get twoAndHalfYears => '2,5 Anos';
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterPt
    implements TranslationsEnumsDropdownDateFilterEn {
  _TranslationsEnumsDropdownDateFilterPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get daily => 'Diário';
  @override
  String get weekly => 'Semanal';
  @override
  String get monthly => 'Mensal';
  @override
  String get yearly => 'Anual';
  @override
  String get custom => 'Personalizado';
}

// Path: exceptions.noApplicationFoundHint.subjects
class _TranslationsExceptionsNoApplicationFoundHintSubjectsPt
    implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  _TranslationsExceptionsNoApplicationFoundHintSubjectsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get tenant => 'A sua candidatura';
  @override
  String get landlord => 'Candidatura do inquilino';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentPt
    implements TranslationsPromptApplicationApplicationSentEn {
  _TranslationsPromptApplicationApplicationSentPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get successfully => 'Candidatura enviada com sucesso!';
  @override
  String get sucessDescription =>
      'Pode ver esta candidatura na sua lista de candidaturas';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeletePt
    implements TranslationsPromptLaborDeleteEn {
  _TranslationsPromptLaborDeletePt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Eliminar Mão de Obra?';
  @override
  String get description =>
      'Tem a certeza que pretende eliminar esta mão de obra?';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeletePt
    implements TranslationsPromptPropertyDeleteEn {
  _TranslationsPromptPropertyDeletePt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Eliminar Propriedade?';
  @override
  String get message => 'Tem a certeza que pretende eliminar esta propriedade?';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApprovePt
    implements TranslationsPromptRentInvitationLandlordApproveEn {
  _TranslationsPromptRentInvitationLandlordApprovePt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Tem a certeza que pretende aprovar este aluguer?';
  @override
  String get description =>
      'Certifique-se de que revisou o contrato assinado pelo inquilino.';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptPt
    implements TranslationsPromptRentInvitationTenantAcceptEn {
  _TranslationsPromptRentInvitationTenantAcceptPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Tem a certeza que pretende aceitar este convite?';
  @override
  String get description =>
      'Certifique-se de que descarregou o ficheiro pdf do contrato!';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsPt
    implements TranslationsFormFullNameErrorsEn {
  _TranslationsFormFullNameErrorsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Por favor, introduza o seu ${_root.common.fullName}';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsPt implements TranslationsFormEmailErrorsEn {
  _TranslationsFormEmailErrorsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Por favor, introduza o seu endereço de ${_root.common.email}';
  @override
  String get invalid => '⦸ Email Inválido, Por Favor, Tente Novamente';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsPt
    implements TranslationsFormPasswordErrorsEn {
  _TranslationsFormPasswordErrorsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Por favor, introduza a sua ${_root.common.password}';
  @override
  String minLength({required Object count}) =>
      'A password deve ter pelo menos ${count} caracteres!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsPt
    implements TranslationsFormConfirmPasswordErrorsEn {
  _TranslationsFormConfirmPasswordErrorsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Por favor, introduza a sua ${_root.common.password}';
  @override
  String get notMatched => 'As passwords não correspondem!';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsPt
    implements TranslationsFormMobileNumberErrorsEn {
  _TranslationsFormMobileNumberErrorsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Por favor, introduza o seu ${_root.common.mobileNumber}';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsPt
    implements TranslationsFormAddress1ErrorsEn {
  _TranslationsFormAddress1ErrorsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Por favor, introduza o seu ${_root.form.address1.label}';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsPt
    implements TranslationsFormAddress2ErrorsEn {
  _TranslationsFormAddress2ErrorsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Por favor, introduza o seu ${_root.form.address2.label}';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsPt
    implements TranslationsFormPostalCodeErrorsEn {
  _TranslationsFormPostalCodeErrorsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Por favor, introduza o seu ${_root.common.postalCode}';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsPt implements TranslationsFormCityErrorsEn {
  _TranslationsFormCityErrorsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Por favor, introduza o nome da sua ${_root.common.city}.';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsPt implements TranslationsFormStateErrorsEn {
  _TranslationsFormStateErrorsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Por favor, introduza o nome do seu ${_root.common.state}.';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsPt
    implements TranslationsFormCountryErrorsEn {
  _TranslationsFormCountryErrorsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Por favor, selecione o seu ${_root.common.country}';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsPt implements TranslationsFormOtpErrorsEn {
  _TranslationsFormOtpErrorsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Por favor, introduza o otp.';
  @override
  String get invalid => 'Por favor, introduza o otp correto.';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsPt implements TranslationsFormTitleErrorsEn {
  _TranslationsFormTitleErrorsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Por favor, introduza o título';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsPt implements TranslationsFormDateErrorsEn {
  _TranslationsFormDateErrorsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Por favor, selecione ${_root.form.date.label(label: label)}';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsPt
    implements TranslationsFormReasonErrorsEn {
  _TranslationsFormReasonErrorsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Por favor, introduza o motivo';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsPt
    implements TranslationsFormWithdrawMethodErrorsEn {
  _TranslationsFormWithdrawMethodErrorsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Por favor, selecione ${_root.common.withdrawMethod}';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsPt
    implements TranslationsFormFileFieldErrorsEn {
  _TranslationsFormFileFieldErrorsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) => 'Por favor, selecione ${label}';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsPt implements TranslationsFormNoteErrorsEn {
  _TranslationsFormNoteErrorsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String required({required String note}) =>
      'Por favor, introduza ${_root.form.note.label(note: note)}';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsPt
    implements TranslationsFormGenderErrorsEn {
  _TranslationsFormGenderErrorsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Por favor, selecione ${_root.common.gender}';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsPt
    implements TranslationsFormAnyFieldErrorsEn {
  _TranslationsFormAnyFieldErrorsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Por favor, introduza ${_root.form.anyField.label(label: label)}';
  @override
  String get invalid => 'Por favor, introduza um @form.anyField.label válido';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsPt
    implements TranslationsFormAnyDropdownErrorsEn {
  _TranslationsFormAnyDropdownErrorsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Por favor, selecione ${_root.form.anyDropdown.label(label: label)}';
  @override
  String get invalid =>
      'Por favor, selecione um @form.anyDropdown.label válido';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataPt
    implements TranslationsPagesOnboardOnboardDataEn {
  _TranslationsPagesOnboardOnboardDataPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataData1Pt data1 =
      _TranslationsPagesOnboardOnboardDataData1Pt._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData2Pt data2 =
      _TranslationsPagesOnboardOnboardDataData2Pt._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData3Pt data3 =
      _TranslationsPagesOnboardOnboardDataData3Pt._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraPt
    implements TranslationsPagesSignInExtraEn {
  _TranslationsPagesSignInExtraPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get rememberMe => 'Lembrar-me';
  @override
  TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(
    children: [
      const TextSpan(text: 'Não tem uma conta? '),
      getStarted(_root.action.getStarted),
    ],
  );
  @override
  String get forgotPassword => '${_root.common.forgotPassword}?';
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraPt
    implements TranslationsPagesOtpVerificationExtraEn {
  _TranslationsPagesOtpVerificationExtraPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOtpVerificationExtraCodeResendPt codeResend =
      _TranslationsPagesOtpVerificationExtraCodeResendPt._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraPt
    implements TranslationsPagesResetPasswordExtraEn {
  _TranslationsPagesResetPasswordExtraPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesResetPasswordExtraDialogPt dialog =
      _TranslationsPagesResetPasswordExtraDialogPt._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraPt
    implements TranslationsPagesSignUpExtraEn {
  _TranslationsPagesSignUpExtraPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(
    children: [
      const TextSpan(text: 'Já tem uma conta? '),
      signIn(_root.action.signIn),
    ],
  );
}

// Path: pages.welcome.extra
class _TranslationsPagesWelcomeExtraPt
    implements TranslationsPagesWelcomeExtraEn {
  _TranslationsPagesWelcomeExtraPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get landlordTag => 'Gerir as suas próprias propriedades';
  @override
  String get tenantTag => 'Iniciar sessão na sua conta de aluguer';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraPt
    implements TranslationsPagesContactUsExtraEn {
  _TranslationsPagesContactUsExtraPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get messageHint => 'Mensagem...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormPt
    implements TranslationsPagesCancelRentingFormEn {
  _TranslationsPagesCancelRentingFormPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesCancelRentingFormReasonPt reason =
      _TranslationsPagesCancelRentingFormReasonPt._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormPt
    implements TranslationsPagesOfflinePaymentFormEn {
  _TranslationsPagesOfflinePaymentFormPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOfflinePaymentFormPaymentNotePt paymentNote =
      _TranslationsPagesOfflinePaymentFormPaymentNotePt._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraPt
    implements TranslationsPagesOfflinePaymentExtraEn {
  _TranslationsPagesOfflinePaymentExtraPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Valor a Pagar: '),
      amount,
    ],
  );
  @override
  String get accountHolderName => 'Nome do Titular da Conta';
  @override
  String get accountNumber => 'Número da Conta';
  @override
  String get swiftCode => 'Código Swift';
  @override
  String get branch => 'Agência';
  @override
  TextSpan fileTypeHint({
    required InlineSpanBuilder fileType,
    required InlineSpanBuilder fileSize,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Escolha ficheiros de formato '),
      fileType('JPG, PNG,PDF'),
      const TextSpan(text: ' Ou '),
      fileType('DOC'),
      const TextSpan(text: ' apenas. Tamanho do ficheiro '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessPt
    implements TranslationsPagesPaymentStatusSuccessEn {
  _TranslationsPagesPaymentStatusSuccessPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Ver Fatura';
  @override
  String get title => _root.common.thankYou;
  @override
  String get description =>
      'Analisaremos o pagamento e aprová-lo-emos dentro de 24 horas.';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailPt
    implements TranslationsPagesPaymentStatusFailEn {
  _TranslationsPagesPaymentStatusFailPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Tentar Novamente';
  @override
  String get title => 'Oops! Pagamento Falhou';
  @override
  String get description =>
      'A sua transação falhou devido a algum erro técnico.';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraPt
    implements TranslationsPagesPropertyDetailsExtraEn {
  _TranslationsPagesPropertyDetailsExtraPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

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
      const TextSpan(text: 'Funcionalidades '),
      fa('(Instalações e Comodidades)'),
    ],
  );
  @override
  String get selectRentalPeriod => 'Selecionar Período de Aluguer';
  @override
  String get writeAReview => '+ Escrever uma avaliação';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraPt
    implements TranslationsPagesSearchExtraEn {
  _TranslationsPagesSearchExtraPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Pesquisar por terrenos, apartamentos, quartos...';
  @override
  String get noRecentSearch => 'Não tem pesquisas recentes.';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraPt
    implements TranslationsPagesSubscriptionPlanExtraEn {
  _TranslationsPagesSubscriptionPlanExtraPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get subscriptionPaymentSuccess =>
      'Pagamento da subscrição com sucesso.\nAgora pode aceder às funcionalidades subscritas.';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1Pt
    implements TranslationsPagesOnboardOnboardDataData1En {
  _TranslationsPagesOnboardOnboardDataData1Pt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Encontre a Sua Propriedade';
  @override
  String get description =>
      'Facilitámos a procura de um lugar que se adapte à sua vida - seja um quarto, um apartamento ou uma casa.';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2Pt
    implements TranslationsPagesOnboardOnboardDataData2En {
  _TranslationsPagesOnboardOnboardDataData2Pt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Apartamento na Cidade';
  @override
  String get description =>
      'Poupamos-lhe tempo ao combinar rapidamente com a propriedade perfeita antes que ela desapareça, para que possa desfrutar da sua nova casa ou listar a sua gratuitamente.';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3Pt
    implements TranslationsPagesOnboardOnboardDataData3En {
  _TranslationsPagesOnboardOnboardDataData3Pt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'A Sua Casa Confortável';
  @override
  String get description =>
      'Se está à procura de um lugar para morar, dê uma olhada nas nossas casas para alugar. Temos uma vasta gama de casas para si escolher em todo o país.';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendPt
    implements TranslationsPagesOtpVerificationExtraCodeResendEn {
  _TranslationsPagesOtpVerificationExtraCodeResendPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String codeSendIn({required Object minutes, required Object seconds}) =>
      'Código enviado em ${minutes}:${seconds}';
  @override
  TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(
    children: [
      const TextSpan(text: ' '),
      resendCode('Reenviar código'),
      const TextSpan(text: ' '),
    ],
  );
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogPt
    implements TranslationsPagesResetPasswordExtraDialogEn {
  _TranslationsPagesResetPasswordExtraDialogPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Alterado com sucesso!';
  @override
  String get subtitle =>
      'Inicie sessão com a sua nova password.\nA redirecioná-lo para Iniciar Sessão...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonPt
    implements TranslationsPagesCancelRentingFormReasonEn {
  _TranslationsPagesCancelRentingFormReasonPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Escrever motivo';
  @override
  late final _TranslationsPagesCancelRentingFormReasonErrorsPt errors =
      _TranslationsPagesCancelRentingFormReasonErrorsPt._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNotePt
    implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  _TranslationsPagesOfflinePaymentFormPaymentNotePt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Nota de Pagamento (${_root.common.optional})';
  @override
  String get hint => 'Introduza algum texto...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsPt
    implements TranslationsPagesCancelRentingFormReasonErrorsEn {
  _TranslationsPagesCancelRentingFormReasonErrorsPt._(this._root);

  final TranslationsPt _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Por favor, introduza o motivo para o cancelamento do aluguer';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsPt {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return 'Perfil';
      case 'common.language':
        return 'Idioma';
      case 'common.subscriptionPlan':
        return 'Plano de Subscrição';
      case 'common.contactUs':
        return 'Contacte-nos';
      case 'common.termsAndConditions':
        return 'Termos e Condições';
      case 'common.aboutUs':
        return 'Sobre Nós';
      case 'common.logout':
        return 'Sair';
      case 'common.editProfile':
        return 'Editar Perfil';
      case 'common.fullName':
        return 'Nome Completo';
      case 'common.email':
        return 'Email';
      case 'common.mobileNumber':
        return 'Número de Telemóvel';
      case 'common.address':
        return 'Morada';
      case 'common.postalCode':
        return 'Código Postal';
      case 'common.city':
        return 'Cidade';
      case 'common.country':
        return 'País';
      case 'common.state':
        return 'Estado';
      case 'common.password':
        return 'Password';
      case 'common.forgotPassword':
        return 'Esqueceu-se da password';
      case 'common.tenant':
        return 'Inquilino';
      case 'common.landlord':
        return 'Senhorio';
      case 'common.cancelRenting':
        return 'Cancelar Arrendamento';
      case 'common.startDate':
        return 'Data de Início';
      case 'common.endDate':
        return 'Data de Fim';
      case 'common.fromDate':
        return 'Data de Início';
      case 'common.toDate':
        return 'Data de Fim';
      case 'common.online':
        return 'Online';
      case 'common.bankList':
        return 'Lista de Bancos';
      case 'common.withdrawMethod':
        return 'Método de Levantamento';
      case 'common.uploadPaymentReceipt':
        return 'Carregar Recibo de Pagamento';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Nota: '),
            note(
              'O pagamento requer aprovação manual pelo administrador dentro de',
            ),
            const TextSpan(text: ' '),
            duraion('24~48 horas.'),
          ],
        );
      case 'common.reviews':
        return 'Avaliações';
      case 'common.description':
        return 'Descrição';
      case 'common.about':
        return 'Sobre';
      case 'common.propertyTypes':
        return 'Tipos de Propriedade';
      case 'common.features':
        return 'Características';
      case 'common.floorPlans':
        return 'Plantas';
      case 'common.buildingDetails':
        return 'Detalhes do Edifício';
      case 'common.buildingName':
        return 'Nome do Edifício';
      case 'common.propertyAddress':
        return 'Morada da Propriedade';
      case 'common.completionYear':
        return 'Ano de Conclusão';
      case 'common.lotNumber':
        return 'Número do Lote';
      case 'common.residentialType':
        return 'Tipo Residencial';
      case 'common.furnishings':
        return 'Mobilização';
      case 'common.floorRange':
        return 'Andar';
      case 'common.bedrooms':
        return 'Quartos';
      case 'common.bathrooms':
        return 'Casas de Banho';
      case 'common.propertySize':
        return 'Tamanho da Propriedade';
      case 'common.rentalPeriod':
        return 'Período de Aluguer';
      case 'common.securityDeposit':
        return 'Caução';
      case 'common.utilityBill':
        return 'Conta de Serviços';
      case 'common.facilities':
        return 'Instalações';
      case 'common.amenities':
        return 'Comodidades';
      case 'common.expiringReason':
        return 'Motivo de Expiração';
      case 'common.tenantDetails':
        return 'Detalhes do Inquilino';
      case 'common.typeOfTenant':
        return 'Tipo de Inquilino';
      case 'common.tenantName':
        return 'Nome do Inquilino';
      case 'common.nidPassport':
        return 'NID/Passaporte';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} ID';
      case 'common.tenantId':
        return 'ID do Inquilino';
      case 'common.dateOfBirth':
        return 'Data de Nascimento';
      case 'common.gender':
        return 'Género';
      case 'common.nominee':
        return 'Nomeado';
      case 'common.name':
        return 'Nome';
      case 'common.optional':
        return 'Opcional';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.name}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} Mo. No.';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return 'Contacto de Emergência';
      case 'common.relation':
        return 'Relação';
      case 'common.relationWith':
        return '${_root.common.relation} With';
      case 'common.relationWithYou':
        return '${_root.common.relationWith} You';
      case 'common.company':
        return 'Empresa';
      case 'common.companyName':
        return '${_root.common.company} ${_root.common.name}';
      case 'common.companySSMNo':
        return '${_root.common.company} SSM No.';
      case 'common.workplace':
        return 'Local de Trabalho';
      case 'common.officePhoneNo':
        return 'Número de Telefone do Escritório';
      case 'common.officeMobileNo':
        return 'Escritório ${_root.common.mobileNumber}';
      case 'common.vehicle':
        return 'Veículo';
      case 'common.vehiclesInfo.plain':
        return 'Informações sobre Veículos';
      case 'common.vehiclesInfo.optional':
        return 'Informações sobre Veículos (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} Type';
      case 'common.vehicleRegistrationNo.normal':
        return 'Número de Registo do Veículo';
      case 'common.vehicleRegistrationNo.short':
        return 'Número de Registo';
      case 'common.vehicleRegistrationNo.alt':
        return 'Número de Matrícula';
      case 'common.vehicleBrand':
        return '${_root.common.vehicle} Brand';
      case 'common.rentProperty':
        return 'Alugar Propriedade';
      case 'common.propertyDetails':
        return 'Detalhes da Propriedade';
      case 'common.propertyId':
        return 'ID da Propriedade';
      case 'common.propertyType':
        return 'Tipo de Propriedade';
      case 'common.propertyName':
        return 'Nome da Propriedade';
      case 'common.paymentDetails':
        return 'Detalhes de Pagamento';
      case 'common.monthlyRent':
        return 'Renda Mensal';
      case 'common.thisMonthPayment':
        return 'Pagamento Deste Mês';
      case 'common.totalPaidRent':
        return 'Renda Total Paga';
      case 'common.dueRent':
        return 'Renda em Atraso';
      case 'common.rentStartDate':
        return 'Renda ${_root.common.startDate}';
      case 'common.rentEndDate':
        return 'Renda ${_root.common.endDate}';
      case 'common.status':
        return 'Estado';
      case 'common.rentAgreementPdf':
        return 'PDF do Contrato de Aluguer';
      case 'common.noFile':
        return 'Sem Ficheiro';
      case 'common.tenantImageOp':
        return 'Imagem do Inquilino ${_root.common.optional}';
      case 'common.addNewVechicle':
        return 'Adicionar Novos Veículos';
      case 'common.uploadNidPassport':
        return 'Carregar NID/Passaporte';
      case 'common.nidPassportUploadNote':
        return 'Apenas imagens do tipo ficheiro serão aceites. Limite de ficheiro até 2,5 MB.';
      case 'common.search':
        return 'Pesquisar';
      case 'common.sortBy':
        return 'Ordenar Por';
      case 'common.subscription':
        return 'Subscrição';
      case 'common.downloading':
        return 'A Descarregar...';
      case 'common.downloadSuccess':
        return 'Ficheiro descarregado com sucesso!';
      case 'common.addPropertyBannerTitle':
        return 'Quer Alugar a Sua Propriedade?';
      case 'common.application':
        return 'Aplicação';
      case 'common.tenantHasPaidDeposit':
        return 'O inquilino pagou a caução.';
      case 'common.askProcessingRentApplication':
        return 'Tem a certeza que pretende processar este pedido para aluguer de propriedade?';
      case 'common.dateAndTime':
        return 'Data e Hora';
      case 'common.applicationDetails':
        return 'Detalhes da Aplicação';
      case 'common.depositStatus':
        return 'Estado da Caução';
      case 'common.uploadRentAgreement':
        return 'Carregar Contrato de Aluguer';
      case 'common.uploadFilePDF':
        return 'Carregar Ficheiro (PDF)';
      case 'common.askSelectRentAgreement':
        return 'Por favor, selecione um ficheiro de documento de contrato.';
      case 'common.landlordRentAgreementPDF':
        return 'PDF do Contrato de Aluguer do Senhorio';
      case 'common.tenantRentAgreementPDF':
        return 'PDF do Contrato de Aluguer do Inquilino';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Nota: '),
            note(
              'Apenas aprove o pedido depois do inquilino efetuar o pagamento da caução.',
            ),
          ],
        );
      case 'common.reasonOfRejection':
        return 'Motivo da Rejeição';
      case 'common.youveRejectedThisApplication':
        return 'Rejeitou este pedido';
      case 'common.landlordDetails':
        return 'Detalhes do Senhorio';
      case 'common.landlordName':
        return 'Nome do Senhorio';
      case 'common.downloadRentAgreement':
        return 'Descarregar Contrato de Aluguer';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            const TextSpan(text: 'Aceitar '),
            toc('Termos e Condições'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Nota: '),
            note(
              'Por favor, descarregue e leia o contrato. Por favor, envie o contrato assinado ao senhorio via WhatsApp ou email.',
            ),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Nota: '),
            note(
              'O senhorio aprova o pedido, quando o inquilino paga a caução, a conta de serviços e o pagamento da renda adiantada de um mês.',
            ),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: 'Contrato de Aluguer (PDF) '),
            complete('Contrato Completo'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Nota : '),
            note(
              'O senhorio aprova o pedido, quando o inquilino paga a caução, a conta de serviços e o pagamento da renda adiantada de um mês.',
            ),
          ],
        );
      case 'common.whatsapp':
        return 'Whatsapp';
      case 'common.applicationList':
        return 'Lista de Aplicações';
      case 'common.viewDetails':
        return 'Ver Detalhes';
      case 'common.searchHint':
        return '${_root.common.search}...';
      case 'common.home':
        return 'Início';
      case 'common.dashboard':
        return 'Painel de Controlo';
      case 'common.tenants':
        return 'Inquilinos';
      case 'common.maintenance':
        return 'Manutenção';
      case 'common.maintenanceList':
        return 'Lista de Manutenção';
      case 'common.maintenanceReport':
        return 'Relatório de Manutenção';
      case 'common.labor':
        return 'Mão de Obra';
      case 'common.applications':
        return 'Aplicações';
      case 'common.rentInvitation':
        return 'Convite de Aluguer';
      case 'common.payment':
        return 'Pagamento';
      case 'common.rentPayment':
        return 'Pagamento de Renda';
      case 'common.depositUtilityPayment':
        return 'Pagamento de Caução e Contas';
      case 'common.refundRequest':
        return 'Pedido de Reembolso';
      case 'common.withdrawRequest':
        return 'Pedido de Levantamento';
      case 'common.myProperty':
        return 'Minha Propriedade';
      case 'common.myRent':
        return 'Meu Aluguer';
      case 'common.wishlist':
        return 'Lista de Desejos';
      case 'common.properties':
        return 'Propriedades';
      case 'common.allProperties':
        return 'Todas as Propriedades';
      case 'common.totalPropery':
        return 'Total de Propriedades';
      case 'common.occupied':
        return 'Ocupado';
      case 'common.vacant':
        return 'Vazio';
      case 'common.accounting':
        return 'Contabilidade';
      case 'common.totalIncome':
        return 'Rendimento Total';
      case 'common.totalExpense':
        return 'Despesa Total';
      case 'common.currentBalance':
        return 'Saldo Atual';
      case 'common.totalWithdrawal':
        return 'Total (Levantamento)';
      case 'common.totalProperties':
        return 'Total de Propriedades';
      case 'common.totalTenant':
        return 'Total de Inquilinos';
      case 'common.totalRentPaid':
        return 'Total de Renda Paga';
      case 'common.totalRentDue':
        return 'Total de Renda em Atraso';
      case 'common.totalApplication':
        return 'Total de Candidaturas';
      case 'common.pendingApplication':
        return 'Candidatura Pendente';
      case 'common.processingApplication':
        return 'Candidatura em Processamento';
      case 'common.approveApplication':
        return 'Aprovar Candidatura';
      case 'common.rejectApplication':
        return 'Rejeitar Candidatura';
      case 'common.maintenanceCost':
        return 'Custo de Manutenção';
      case 'common.transactionSummary':
        return 'Resumo de Transações';
      case 'common.maintenanceRequest':
        return 'Pedido de Manutenção';
      case 'common.notifications':
        return 'Notificações';
      case 'common.myProperties':
        return 'Minhas Propriedades';
      case 'common.recommendationProperties':
        return 'Propriedades Recomendadas';
      case 'common.laborList':
        return 'Lista de Mão de Obra';
      case 'common.addLabor':
        return 'Adicionar Mão de Obra';
      case 'common.laborDetails':
        return 'Detalhes da Mão de Obra';
      case 'common.laborSalary':
        return 'Salário da Mão de Obra';
      case 'common.editLabor':
        return 'Editar Mão de Obra';
      case 'common.addNewLabor':
        return 'Adicionar Nova Mão de Obra';
      case 'common.enterAmount':
        return 'Introduza o Valor';
      case 'common.maintenanceDetails':
        return 'Detalhes da Manutenção';
      case 'common.laborName':
        return 'Nome da Mão de Obra';
      case 'common.comment':
        return 'Comentário';
      case 'common.image':
        return 'Imagem';
      case 'common.complete':
        return 'Concluir';
      case 'common.details':
        return 'Detalhes';
      case 'common.title':
        return 'Título';
      case 'common.date':
        return 'Data';
      case 'common.reason':
        return 'Motivo';
      case 'common.edit':
        return 'Editar';
      case 'common.property':
        return 'Propriedade';
      case 'common.completeYourProfile':
        return 'Complete o Seu Perfil';
      case 'common.profileImage':
        return 'Imagem de Perfil';
      case 'common.imagePickHint':
        return 'Apenas Imagem JPEG e PNG com tamanho máximo de 120x120 pixels.';
      case 'common.invoiceId':
        return 'ID da Fatura';
      case 'common.depositAmount':
        return 'Valor da Caução';
      case 'common.landlordPhone':
        return 'Telefone do Senhorio';
      case 'common.rentalAdvance':
        return 'Aluguer (Adiantamento)';
      case 'common.totalAmount':
        return 'Valor Total';
      case 'common.rentalAmount':
        return 'Valor do Aluguer';
      case 'common.adminCharge':
        return 'Taxa Administrativa';
      case 'common.editAccount':
        return 'Editar Conta';
      case 'common.addNewAccount':
        return 'Adicionar Nova Conta';
      case 'common.transactionId':
        return 'ID da Transação';
      case 'common.transactionType':
        return 'Tipo de Transação';
      case 'common.requestDate':
        return 'Data do Pedido';
      case 'common.amount':
        return 'Valor';
      case 'common.fee':
        return 'Taxa';
      case 'common.paymentStatus':
        return 'Estado do Pagamento';
      case 'common.generatedTime':
        return 'Hora de Geração';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(text: 'Este é um relatório gerado pelo sistema de '),
            appName,
          ],
        );
      case 'common.withdrawHistory':
        return 'Histórico de Levantamentos';
      case 'common.history':
        return 'Histórico';
      case 'common.withdrawAmount':
        return 'Valor do Levantamento';
      case 'common.availableBalance':
        return 'Saldo Disponível';
      case 'common.withdrawCharge':
        return 'Taxa de Levantamento';
      case 'common.paymentMethod':
        return 'Método de Pagamento';
      case 'common.requestSendSuccess':
        return 'Pedido enviado com sucesso!';
      case 'common.paymentReceiptSubmitSuccess':
        return 'Recibo de pagamento submetido com sucesso.';
      case 'common.refundReason':
        return 'Motivo do Reembolso';
      case 'common.note':
        return 'Nota';
      case 'common.refundReceiveSuccess':
        return 'Reembolso recebido com sucesso.';
      case 'common.downloadPaymentReceipt':
        return 'Descarregar Recibo de Pagamento';
      case 'common.invoice':
        return 'Fatura';
      case 'common.selectPropertyToSeeInvoice':
        return 'Selecione a propriedade para ver o número da fatura...';
      case 'common.bankAccName':
        return 'Nome da Conta Bancária';
      case 'common.bankName':
        return 'Nome do Banco';
      case 'common.bankAccNum':
        return 'Número da Conta Bancária';
      case 'common.thankYou':
        return 'Obrigado!';
      case 'common.basicInfo':
        return 'Informação Básica';
      case 'common.descriptionPricing':
        return 'Descrição e Preços';
      case 'common.contact':
        return 'Contacto';
      case 'common.photos':
        return 'Fotos';
      case 'common.successfullySubmitted':
        return 'Submetido com sucesso!';
      case 'common.editProperty':
        return 'Editar Propriedade';
      case 'common.addNewProperty':
        return 'Adicionar Nova Propriedade';
      case 'common.propertyManageRequestSuccess':
        return 'O seu anúncio foi submetido para revisão.';
      case 'common.postAnotherProperty':
        return 'Publicar Outra Propriedade';
      case 'common.browseYourProperty':
        return 'Navegar na Sua Propriedade';
      case 'common.stepIndicator':
        return ({required InlineSpan step, required InlineSpan totalSteps}) =>
            TextSpan(
              children: [
                const TextSpan(text: 'Passo '),
                step,
                const TextSpan(text: ' de '),
                totalSteps,
              ],
            );
      case 'common.whatWouldYouLikeToPost':
        return 'O que Gostaria de Publicar?';
      case 'common.category':
        return 'Categoria';
      case 'common.invalidCategory':
        return 'Categoria Inválida';
      case 'common.unitNumber':
        return 'Número da Unidade';
      case 'common.sqft':
        return 'm²';
      case 'common.propertySizeMustBeGreaterThan0':
        return 'O tamanho da propriedade deve ser superior a zero';
      case 'common.whatAreTheFacility':
        return 'Quais são as instalações?';
      case 'common.whatAreTheAmenity':
        return 'Quais são as comodidades?';
      case 'common.parkingLot':
        return 'Parque de Estacionamento';
      case 'common.houseType':
        return 'Tipo de Casa';
      case 'common.value':
        return 'Valor';
      case 'common.unitLotSize':
        return 'Tamanho da Unidade / Lote';
      case 'common.landSize':
        return 'Tamanho do Terreno';
      case 'common.acres':
        return 'acre(s)';
      case 'common.roomSize':
        return 'Tamanho do Quarto';
      case 'common.askTenantPreference':
        return 'Qual é a sua preferência de inquilino?';
      case 'common.couple':
        return 'Casal';
      case 'common.describeTheProperty':
        return ({required String propertyType}) =>
            'Descreva o(a) ${propertyType}';
      case 'common.adTitle':
        return 'Título do Anúncio';
      case 'common.minimumRentalPeriod':
        return 'Período Mínimo de Aluguer';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} Number';
      case 'common.hideOrDisplayEmail':
        return 'Ocultar ou exibir endereço de email';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) =>
            'Obrigado por publicar em ${appName}!';
      case 'common.propertyList':
        return 'Lista de Propriedades';
      case 'common.newInviteRent':
        return 'Novo Convite de Aluguer';
      case 'common.rentAgreement':
        return 'Contrato de Aluguer';
      case 'common.rentDetails':
        return 'Detalhes do Aluguer';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Nota: '),
            note('Aguarde que o inquilino aceite o convite.'),
          ],
        );
      case 'common.rent':
        return 'Aluguer';
      case 'common.editTenant':
        return 'Editar Inquilino';
      case 'common.addNewTenant':
        return 'Adicionar Novo Inquilino';
      case 'common.shareInstallLink':
        return 'Partilhar link de instalação';
      case 'common.tenantList':
        return 'Lista de Inquilinos';
      case 'common.editMaintenanceRequest':
        return 'Editar Pedido de Manutenção';
      case 'common.addNewMaintenance':
        return 'Adicionar Nova Manutenção';
      case 'common.landlordId':
        return 'ID do Senhorio';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Nota '),
            note(
              'O seu contrato está em revisão. Aguarde que o senhorio aprove o seu aluguer.',
            ),
          ],
        );
      case 'common.editReview':
        return 'Editar Avaliação';
      case 'common.writeAReview':
        return 'Escrever uma avaliação';
      case 'common.selectRating':
        return 'Selecionar Avaliação';
      case 'common.enterYourOpinion':
        return 'Introduza a Sua Opinião';
      case 'common.askToEnterReviewMsg':
        return 'Por favor, introduza uma mensagem de avaliação';
      case 'common.pressBackAgainToExit':
        return 'Pressione novamente para sair.';
      case 'common.selectPaymentMethod':
        return 'Selecionar Método de Pagamento';
      case 'common.filter':
        return 'Filtrar';
      case 'common.perMonth':
        return '/1 Mês';
      case 'common.searchHintWithAppName':
        return ({required String appName}) =>
            'Pesquise qualquer coisa em ${appName}...';
      case 'exceptions.somethingWentWrong':
        return 'Algo correu mal, por favor, tente novamente';
      case 'exceptions.noNidPassport':
        return 'Nenhuma imagem NID/Passaporte fornecida.';
      case 'exceptions.noRentPropertyFound':
        return 'Nenhuma propriedade de aluguer encontrada para este inquilino.';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return 'Nenhuma propriedade encontrada!\nPor favor, tente com palavras-chave diferentes';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return 'Nenhum plano de subscrição encontrado!\nPor favor, atualize a página e tente novamente.';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) =>
            'Informação ${dataType} inválida! Por favor, atualize a página e tente novamente.';
      case 'exceptions.invalidDownloadUrl':
        return 'URL de download inválido!';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) =>
            'Falha ao guardar o ficheiro! ${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) =>
            'Erro ao abrir o ficheiro! ${error}';
      case 'exceptions.noVehicleInfoProvided':
        return 'Nenhuma informação sobre o veículo fornecida.';
      case 'exceptions.yourApplicationRejected':
        return 'A sua candidatura foi rejeitada';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            'Nenhuma candidatura encontrada!\n${subject} será exibido aqui quando disponível.';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return 'A sua candidatura';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return 'Candidatura do inquilino';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return 'Nenhuma propriedade encontrada!\nPor favor, tente adicionar uma propriedade para ver aqui.';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return 'Nenhuma Propriedade Recomendada encontrada\nPor favor, tente novamente mais tarde.';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return 'Propriedades não disponíveis\nPor favor, tente novamente mais tarde.';
      case 'exceptions.noImageProvided':
        return 'Nenhuma Imagem Fornecida';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) =>
            'Nenhuma manutenção ${status} encontrada.';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return 'Nenhuma manutenção encontrada! Pode criar um pedido de manutenção para o ver aqui.';
      case 'exceptions.noDepositFound':
        return 'Nenhuma caução encontrada!\nPor favor, pode ver as cauções quando disponíveis';
      case 'exceptions.noRentPaymentFound':
        return 'Nenhum pagamento de renda encontrado!\nPor favor, pode ver os pagamentos de renda quando disponíveis';
      case 'exceptions.transactionSummaryApiException':
        return 'Falha ao obter o resumo da transação.';
      case 'exceptions.noWithdrawRequestFound':
        return 'Nenhum pedido encontrado!\nPor favor, tente criar um pedido de levantamento para ver aqui.';
      case 'exceptions.withdrawRequestNotApproved':
        return 'Este pedido de levantamento não foi aprovado!.';
      case 'exceptions.nonZeroError':
        return 'Por favor, introduza um valor válido superior a zero.';
      case 'exceptions.minAmountError':
        return ({required String minValue}) =>
            'O valor deve ser de pelo menos ${minValue}.';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) =>
            'O valor não deve exceder ${maxValue}.';
      case 'exceptions.selectPaymentMethodHint':
        return 'Por favor, selecione primeiro um método de pagamento.';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            'Nenhum pedido de reembolso ${status} encontrado!\nPode ver o pedido de reembolso aqui quando disponível.';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return 'Nenhum pedido de reembolso encontrado!\nPode criar um pedido de reembolso para o ver aqui.';
      case 'exceptions.refundRequestHint.inTenantList':
        return 'O inquilino aprovará o reembolso quando receber o dinheiro de volta';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return 'Analisaremos o pedido de Reembolso e aprová-lo-emos dentro de 24 horas.';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) =>
            'Por favor, selecione o número de ${value}';
      case 'exceptions.invalidDateRange':
        return 'Intervalo de datas inválido.';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) =>
            '${value} deve ser superior a zero.';
      case 'exceptions.editProperty.rentalChange':
        return 'A propriedade de aluguer está a mudar. Deve ser válida (eficaz) apenas para o pagamento da renda do próximo mês.';
      case 'exceptions.editProperty.deleteOnRent':
        return 'A sua propriedade já está alugada pelo inquilino. Não pode eliminá-la até remover o inquilino primeiro';
      case 'exceptions.editProperty.alreayRented':
        return 'Esta propriedade já está alugada. Por favor, tente novamente mais tarde.\nOu pode contactar o senhorio para obter mais informações.';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return 'Nenhum convite de aluguer encontrado!\nPor favor, tente criar um convite de aluguer para ver aqui.';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return 'Nenhum convite de aluguer encontrado!\nPode ver o convite de aluguer aqui quando disponível.';
      case 'exceptions.notenantFoundList':
        return 'Nenhum inquilino!\nPor favor, tente adicionar um inquilino para ver aqui.';
      case 'exceptions.noFeaturesProvided':
        return 'Nenhuma funcionalidade fornecida.';
      case 'exceptions.noNotificationFound':
        return 'Nenhuma notificação disponível.\nPode ver a sua notificação aqui quando disponível.';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return 'Tem a certeza que pretende sair?';
      case 'prompt.application.rejectTitle':
        return 'Por que está a rejeitar esta candidatura?';
      case 'prompt.application.applicationSent.successfully':
        return 'Candidatura enviada com sucesso!';
      case 'prompt.application.applicationSent.sucessDescription':
        return 'Pode ver esta candidatura na sua lista de candidaturas';
      case 'prompt.labor.delete.title':
        return 'Eliminar Mão de Obra?';
      case 'prompt.labor.delete.description':
        return 'Tem a certeza que pretende eliminar esta mão de obra?';
      case 'prompt.maintenanceRequest.rejectTitle':
        return 'Por que este pedido está a ser rejeitado?';
      case 'prompt.maintenanceRequest.processTitle':
        return 'Tem a certeza que pretende processar este pedido de Manutenção?';
      case 'prompt.maintenanceRequest.completeTitle':
        return 'Trabalho concluído?';
      case 'prompt.withdrawMethod.deleteTitle':
        return 'Eliminar Método de Levantamento?';
      case 'prompt.withdrawMethod.deleteDescription':
        return 'Tem a certeza que pretende eliminar este método de levantamento?';
      case 'prompt.unsavedChanges.title':
        return 'Tem a certeza que pretende voltar atrás?';
      case 'prompt.unsavedChanges.message':
        return 'Os campos que foram alterados não serão guardados!';
      case 'prompt.property.delete.title':
        return 'Eliminar Propriedade?';
      case 'prompt.property.delete.message':
        return 'Tem a certeza que pretende eliminar esta propriedade?';
      case 'prompt.rentInvitation.landlordApprove.title':
        return 'Tem a certeza que pretende aprovar este aluguer?';
      case 'prompt.rentInvitation.landlordApprove.description':
        return 'Certifique-se de que revisou o contrato assinado pelo inquilino.';
      case 'prompt.rentInvitation.tenantAccept.title':
        return 'Tem a certeza que pretende aceitar este convite?';
      case 'prompt.rentInvitation.tenantAccept.description':
        return 'Certifique-se de que descarregou o ficheiro pdf do contrato!';
      case 'prompt.sessionExpired.title':
        return 'Sessão expirada';
      case 'prompt.sessionExpired.message':
        return 'A sua sessão expirou. Por favor, inicie sessão novamente';
      case 'prompt.sessionExpired.action':
        return 'Iniciar Sessão';
      case 'prompt.noInternet.title':
        return 'Sem Ligação à Internet';
      case 'prompt.noInternet.message':
        return 'Por favor, verifique a sua ligação de rede móvel Wi-Fi e tente novamente';
      case 'prompt.noInternet.action':
        return 'Tentar Novamente';
      case 'prompt.permissionHandler.title':
        return 'Permissão necessária!';
      case 'prompt.permissionHandler.message':
        return 'Precisa conceder permissões nas configurações da aplicação. Gostaria de abrir as configurações agora?';
      case 'prompt.imagePicker.title':
        return 'Selecionar Opção';
      case 'prompt.imagePicker.gallery':
        return 'Galeria';
      case 'prompt.imagePicker.camera':
        return 'Câmera';
      case 'prompt.verificationDialog.title':
        return 'Verifique o Seu Email';
      case 'prompt.verificationDialog.message':
        return 'Enviámos um email com um código de verificação';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message} para ${email}';
      case 'prompt.notification.clearTitle':
        return 'Limpar notificações?';
      case 'prompt.notification.clearMessage':
        return 'Tem a certeza que pretende limpar todas as notificações?';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return 'Introduza ${_root.common.fullName}';
      case 'form.fullName.errors.required':
        return 'Por favor, introduza o seu ${_root.common.fullName}';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return 'Introduza o seu ${_root.common.email}';
      case 'form.email.errors.required':
        return 'Por favor, introduza o seu endereço de ${_root.common.email}';
      case 'form.email.errors.invalid':
        return '⦸ Email Inválido, Por Favor, Tente Novamente';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return 'Por favor, introduza a sua ${_root.common.password}';
      case 'form.password.errors.minLength':
        return ({required Object count}) =>
            'A password deve ter pelo menos ${count} caracteres!';
      case 'form.confirmPassword.label':
        return 'Confirmar ${_root.common.password}';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return 'Por favor, introduza a sua ${_root.common.password}';
      case 'form.confirmPassword.errors.notMatched':
        return 'As passwords não correspondem!';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return 'Por favor, introduza o seu ${_root.common.mobileNumber}';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return 'Número da casa e nome da rua';
      case 'form.address1.errors.required':
        return 'Por favor, introduza o seu ${_root.form.address1.label}';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return 'Apartamento, suíte, unidade, etc.';
      case 'form.address2.errors.required':
        return 'Por favor, introduza o seu ${_root.form.address2.label}';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return 'Introduza ${_root.common.postalCode}';
      case 'form.postalCode.errors.required':
        return 'Por favor, introduza o seu ${_root.common.postalCode}';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return 'Introduza o nome da ${_root.common.city}.';
      case 'form.city.errors.required':
        return 'Por favor, introduza o nome da sua ${_root.common.city}.';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return 'Introduza o nome do ${_root.common.state}.';
      case 'form.state.errors.required':
        return 'Por favor, introduza o nome do seu ${_root.common.state}.';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return 'Selecione ${_root.common.country}.';
      case 'form.country.errors.required':
        return 'Por favor, selecione o seu ${_root.common.country}';
      case 'form.otp.errors.required':
        return 'Por favor, introduza o otp.';
      case 'form.otp.errors.invalid':
        return 'Por favor, introduza o otp correto.';
      case 'form.title.label':
        return 'Título';
      case 'form.title.hint':
        return 'Introduza o título';
      case 'form.title.errors.required':
        return 'Por favor, introduza o título';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            'Selecione ${_root.form.date.label(label: label)}';
      case 'form.date.errors.required':
        return ({required String label}) =>
            'Por favor, selecione ${_root.form.date.label(label: label)}';
      case 'form.reason.label':
        return 'Motivo';
      case 'form.reason.hint':
        return 'Introduza o motivo';
      case 'form.reason.errors.required':
        return 'Por favor, introduza o motivo';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return 'Selecione ${_root.common.withdrawMethod}';
      case 'form.withdrawMethod.errors.required':
        return 'Por favor, selecione ${_root.common.withdrawMethod}';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => 'Carregar ${label}';
      case 'form.fileField.errors.required':
        return ({required String label}) => 'Por favor, selecione ${label}';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            'Introduza ${_root.form.note.label(note: note)}';
      case 'form.note.errors.required':
        return ({required String note}) =>
            'Por favor, introduza ${_root.form.note.label(note: note)}';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return 'Selecione ${_root.common.gender}';
      case 'form.gender.errors.required':
        return 'Por favor, selecione ${_root.common.gender}';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            'Introduza ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            'Por favor, introduza ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.invalid':
        return 'Por favor, introduza um @form.anyField.label válido';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            'Selecione ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            'Por favor, selecione ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.invalid':
        return 'Por favor, selecione um @form.anyDropdown.label válido';
      case 'action.next':
        return 'Próximo';
      case 'action.getStarted':
        return 'Começar';
      case 'action.skip':
        return 'Saltar';
      case 'action.select':
        return 'Selecionar';
      case 'action.save':
        return 'Guardar';
      case 'action.signIn':
        return 'Iniciar Sessão';
      case 'action.signUp':
        return 'Registar';
      case 'action.kContinue':
        return 'Continuar';
      case 'action.clearAll':
        return 'Limpar Tudo';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return 'Enviar';
      case 'action.pay':
        return 'Pagar';
      case 'action.remove':
        return 'Remover';
      case 'action.goBack':
        return 'Voltar';
      case 'action.buyNow':
        return 'Comprar Agora';
      case 'action.no':
        return 'Não';
      case 'action.open':
        return 'Abrir';
      case 'action.addProperty':
        return 'Adicionar Propriedade';
      case 'action.process':
        return 'Processar';
      case 'action.approve':
        return 'Aprovar';
      case 'action.reject':
        return 'Rejeitar';
      case 'action.viewRent':
        return 'Ver Aluguer';
      case 'action.openNavigationMenu':
        return 'Abrir menu de navegação';
      case 'action.seeAll':
        return 'Ver Tudo';
      case 'action.update':
        return 'Atualizar';
      case 'action.printTransaction':
        return 'Imprimir Transação';
      case 'action.payoutRequest':
        return 'Pedido de Pagamento';
      case 'action.addNew':
        return '+ Adicionar Novo';
      case 'action.sendRequest':
        return 'Enviar Pedido';
      case 'action.print':
        return 'Imprimir';
      case 'action.requestForRefund':
        return 'Pedido de Reembolso';
      case 'action.previous':
        return 'Anterior';
      case 'action.delete':
        return 'Eliminar';
      case 'action.applyProperty':
        return 'Candidatar-se à Propriedade';
      case 'action.viewApplication':
        return 'Ver Candidatura';
      case 'action.inviteTenant':
        return 'Convidar Inquilino';
      case 'action.inviteRent':
        return 'Convidar para Aluguer';
      case 'action.cancel':
        return 'Cancelar';
      case 'action.accept':
        return 'Aceitar';
      case 'action.submit':
        return 'Submeter';
      case 'action.yes':
        return 'Sim';
      case 'action.okay':
        return 'OK';
      case 'action.confirm':
        return 'Confirmar';
      case 'action.apply':
        return 'Aplicar';
      case 'action.reset':
        return 'Redefinir';
      case 'action.retry':
        return 'Tentar Novamente';
      case 'action.viewAll':
        return 'Ver Tudo';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return 'Encontre a Sua Propriedade';
      case 'pages.onboard.onboardData.data1.description':
        return 'Facilitámos a procura de um lugar que se adapte à sua vida - seja um quarto, um apartamento ou uma casa.';
      case 'pages.onboard.onboardData.data2.title':
        return 'Apartamento na Cidade';
      case 'pages.onboard.onboardData.data2.description':
        return 'Poupamos-lhe tempo ao combinar rapidamente com a propriedade perfeita antes que ela desapareça, para que possa desfrutar da sua nova casa ou listar a sua gratuitamente.';
      case 'pages.onboard.onboardData.data3.title':
        return 'A Sua Casa Confortável';
      case 'pages.onboard.onboardData.data3.description':
        return 'Se está à procura de um lugar para morar, dê uma olhada nas nossas casas para alugar. Temos uma vasta gama de casas para si escolher em todo o país.';
      case 'pages.signIn.title':
        return 'Bem-vindo de Volta';
      case 'pages.signIn.subtitle':
        return 'Inicie sessão agora para começar uma jornada incrível.';
      case 'pages.signIn.extra.rememberMe':
        return 'Lembrar-me';
      case 'pages.signIn.extra.signUpNavigator':
        return ({required InlineSpanBuilder getStarted}) => TextSpan(
          children: [
            const TextSpan(text: 'Não tem uma conta? '),
            getStarted(_root.action.getStarted),
          ],
        );
      case 'pages.signIn.extra.forgotPassword':
        return '${_root.common.forgotPassword}?';
      case 'pages.forgotPassword.title':
        return 'Esqueceu-se da password';
      case 'pages.forgotPassword.subtitle':
        return 'Introduza o seu endereço de email para recuperar a sua password.';
      case 'pages.otpVerification.title':
        return 'Verificação';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) =>
            'Um código de 4 dígitos foi enviado para o seu endereço de email. ${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            'Código enviado em ${minutes}:${seconds}';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) => TextSpan(
          children: [
            const TextSpan(text: ' '),
            resendCode('Reenviar código'),
            const TextSpan(text: ' '),
          ],
        );
      case 'pages.resetPassword.title':
        return 'Redefinir password';
      case 'pages.resetPassword.subtitle':
        return 'Redefina a sua password para recuperar e iniciar sessão na sua conta';
      case 'pages.resetPassword.extra.dialog.title':
        return 'Alterado com sucesso!';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return 'Inicie sessão com a sua nova password.\nA redirecioná-lo para Iniciar Sessão...';
      case 'pages.signUp.title':
        return 'Criar Uma Conta';
      case 'pages.signUp.subtitle':
        return 'Registe-se agora para começar uma jornada incrível';
      case 'pages.signUp.extra.signInNavigator':
        return ({required InlineSpanBuilder signIn}) => TextSpan(
          children: [
            const TextSpan(text: 'Já tem uma conta? '),
            signIn(_root.action.signIn),
          ],
        );
      case 'pages.welcome.title':
        return 'Quem é você?';
      case 'pages.welcome.subtitle':
        return 'Por favor, selecione a opção abaixo.';
      case 'pages.welcome.extra.landlordTag':
        return 'Gerir as suas próprias propriedades';
      case 'pages.welcome.extra.tenantTag':
        return 'Iniciar sessão na sua conta de aluguer';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return 'Notificações';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return 'Mensagem...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return 'Por que está a ${_root.common.cancelRenting}?';
      case 'pages.cancelRenting.form.reason.hint':
        return 'Escrever motivo';
      case 'pages.cancelRenting.form.reason.errors.required':
        return 'Por favor, introduza o motivo para o cancelamento do aluguer';
      case 'pages.invoiceDetails.appbarTitle':
        return _root.common.viewDetails;
      case 'pages.offlinePayment.appbarTitle':
        return 'Pagamento Offline';
      case 'pages.offlinePayment.form.paymentNote.label':
        return 'Nota de Pagamento (${_root.common.optional})';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return 'Introduza algum texto...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Valor a Pagar: '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return 'Nome do Titular da Conta';
      case 'pages.offlinePayment.extra.accountNumber':
        return 'Número da Conta';
      case 'pages.offlinePayment.extra.swiftCode':
        return 'Código Swift';
      case 'pages.offlinePayment.extra.branch':
        return 'Agência';
      case 'pages.offlinePayment.extra.fileTypeHint':
        return ({
          required InlineSpanBuilder fileType,
          required InlineSpanBuilder fileSize,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Escolha ficheiros de formato '),
            fileType('JPG, PNG,PDF'),
            const TextSpan(text: ' Ou '),
            fileType('DOC'),
            const TextSpan(text: ' apenas. Tamanho do ficheiro '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return 'Ver Fatura';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return 'Analisaremos o pagamento e aprová-lo-emos dentro de 24 horas.';
      case 'pages.paymentStatus.fail.actionButton':
        return 'Tentar Novamente';
      case 'pages.paymentStatus.fail.title':
        return 'Oops! Pagamento Falhou';
      case 'pages.paymentStatus.fail.description':
        return 'A sua transação falhou devido a algum erro técnico.';
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
            const TextSpan(text: 'Funcionalidades '),
            fa('(Instalações e Comodidades)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return 'Selecionar Período de Aluguer';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ Escrever uma avaliação';
      case 'pages.search.appbarTitle':
        return 'Pesquisar';
      case 'pages.search.extra.hint':
        return 'Pesquisar por terrenos, apartamentos, quartos...';
      case 'pages.search.extra.noRecentSearch':
        return 'Não tem pesquisas recentes.';
      case 'pages.subscriptionPlan.appbarTitle':
        return 'Escolha o Seu Plano';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return 'Pagamento da subscrição com sucesso.\nAgora pode aceder às funcionalidades subscritas.';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Custo Total de Manutenção: '),
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
        return 'Todas as Propriedades';
      case 'enums.propertyStatus.pending':
        return 'Pendente';
      case 'enums.propertyStatus.active':
        return 'Ativo';
      case 'enums.propertyStatus.inactive':
        return 'Inativo';
      case 'enums.propertyStatus.rejected':
        return 'Rejeitado';
      case 'enums.propertyType.apartmentCondominium':
        return 'Apartamento/Condomínio';
      case 'enums.propertyType.house':
        return 'Casa';
      case 'enums.propertyType.commercialProperty':
        return 'Propriedade Comercial';
      case 'enums.propertyType.land':
        return 'Terreno';
      case 'enums.propertyType.room':
        return 'Quarto';
      case 'enums.applicationStatus.all':
        return 'Todos';
      case 'enums.applicationStatus.pending':
        return 'Pendente';
      case 'enums.applicationStatus.processing':
        return 'Em Processamento';
      case 'enums.applicationStatus.approved':
        return 'Aprovado';
      case 'enums.applicationStatus.rejected':
        return 'Rejeitado';
      case 'enums.myRentStatus.pending':
        return 'Pendente';
      case 'enums.myRentStatus.processing':
        return 'Em Processamento';
      case 'enums.myRentStatus.active':
        return 'Ativo';
      case 'enums.myRentStatus.expired':
        return 'Expirado';
      case 'enums.myRentStatus.cancelled':
        return 'Cancelado';
      case 'enums.maintenanceStatus.pending':
        return 'Pendente';
      case 'enums.maintenanceStatus.processing':
        return 'Em Processamento';
      case 'enums.maintenanceStatus.rejected':
        return 'Rejeitado';
      case 'enums.maintenanceStatus.completed':
        return 'Concluído';
      case 'enums.tenantProfileType.privateIndividual':
        return 'Privado (Individual)';
      case 'enums.tenantProfileType.company':
        return 'Empresa';
      case 'enums.tenantType.newTenant':
        return 'Novo Inquilino';
      case 'enums.tenantType.activeTenant':
        return 'Inquilino Ativo';
      case 'enums.tenantType.expiredTenant':
        return 'Inquilino Expirado';
      case 'enums.paymentStatus.all':
        return 'Todos';
      case 'enums.paymentStatus.pending':
        return 'Pendente';
      case 'enums.paymentStatus.paid':
        return 'Pago';
      case 'enums.paymentStatus.unpaid':
        return 'Não Pago';
      case 'enums.paymentStatus.rejected':
        return 'Rejeitado';
      case 'enums.paymentStatus.refund':
        return 'Reembolso';
      case 'enums.paymentOptions.onlinePayment':
        return 'Pagamento Online';
      case 'enums.paymentOptions.offlinePayment':
        return 'Pagamento Offline';
      case 'enums.paymentType.securityDeposit':
        return 'Caução';
      case 'enums.paymentType.rentPayment':
        return 'Pagamento de Renda';
      case 'enums.paymentType.subscription':
        return 'Subscrição';
      case 'enums.gender.male':
        return 'Masculino';
      case 'enums.gender.female':
        return 'Feminino';
      case 'enums.gender.other':
        return 'Outro';
      case 'enums.ecRelation.wife':
        return 'Esposa';
      case 'enums.ecRelation.parent':
        return 'Pai/Mãe';
      case 'enums.ecRelation.friend':
        return 'Amigo(a)';
      case 'enums.ecRelation.brother':
        return 'Irmão';
      case 'enums.ecRelation.sister':
        return 'Irmã';
      case 'enums.ecRelation.child':
        return 'Filho(a)';
      case 'enums.vehicleType.car':
        return 'Carro';
      case 'enums.vehicleType.motorcycles':
        return 'Motos';
      case 'enums.vehicleType.lorry':
        return 'Camião';
      case 'enums.sortBy.lowToHigh':
        return 'Do Mais Baixo ao Mais Alto';
      case 'enums.sortBy.highToLow':
        return 'Do Mais Alto ao Mais Baixo';
      case 'enums.residentialType.flat':
        return 'Apartamento';
      case 'enums.residentialType.apartment':
        return 'Apartamento';
      case 'enums.residentialType.condominium':
        return 'Condomínio';
      case 'enums.residentialType.serviceResidence':
        return 'Residência de Serviço';
      case 'enums.residentialType.studio':
        return 'Estúdio';
      case 'enums.residentialType.duplex':
        return 'Duplex';
      case 'enums.residentialType.townhouseCondo':
        return 'Condomínio Geminado';
      case 'enums.residentialType.others':
        return 'Outros';
      case 'enums.floorRange.high':
        return 'Alto';
      case 'enums.floorRange.medium':
        return 'Médio';
      case 'enums.floorRange.low':
        return 'Baixo';
      case 'enums.furnishings.fullyFurnished':
        return 'Totalmente Mobilado';
      case 'enums.furnishings.partiallyFurnished':
        return 'Parcialmente Mobilado';
      case 'enums.furnishings.notFurnished':
        return 'Não Mobilado';
      case 'enums.commercialPropertyType.officeSpace':
        return 'Espaço de escritório';
      case 'enums.commercialPropertyType.retailSpace':
        return 'Espaço de retalho';
      case 'enums.commercialPropertyType.shopLot':
        return 'Lote de loja';
      case 'enums.commercialPropertyType.warehouseFactory':
        return 'Armazém / Fábrica';
      case 'enums.commercialPropertyType.hotelResort':
        return 'Hotel / Resort';
      case 'enums.commercialPropertyType.sofo':
        return 'Sofo';
      case 'enums.commercialPropertyType.soho':
        return 'Soho';
      case 'enums.commercialPropertyType.sovo':
        return 'Sovo';
      case 'enums.commercialPropertyType.others':
        return 'Outros';
      case 'enums.landPropertyType.residential':
        return 'Residencial';
      case 'enums.landPropertyType.industrial':
        return 'Industrial';
      case 'enums.landPropertyType.agricultural':
        return 'Agrícola';
      case 'enums.landPropertyType.commercial':
        return 'Comercial';
      case 'enums.landPropertyType.mixedDevelopment':
        return 'Desenvolvimento Misto';
      case 'enums.landPropertyType.others':
        return 'Outros';
      case 'enums.residentPropertyType.condo':
        return 'Condomínio / Residência de serviços / Penthouse';
      case 'enums.residentPropertyType.apartment':
        return 'Apartamento';
      case 'enums.residentPropertyType.house':
        return 'Casas';
      case 'enums.residentPropertyType.shoplot':
        return 'Loja';
      case 'enums.residentPropertyType.sharing':
        return 'Partilha de casa / Apartamento';
      case 'enums.residentPropertyType.others':
        return 'Outros';
      case 'enums.minimumRentalPeriod.sixMonths':
        return '6 Meses';
      case 'enums.minimumRentalPeriod.oneYear':
        return '1 Ano';
      case 'enums.minimumRentalPeriod.oneAndHalfYears':
        return '1,5 Anos';
      case 'enums.minimumRentalPeriod.twoYears':
        return '2 Anos';
      case 'enums.minimumRentalPeriod.twoAndHalfYears':
        return '2,5 Anos';
      case 'enums.dropdownDateFilter.daily':
        return 'Diário';
      case 'enums.dropdownDateFilter.weekly':
        return 'Semanal';
      case 'enums.dropdownDateFilter.monthly':
        return 'Mensal';
      case 'enums.dropdownDateFilter.yearly':
        return 'Anual';
      case 'enums.dropdownDateFilter.custom':
        return 'Personalizado';
      default:
        return null;
    }
  }
}
