import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:iconly/iconly.dart';
import 'package:path/path.dart' as p;
import 'package:proper_filesize/proper_filesize.dart';

import '../../../../core/core.dart';
import '../../../../widgets/widgets.dart';

class ChatMessageItem extends StatelessWidget {
  const ChatMessageItem({
    super.key,
    required this.chatData,
    this.previousMessage,
    this.onDownloadFile,
  });

  final ChatBubbleData chatData;
  final ChatBubbleData? previousMessage;
  final void Function(String? url)? onDownloadFile;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    final showTimeGroup = previousMessage == null ||
        previousMessage!.sender != chatData.sender ||
        previousMessage!.sentAt.difference(chatData.sentAt).inSeconds > 60;

    return UnconstrainedBox(
      alignment: chatData.sendByUser
          ? AlignmentDirectional.centerEnd
          : AlignmentDirectional.centerStart,
      child: IntrinsicWidth(
        child: ConstrainedBox(
          constraints: BoxConstraints.loose(
            Size.fromWidth(MediaQuery.sizeOf(context).width * 0.75),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!chatData.sendByUser) ...[
                SizedBox.square(
                  dimension: 44,
                  child: UserAvatarPicker(
                    showBorder: false,
                    placeholderImage: DAppImages.supportAvatar,
                  ),
                ),
                const SizedBox.square(dimension: 12),
              ],
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: chatData.sendByUser
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.end,
                  children: [
                    // Attachment Only
                    if (chatData.attachment != null) ...[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: _buildPreview(context),
                      ),
                      if (chatData.message != null) ...[
                        const SizedBox.square(dimension: 4),
                      ],
                    ],

                    if (chatData.message != null) ...[
                      ChatBubble(
                        elevation: 0.35,
                        alignment: chatData.sendByUser
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        clipper: ChatBubbleClipper5(
                          type: chatData.sendByUser
                              ? BubbleType.sendBubble
                              : BubbleType.receiverBubble,
                        ),
                        backGroundColor: chatData.sendByUser
                            ? _theme.colorScheme.primary
                            : const Color(0xffF7F7F7),
                        child: SelectableText(
                          chatData.message ?? '',
                          style: _theme.textTheme.bodyMedium?.copyWith(
                            color: chatData.sendByUser
                                ? _theme.colorScheme.onPrimary
                                : _theme.colorScheme.onPrimaryContainer,
                          ),
                        ),
                      ),
                    ],

                    // Timestamp
                    if (showTimeGroup) ...[
                      const SizedBox(height: 4),
                      Text(
                        chatData.sentAt.formatChatTimestamp(),
                        style: _theme.textTheme.bodySmall?.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPreview(BuildContext context) {
    final _fileType = chatData.attachment?.type;

    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        height: 140,
        width: MediaQuery.sizeOf(context).width * 0.65,
      ),
      child: _fileType?.isImage == true
          ? InkWell(
              onTap: () => showImagePreviewGallery(
                context,
                [chatData.attachment!.file!],
              ),
              child: _ImagePreview(image: chatData.attachment!.file!),
            )
          : _FilePreview(
              attachment: chatData.attachment!,
              onDownloadFile: onDownloadFile,
            ),
    );
  }
}

class _FilePreview extends StatelessWidget {
  const _FilePreview({
    // ignore: unused_element_parameter
    super.key,
    required this.attachment,
    this.onDownloadFile,
  });
  final ChatBubbleAttachment attachment;
  final void Function(String? url)? onDownloadFile;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Container(
      clipBehavior: Clip.antiAlias,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: _theme.colorScheme.secondary.withValues(
          alpha: 0.15,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 10,
        children: [
          Expanded(
            child: Container(
              constraints: BoxConstraints.expand(height: 72),
              alignment: AlignmentDirectional.center,
              decoration: BoxDecoration(
                color: _theme.colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(8),
              ),
              child: IconButton.filledTonal(
                onPressed: () => onDownloadFile?.call(
                  attachment.file?.remote,
                ),
                icon: Icon(FeatherIcons.download),
                iconSize: 20,
              ),
            ),
          ),
          Row(
            children: [
              Icon(
                IconlyLight.document,
                color: _theme.colorScheme.secondary,
              ),
              const SizedBox.square(dimension: 6),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      attachment.fileName ?? "N/A",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: _theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "${FileSize.fromBytes(attachment.size).toString(unit: Unit.auto(size: attachment.size, baseType: BaseType.metric), decimals: 2)} | ${attachment.type?.name ?? "N/A"}",
                      style: _theme.textTheme.bodySmall?.copyWith(
                        color: _theme.colorScheme.secondary,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class _ImagePreview extends StatelessWidget {
  // ignore: unused_element_parameter
  const _ImagePreview({super.key, required this.image});
  final DynamicFileType image;

  @override
  Widget build(BuildContext context) {
    if (image.isLocal) {
      return Image.file(image.local!, fit: BoxFit.cover);
    }

    return CustomNetworkImage(
      url: image.remote,
      fit: BoxFit.cover,
    );
  }
}

class ChatBubbleData {
  final int id;
  final String? message;
  final ChatBubbleAttachment? attachment;
  final String sender;
  final DateTime sentAt;

  bool get sendByUser => sender.trim().toLowerCase() == 'user';
  ChatBubbleData({
    required this.id,
    this.message,
    this.attachment,
    required this.sender,
    DateTime? sentAt,
  }) : sentAt = sentAt ?? DateTime.now();
}

class ChatBubbleAttachment {
  final String? fileName;
  final DynamicFileType? file;
  final FileFormFieldFileType? type;
  final num size;

  ChatBubbleAttachment({
    String? fileName,
    this.file,
    String? ext,
    num? size,
  })  : type = ext != null
            ? FileFormFieldFileType.fromString(ext)
            : FileFormFieldFileType.fromFile(file?.local),
        size = (size ?? file?.local?.lengthSync() ?? 0),
        fileName = p.basename(file?.remote ?? file?.local?.path ?? 'N/A');
}
