import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../i18n/strings.g.dart';
import '../../../data/repositories/repositories.dart';
import '../../../widgets/widgets.dart';

@RoutePage()
class AboutUsView extends ConsumerWidget {
  const AboutUsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _aboutUs = ref.watch(_aboutUsProvider);

    return Scaffold(
      appBar: CustomAppBar(
        // title: const Text('About Us'),
        title: Text(context.t.pages.aboutUs.appbarTitle),
      ),
      body: ScaffoldBodyWrapper(
        body: RefreshIndicator.adaptive(
          onRefresh: () => ref.refresh(_aboutUsProvider.future),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(24),
            child: _aboutUs.when(
              skipLoadingOnRefresh: false,
              data: (data) {
                return HtmlWidget(
                  data.data?.value?.description ?? '',
                  onLoadingBuilder: (_, __, ___) {
                    return _buildPlaceholder;
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
                          _aboutUsProvider.future,
                        ),
                      );
                    },
                  ),
                );
              },
              loading: () => _buildPlaceholder,
            ),
          ),
        ),
      ),
    );
  }

  Widget get _buildPlaceholder {
    return Skeletonizer(
      child: HtmlWidget(
        '''
 <h3>Heading</h3>
<p>
    A paragraph with <strong>strong</strong>, <em>emphasized</em>
    and <span style="color: red">colored</span> text.
</p>
<h3>Heading</h3>
<p>
    A paragraph with <strong>strong</strong>, <em>emphasized</em>
    and <span style="color: red">colored</span> text.
</p>
<h3>Heading</h3>
<p>
    A paragraph with <strong>strong</strong>, <em>emphasized</em>
    and <span style="color: red">colored</span> text.
</p>
<h3>Heading</h3>
<p>
    A paragraph with <strong>strong</strong>, <em>emphasized</em>
    and <span style="color: red">colored</span> text.
</p>
<h3>Heading</h3>
  ''',
      ),
    );
  }
}

final _aboutUsProvider = FutureProvider.autoDispose(
  (ref) => ref.read(commonRepoProvider).getAboutUs(),
);
