import 'package:flutter/material.dart';
import 'package:screw/widgets/custom_button.dart';
import 'package:screw/widgets/custom_text_form_field.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextFormField(hint: "name"),
          ),
          SizedBox(height: 20),
          CustomButton(text: "اضافه اللاعب"),
        ],
      ),
    );
  }
}
