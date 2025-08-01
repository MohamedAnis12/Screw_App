import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screw/cubits/add_player_cubit/add_player_cubit.dart';
import 'package:screw/models/player_model.dart';
import 'package:screw/widgets/custom_button.dart';
import 'package:screw/widgets/custom_text_form_field.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({super.key, });
  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  String? name;
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
            child: CustomTextFormField(
              hint: "name",
              onChanged: (value) {
                name = value;
              },
            ),
          ),
          SizedBox(height: 20),
          BlocBuilder<AddPlayerCubit, AddPlayerState>(
            builder: (context, state) {
              return CustomButton(
                      isLoading: state is AddPlayerLoading?true:false,
                      text: "اضافه اللاعب",
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          PlayerModel player = PlayerModel(name: name!);
                          print(name);
                          BlocProvider.of<AddPlayerCubit>(context).AddPlayer(player);
                        }
                      },
                    );
            },
          ),
        ],
      ),
    );
  }
}
