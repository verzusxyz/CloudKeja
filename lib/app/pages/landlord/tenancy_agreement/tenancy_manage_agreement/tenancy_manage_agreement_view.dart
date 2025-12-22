import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/repositories/repositories.dart';
import '../../../../widgets/widgets.dart';

part '_tenancy_manage_agreement_view_provider.dart';

@RoutePage()
class TenancyManageAgreementView extends ConsumerStatefulWidget {
  const TenancyManageAgreementView({super.key, this.editModel});
  final LandlordTenancyAgreement? editModel;

  @override
  ConsumerState<TenancyManageAgreementView> createState() =>
      _TenancyManageAgreementViewState();
}

class _TenancyManageAgreementViewState
    extends ConsumerState<TenancyManageAgreementView> {
  @override
  void initState() {
    if (widget.editModel != null) {
      ref.read(tenancyManageAgreementProvider).initEdit(
            widget.editModel,
          );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(tenancyManageAgreementProvider);

    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          widget.editModel != null ? 'Edit Agreement' : 'Write Agreement',
        ),
      ),
      body: ScaffoldBodyWrapper(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              TextFormField(
                controller: controller.titleController,
                decoration: const InputDecoration(
                  labelText: 'Title*',
                  hintText: 'Enter title',
                ),
              ),
              const SizedBox.square(dimension: 20),

              // PDF File
              FileFormField.upload(
                decoration: const FileFormFieldDecoration(
                  labelText: 'Upload PDF',
                  hintText: 'No file chosen',
                ),
                fieldType: FileFormFieldType.textField,
                onSelectFile: (value) {},
              ),
              const SizedBox.square(dimension: 16),

              // Write PDF
              /*
              Text(
                'Write Pdf',
                style: _theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox.square(dimension: 16),
              InputDecorator(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(1),
                ),
                child: Column(
                  children: [
                    QuillToolbar.simple(
                      controller: controller.quillController,
                      configurations: const QuillSimpleToolbarConfigurations(
                        multiRowsDisplay: false,
                      ),
                    ),
                    QuillEditor.basic(
                      controller: controller.quillController,
                    )
                  ],
                ),
              )
              */
            ],
          ),
        ),
      ),
      bottomNavigationBar: ScaffoldBottomNavWrapper(
        child: SizedBox.fromSize(
          size: const Size.fromHeight(50),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Save'),
          ),
        ).fMarginSymmetric(horizontal: 24, vertical: 12),
      ),
    ).unfocusPrimary();
  }
}
