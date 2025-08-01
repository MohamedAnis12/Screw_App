import 'package:flutter/widgets.dart';
import 'package:screw/widgets/custom_button.dart';
import 'package:screw/widgets/custom_text_form_field.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({super.key, required this.isLoading});
  final bool isLoading;

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
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
          CustomButton(
            text: "اضافه اللاعب",
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                Navigator.pop(context);
              }
            },
          ),
        ],
      ),
    );
  }
}