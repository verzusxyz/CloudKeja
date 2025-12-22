import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../i18n/strings.g.dart';
import '../../../routes/app_routes.gr.dart';
import '../../../services/services.dart';

@RoutePage()
class LanguageView extends ConsumerStatefulWidget {
  const LanguageView({super.key, this.getBack = false});

  final bool getBack;

  @override
  ConsumerState<LanguageView> createState() => _LanguageViewState();
}

class _LanguageViewState extends ConsumerState<LanguageView> {
  final selectedLocale = ValueNotifier<CustomAppLocale?>(null);

  @override
  void initState() {
    selectedLocale.value = ref.read(appLocaleProvider).currentLocale;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final langProv = ref.watch(appLocaleProvider);
    final _theme = Theme.of(context);

    return Scaffold(
      backgroundColor: _theme.colorScheme.primaryContainer,
      appBar: AppBar(
        // title: const Text('Select Language'),
        title: Text(context.t.pages.language.appbarTitle),
      ),
      body: ValueListenableBuilder<CustomAppLocale?>(
        valueListenable: selectedLocale,
        builder: (_, value, __) {
          return ListView.builder(
            itemCount: langProv.locales.length,
            itemBuilder: (context, index) {
              final _item = langProv.locales[index];

              return RadioListTile<CustomAppLocale?>(
                controlAffinity: ListTileControlAffinity.trailing,
                title: Row(
                  children: [
                    SizedBox.square(
                      dimension: 32,
                      child: Flag.fromString(_item.countryCode ?? ''),
                    ),
                    const SizedBox.square(dimension: 12),
                    Flexible(
                      child: Text(
                        _item.name,
                        style: _theme.textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
                value: _item,
                groupValue: value,
                onChanged: (v) => selectedLocale.value = v,
              );
            },
          );
        },
      ),
      bottomNavigationBar: SizedBox(
        height: 50.fH,
        width: double.maxFinite,
        child: ElevatedButton(
          onPressed: () async {
            if (selectedLocale.value == null) return;

            langProv.currentLocale = selectedLocale.value!;
            final _result = await showAsyncLoadingOverlay(
              context,
              asyncFunction: langProv.saveLocale,
            );

            if (context.mounted) {
              if (_result.isFailure) {
                showCustomSnackBar(
                  context,
                  content: Text(_result.left!),
                  customSnackBarType: CustomOverlayType.error,
                );
              } else {
                if (widget.getBack) {
                  return context.router.back();
                }
                context.router.push(const MuteHomeRoute());
                return;
              }
            }
          },
          // child: const Text('Save'),
          child: Text(context.t.action.save),
        ),
      ).fMarginLTRB(24, 12, 24, 16),
    );
  }
}
