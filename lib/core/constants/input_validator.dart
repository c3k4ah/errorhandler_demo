import 'package:errorhandler_demo/core/extensions/string_extension.dart';

class InputValidator {
  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return 'Veuillez entrer votre adresse email';
    } else if (!value.isEmail) {
      return 'Veuillez entrer une adresse email valide';
    }
    return null;
  }

  static String? phone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Veuillez entrer votre numéro de téléphone';
    } else if (!value.isPhoneNumber) {
      return 'Veuillez entrer un numéro valide';
    }
    return null;
  }

  static String? address(String? value) {
    if (value == null || value.isEmpty) {
      return 'Veuillez entrer votre adresse';
    }
    return null;
  }

  static String? zipCode(String? value) {
    if (value == null || value.isEmpty) {
      return 'Veuillez entrer votre code postal';
    } else if (!value.isZipCode) {
      return 'Veuillez entrer un code postal valide';
    }
    return null;
  }

  static String? lastName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Veuillez entrer votre nom';
    } else if (!value.isUsername) {
      return 'Veuillez entrer votre nom correctement';
    }
    return null;
  }

  static String? firstName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Veuillez entrer votre prénom';
    } else if (!value.isUsername) {
      return 'Veuillez entrer votre prénom correctement';
    }
    return null;
  }
}

class AllowEmptyInputValidator {
  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    } else if (!value.isEmail) {
      return 'Veuillez entrer une adresse email valide';
    }
    return null;
  }

  static String? phone(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    } else if (!value.isPhoneNumber) {
      return 'Veuillez entrer un numéro valide';
    }
    return null;
  }

  static String? zipCode(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    } else if (!value.isZipCode) {
      return 'Veuillez entrer un code postal valide';
    }
    return null;
  }

  static String? lastName(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    } else if (!value.isUsername) {
      return 'Veuillez entrer votre nom correctement';
    }
    return null;
  }

  static String? firstName(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    } else if (!value.isUsername) {
      return 'Veuillez entrer votre prénom correctement';
    }
    return null;
  }

  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    } else if (!value.atLeastSixCharacters) {
      return 'Veuillez entrer un mot de passe au moins 6 lettres';
    }
    return null;
  }
}
