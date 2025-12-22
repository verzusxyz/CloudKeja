import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../i18n/strings.g.dart';
import '../../../core/core.dart';
import '../../../routes/app_routes.gr.dart';

part '_onboard_view_provider.dart';
part 'data/onboard_data.dart';

@RoutePage()
class OnboardView extends ConsumerStatefulWidget {
  const OnboardView({super.key});

  @override
  ConsumerState<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends ConsumerState<OnboardView> {
  late final PageController imageController = PageController(initialPage: 0);
  late final PageController textController = PageController(initialPage: 0);

  @override
  void dispose() {
    imageController.dispose();
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    final obProv = ref.read(onboardProvider.notifier);
    final _current = ref.watch(onboardProvider);
    final _isLast = obProv.obCount == (_current + 1);

    return Scaffold(
      backgroundColor: DAppColors.kSurfaceLight,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: _theme.colorScheme.onPrimaryContainer,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        actions: [
          Text.rich(
            TextSpan(
              text: context.t.action.skip,
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  return await _completeTour(context, obProv);
                },
            ),
          ).fMarginOnly(right: 24.fW),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
            flex: 5,
            child: PageView.builder(
              controller: imageController,
              itemCount: obProv.obCount,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: obProv.updateIndex,
              itemBuilder: (context, index) {
                final _obItem = obProv.obData[index];
                return Image.asset(_obItem.imagePath);
              },
            ),
          ),
          Flexible(
            flex: 6,
            child: Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Container(
                margin: EdgeInsets.fromLTRB(24.fW, 0, 24.fW, 24.fW),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: _theme.colorScheme.primaryContainer,
                  boxShadow: [DAppBoxShadowStyles.boxShadow1],
                ),
                child: Column(
                  children: [
                    SizedBox.square(dimension: 24.fH),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        obProv.obCount,
                        (index) {
                          final _isActive = _current == index;
                          return Container(
                            height: 8.fH,
                            width: (_isActive ? 18 : 8).fW,
                            margin: EdgeInsets.symmetric(horizontal: 6.fW),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.fH),
                              color: _theme.colorScheme.primary,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox.square(dimension: 16.fH),
                    Expanded(
                      child: PageView.builder(
                        controller: textController,
                        itemCount: obProv.obCount,
                        onPageChanged: obProv.updateIndex,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final _obItem = obProv.obData[index];
                          return Column(
                            children: [
                              Text(
                                _obItem.title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: _theme.textTheme.headlineLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28.fW,
                                ),
                              ),
                              SizedBox.square(dimension: 12.fH),
                              Flexible(
                                child: Text(
                                  _obItem.description,
                                  textAlign: TextAlign.center,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: _theme.textTheme.bodyLarge?.copyWith(
                                    fontSize: 16.fW,
                                  ),
                                ),
                              )
                            ],
                          ).fMarginLTRB(24.fW, 0.fW, 24.fW, 0.fH);
                        },
                      ),
                    ),
                    SizedBox.fromSize(
                      size: Size.fromHeight(50.fH),
                      child: ElevatedButton(
                        onPressed: () async {
                          if (!_isLast) {
                            imageController.nextPage(
                              duration: Durations.medium4,
                              curve: Curves.linearToEaseOut,
                            );
                            textController.nextPage(
                              duration: Durations.medium4,
                              curve: Curves.linearToEaseOut,
                            );
                            return;
                          }

                          await _completeTour(context, obProv);
                        },
                        child: Text(
                          // _isLast ? 'Get Started' : 'Next',
                          _isLast
                              ? context.t.action.getStarted
                              : context.t.action.next,
                        ),
                      ).fMarginSymmetric(horizontal: 24.fW),
                    ),
                    SizedBox.square(dimension: 24.fH),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _completeTour(
    BuildContext ctx,
    OnboardViewNotifier obProv,
  ) async {
    final _result = await obProv.saveTour();

    if (ctx.mounted) {
      if (!_result) {
        showCustomSnackBar(
          ctx,
          // content: const Text('Something went wrong, please try again'),
          content: Text(ctx.t.exceptions.somethingWentWrong),
          customSnackBarType: CustomOverlayType.error,
        );

        return;
      }
      ctx.router.replaceAll([const SignInRoute()]);
    }
  }
}
