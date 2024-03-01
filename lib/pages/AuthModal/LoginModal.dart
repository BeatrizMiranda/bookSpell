import 'package:bookspell/components/CustomButton/CustomButton.dart';
import 'package:bookspell/components/FormTextField.dart';
import 'package:bookspell/pages/AuthModal/SignInModal.dart';
import 'package:bookspell/components/Modal/FormModal.dart';
import 'package:bookspell/shared/constants/appTextStyles.dart';
import 'package:bookspell/shared/functions/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class LoginFormComponent extends StatelessWidget {
  LoginFormComponent({Key? key, required this.loginFormKey}) : super(key: key);
  final GlobalKey<FormState> loginFormKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      key: loginFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FormTextField(
            label: 'Nome',
            icon: FeatherIcons.user,
            validator: (String? value) {
              if (isEmptyInput(value)) {
                return 'Por favor preencha esse campo';
              }
              return null;
            },
          ),
          FormTextField(
            label: 'Email',
            icon: FeatherIcons.mail,
            validator: (String? value) {
              if (isEmptyInput(value)) {
                return 'Por favor preencha esse campo';
              }
              if (!isValidEmail(value)) {
                return 'Please enter a valid email';
              }
              return null;
            },
          ),
          FormTextField(
            label: 'Senha',
            icon: FeatherIcons.key,
            validator: (String? value) {
              if (isEmptyInput(value)) {
                return 'Por favor preencha esse campo';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}

openLoginModal(context) {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  handleSubmit() {
    if (loginFormKey.currentState!.validate()) {
      // continue login
    }
  }

  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return FormModalComponent(
        title: 'Cadastrar',
        subTitle: 'Para criar sua meta e organizar suas listas de leitura!',
        form: LoginFormComponent(loginFormKey: loginFormKey),
        link: InkWell(
          child: Text(
            'Já tem cadastro? Logue!',
            style: AppTextStyles.smallLink,
          ),
          onTap: () => {Navigator.pop(context), openSignModal(context)},
        ),
        button: CustomButton(
          content: 'Cadastrar',
          onPressed: handleSubmit,
          noPadding: true,
        ),
      );
    },
  );
}
