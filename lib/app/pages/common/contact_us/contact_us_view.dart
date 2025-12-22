import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconly/iconly.dart';

import '../../../../i18n/strings.g.dart';
import '../../../core/core.dart';
import '../../../data/repositories/repositories.dart';
import '../../../widgets/widgets.dart';
import '../widgets/widgets.dart';
import 'components/components.dart';

part '_contact_us_view_provider.dart';

@RoutePage()
class ContactUsView extends ConsumerStatefulWidget {
  const ContactUsView({super.key});

  @override
  ConsumerState<ContactUsView> createState() => _ContactUsViewState();
}

class _ContactUsViewState extends ConsumerState<ContactUsView> {
  Timer? timer;

  @override
  void initState() {
    super.initState();

    if (context.mounted) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        timer = Timer.periodic(
          const Duration(seconds: 2),
          (_) => ref.invalidate(supportSessionProvider),
        );
      });
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(contactUsViewProvider);
    final supportSession = ref.watch(supportSessionProvider);
    final user = ref.watch(userRepositoryProvider).valueOrNull;

    final _theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: SizedBox.square(
            dimension: 44,
            child: UserAvatarPicker(
              placeholderImage: DAppImages.supportAvatar,
            ),
          ),
          title: Text(
            AppConfig.appName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          titleTextStyle: _theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w700,
            color: _theme.colorScheme.onPrimary,
          ),
          subtitle: Text(
            // 'Online',
            context.t.common.online,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          subtitleTextStyle: _theme.textTheme.bodyMedium?.copyWith(
            color: _theme.colorScheme.onPrimary,
          ),
        ),
      ),
      body: ScaffoldBodyWrapper(
        body: Column(
          children: [
            // Chat
            Expanded(
              child: RefreshIndicator.adaptive(
                onRefresh: () => ref.refresh(supportSessionProvider.future),
                child: supportSession.when(
                  data: (data) {
                    final chatMessages = [...?data.data].reversed.toList();
                    return ListView.separated(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                        16,
                        24,
                        16,
                        24,
                      ),
                      reverse: true,
                      itemCount: chatMessages.length,
                      itemBuilder: (context, index) {
                        final chatData = chatMessages[index];
                        final previousMessage =
                            index > 0 ? chatMessages[index - 1] : null;
                        final sender =
                            user?.id == chatData.senderId ? 'user' : 'admin';

                        return ChatMessageItem(
                          chatData: ChatBubbleData(
                            id: chatData.id!,
                            attachment: chatData.file == null
                                ? null
                                : ChatBubbleAttachment(
                                    file: chatData.file,
                                    ext: chatData.fileInfo?.ext,
                                    size: chatData.fileInfo?.size,
                                  ),
                            message: chatData.message,
                            sentAt: chatData.createdAt,
                            sender: sender,
                          ),
                          previousMessage: previousMessage == null
                              ? null
                              : ChatBubbleData(
                                  id: previousMessage.id!,
                                  attachment: previousMessage.file == null
                                      ? null
                                      : ChatBubbleAttachment(
                                          file: previousMessage.file,
                                          ext: previousMessage.fileInfo?.ext,
                                          size: previousMessage.fileInfo?.size,
                                        ),
                                  message: previousMessage.message,
                                  sentAt: previousMessage.createdAt,
                                  sender: sender,
                                ),
                          onDownloadFile: (url) async {
                            return await SharedWidgets.handleDownloadOverlay(
                              context,
                              url,
                            );
                          },
                        );
                      },
                      separatorBuilder: (_, __) {
                        return const SizedBox.square(dimension: 16);
                      },
                    );
                  },
                  error: (error, _) {
                    return SizedBox(
                      height: MediaQuery.sizeOf(context).width,
                      width: double.maxFinite,
                      child: EmptyWidget(
                        replaceDefault: false,
                        child: SizedBox.shrink(),
                        emptyBuilder: (context) {
                          return RetryButtons.scrollView(
                            error,
                            onRetry: () => ref.refresh(
                              supportSessionProvider.future,
                            ),
                          );
                        },
                      ),
                    );
                  },
                  loading: () {
                    return const Center(child: CircularProgressIndicator());
                  },
                ),
              ),
            ),

            // Actions
            ScaffoldBottomNavWrapper(
              child: ValueListenableBuilder<bool>(
                valueListenable: controller.isSending,
                builder: (_, isSending, __) {
                  return Row(
                    spacing: 8,
                    children: [
                      // Attachment File Button
                      IconButton.filledTonal(
                        onPressed: isSending
                            ? null
                            : () async {
                                return await _handleSendingMessage(
                                  context,
                                  isAttachment: true,
                                  parentId: supportSession
                                      .valueOrNull?.data?.firstOrNull?.id,
                                );
                              },
                        icon: const Icon(Icons.add),
                        style: IconButton.styleFrom(
                          backgroundColor:
                              _theme.colorScheme.secondary.withValues(
                            alpha: 0.15,
                          ),
                          foregroundColor: _theme.colorScheme.secondary,
                        ),
                      ),

                      // Message Field
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: TextFormField(
                            controller: controller.messageController,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              // hintText: 'Message...',
                              hintText:
                                  context.t.pages.contactUs.extra.messageHint,
                              filled: true,
                              fillColor: const Color(0xffF7F7F8),
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ),

                      // Send Button
                      if (!isSending)
                        IconButton.filled(
                          onPressed: () async {
                            return await _handleSendingMessage(
                              context,
                              parentId: supportSession
                                  .valueOrNull?.data?.firstOrNull?.id,
                            );
                          },
                          icon: const Icon(IconlyBold.send),
                        )
                      else
                        const CircularProgressIndicator()
                    ],
                  ).fMarginLTRB(24, 16, 24, 12);
                },
              ),
            ),
          ],
        ),
      ),
    ).unfocusPrimary();
  }

  Future<void> _handleSendingMessage(
    BuildContext ctx, {
    bool isAttachment = false,
    int? parentId,
  }) async {
    final prov = ref.read(contactUsViewProvider);
    final result = await Future.microtask(
      () => (isAttachment
          ? prov.handleSendingAttachment(parentId)
          : prov.sendMessage(parentId)),
    );

    if (!ctx.mounted) return;

    if (result.isFailure) {
      showCustomSnackBar(
        ctx,
        content: Text(result.left!),
        customSnackBarType: CustomOverlayType.error,
      );
    } else {
      ref.invalidate(supportSessionProvider);
    }
  }
}
