enum LoginStateView {
  email,
  password;

  String get title {
    switch (this) {
      case LoginStateView.email:
        return 'Qual o seu email?';
      case LoginStateView.password:
        return 'Qual a sua senha?';
    }
  }

  String get placeHolder {
    switch (this) {
      case LoginStateView.email:
        return 'Insira seu email';
      case LoginStateView.password:
        return 'Insira sua senha';
    }
  }
}
