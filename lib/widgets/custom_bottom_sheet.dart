import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screw/cubits/add_player_cubit/add_player_cubit.dart';

import 'package:screw/widgets/custome_form.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddPlayerCubit, AddPlayerState>(
      listener: (context, state) {
        if(state is AddPlayerFailure)
        {
          print("error ${state.errorMessage}");
        }
        if(state is AddPlayerSuccess)
        {
          Navigator.pop(context);
        }

      },
      builder: (context, state) {
        return CustomForm(isLoading: state is AddPlayerLoading?true:false);
      },
    );
  }
}
