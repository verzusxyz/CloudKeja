part of 'contact_us_view.dart';

class ContactUsViewNotifier extends ChangeNotifier {
  ContactUsViewNotifier(this._repo);
  final CommonRepository _repo;
  //--------------------------Form Field Props--------------------------//
  late final messageController = TextEditingController();
  DynamicFileType? attachment;
  //--------------------------Form Field Props--------------------------//

  final isSending = ValueNotifier<bool>(false);
  Future<Either<String, ChatBubbleModel>> sendMessage([int? parrentId]) async {
    isSending.value = true;
    if (messageController.text.isEmpty && attachment == null) {
      isSending.value = false;
      return Either.failure('Content cannot be empty');
    }

    final _result = await _repo.sendMessage(
      parentId: parrentId,
      attachment: attachment?.local,
      message: messageController.text.isEmpty ? null : messageController.text,
    );

    if (_result.isSuccess) {
      messageController.clear();
      attachment = null;
    }
    isSending.value = false;
    return _result;
  }

  Future<Either<String, ChatBubbleModel>> handleSendingAttachment([
    int? parrentId,
  ]) async {
    final _pickResult = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      type: FileType.custom,
      allowedExtensions: [
        ...?FileFormFieldFileType.pdf.extensions,
        ...?FileFormFieldFileType.word.extensions,
        ...?FileFormFieldFileType.excel.extensions,
        ...?FileFormFieldFileType.powerpoint.extensions,
        ...?FileFormFieldFileType.image.extensions,
        ...?FileFormFieldFileType.video.extensions,
        ...?FileFormFieldFileType.audio.extensions,
        ...?FileFormFieldFileType.text.extensions,
        ...?FileFormFieldFileType.archive.extensions,
      ],
    );

    if (_pickResult != null &&
        _pickResult.isSinglePick &&
        _pickResult.files.isNotEmpty) {
      attachment = DynamicFileType(
        local: File(_pickResult.files.first.path!),
      );

      return sendMessage(parrentId);
    }

    return Either.failure('Request cancelled.');
  }
}

final contactUsViewProvider = ChangeNotifierProvider.autoDispose(
  (ref) => ContactUsViewNotifier(ref.read(commonRepoProvider)),
);
