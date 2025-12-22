import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../widgets/widgets.dart';

@RoutePage()
class ManageReviewView extends ConsumerStatefulWidget {
  const ManageReviewView({super.key, required this.propertyId, this.editModel});
  final int propertyId;
  final Review? editModel;

  @override
  ConsumerState<ManageReviewView> createState() => _ManageReviewViewState();
}

class _ManageReviewViewState extends ConsumerState<ManageReviewView> {
  // Provider
  late final controller = ref.read(propertyRepoProvider);
  //------------------------Form Field Props------------------------//
  final ValueNotifier<double> rating = ValueNotifier<double>(5);
  late final reviewController = TextEditingController();
  //------------------------Form Field Props------------------------//

  @override
  void initState() {
    if (widget.editModel != null) {
      rating.value = (widget.editModel?.review ?? 0).toDouble();
      reviewController.text = widget.editModel?.comment ?? '';
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return FormWrapper(
      builder: (formContext) {
        return Scaffold(
          appBar: CustomAppBar(
            title: Text(
              // widget.editModel != null ? 'Edit Review' : 'Write a review',
              widget.editModel != null
                  ? context.t.common.editReview
                  : context.t.common.writeAReview,
            ),
          ),
          body: ScaffoldBodyWrapper(
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Rating Bar
                  Text(
                    // 'Select Rating',
                    context.t.common.selectRating,
                    style: _theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox.square(dimension: 8),
                  ValueListenableBuilder(
                    valueListenable: rating,
                    builder: (_, value, __) {
                      return RatingBar(
                        ratingWidget: RatingWidget(
                          full: _buildIcon(Icons.star),
                          half: _buildIcon(Icons.star_half),
                          empty: _buildIcon(Icons.star_outline),
                        ),
                        allowHalfRating: true,
                        glow: false,
                        itemSize: 36,
                        minRating: 0.5,
                        initialRating: value,
                        onRatingUpdate: (v) => rating.value = v,
                      );
                    },
                  ),
                  const SizedBox.square(dimension: 14),

                  // Description
                  Text(
                    // 'Enter Your Opinion',
                    context.t.common.enterYourOpinion,
                    style: _theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox.square(dimension: 8),
                  TextFormField(
                    controller: reviewController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(14),
                      // hintText: 'Message...',
                      hintText: context.t.pages.contactUs.extra.messageHint,
                    ),
                    maxLines: 3,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        // return "Please enter a review message";
                        return context.t.common.askToEnterReviewMsg;
                      }

                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: ScaffoldBottomNavWrapper(
            child: SizedBox.fromSize(
              size: Size.fromHeight(50),
              child: ElevatedButton(
                onPressed: () async {
                  if (Form.maybeOf(formContext)?.validate() == true) {
                    await _handleFormSubmit(context);
                  }
                },
                // child: const Text('Submit'),
                child: Text(context.t.action.submit),
              ),
            ).fMarginAll(16),
          ),
        );
      },
    ).unfocusPrimary();
  }

  Icon _buildIcon(IconData data) {
    return Icon(
      data,
      color: DAppColors.kPendingColor,
    );
  }

  Future<void> _handleFormSubmit(BuildContext ctx) async {
    final _result = await showAsyncLoadingOverlay(
      ctx,
      asyncFunction: () => Future.microtask(
        () => controller.manageReview(
          id: widget.editModel?.id,
          propertyId: widget.propertyId,
          rating: rating.value,
          comment: reviewController.text,
        ),
      ),
    );

    if (ctx.mounted) {
      if (_result.isFailure) {
        showCustomSnackBar(
          ctx,
          content: Text(_result.left!),
          customSnackBarType: CustomOverlayType.error,
        );
        return;
      }

      return ctx.router.back();
    }
  }
}
