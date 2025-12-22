import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../core/core.dart';
import '../../../../../widgets/widgets.dart';

@RoutePage()
class LandlordRefundRequestDetailsView extends StatefulWidget {
  const LandlordRefundRequestDetailsView({super.key});

  @override
  State<LandlordRefundRequestDetailsView> createState() =>
      _LandlordRefundRequestDetailsViewState();
}

class _LandlordRefundRequestDetailsViewState
    extends State<LandlordRefundRequestDetailsView> {
  final _status = PaymentStatus.unpaid;
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('View Details'),
        actions: [
          if (_status == PaymentStatus.unpaid)
            IconButton(
              padding: const EdgeInsets.only(right: 16),
              onPressed: () {
                context.router.back();
              },
              icon: Text(
                'Cancel',
                style:
                    _theme.textTheme.bodyMedium?.copyWith(color: _status.color),
              ),
            ),
        ],
      ),
      body: ScaffoldBodyWrapper(
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network('https://i.ibb.co.com/HrGtY5M/pdf.png'),
              const SizedBox.square(
                dimension: 24,
              ),
              Text(
                'Upload Payment Receipt',
                style: _theme.textTheme.titleSmall
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox.square(
                dimension: 6,
              ),

              ///TODO---@torikul add upload button---------------------
              FileFormField.upload(
                // downloadURL: 'Rent Agreement.pdf',
                fileType: FileFormFieldFileType.pdf,
                onSelectFile: (value) {},
              ),
              const SizedBox.square(dimension: 18),
              Text.rich(
                TextSpan(
                  children: [
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: SizedBox.fromSize(
                        size: Size.square(20.fH),
                        child: Icon(
                          Icons.check_box,
                          color: _theme.colorScheme.primary,
                        ),
                      ).fMarginOnly(right: 8),
                    ),
                    TextSpan(
                      text: 'Accepted ',
                      recognizer: TapGestureRecognizer()..onTap = () => (),
                    ),
                    TextSpan(
                      text: 'Terms & Conditions',
                      style: _theme.textTheme.bodyMedium
                          ?.copyWith(color: _theme.colorScheme.primary),
                      recognizer: TapGestureRecognizer()..onTap = () => (),
                    )
                  ],
                ),
                style: _theme.textTheme.bodyMedium?.copyWith(
                  color: _theme.colorScheme.secondary,
                ),
              ),
            ],
          ),
        ),
      )),
      bottomNavigationBar: Container(
        color: _theme.colorScheme.primaryContainer,
        padding: const EdgeInsets.fromLTRB(24, 12, 24, 16),
        child: SizedBox.fromSize(
          size: const Size.fromHeight(50),
          child: ElevatedButton(
            onPressed: () => _handlePrintNavigation(_status),
            child: const Text('Print'),
          ),
        ),
      ),
    );
  }

  Future<void> _handlePrintNavigation(PaymentStatus status) async {
    const _result = SnackBar(
      content: Text('@Torikul Islam work next step'),
    );
    if (kDebugMode) {
      print(_result);
    }
    ScaffoldMessenger.of(context).showSnackBar(_result);
  }
}
