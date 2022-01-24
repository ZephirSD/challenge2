import 'choix.dart';

class Questions {
  int numberChoix = 0;
  List<Choix> questions = [
    Choix(
        "Vous venez de crevez un pneu à St André. Vous n'avez pas de téléphone vous décidez de faire du stop. Une ford fiesta rouge s'arrête et le conducteur vous demande si vous voulez qu'il vous dépanne.",
        "Vous lui remerciez et vous montez dans la voiture",
        "Vous lui demandez s'il n'est pas un meurtrier avant !"),
    Choix(
        "Il acquiesce de la tête sans faire attention à la question.",
        "Au moins il est honnête. Vous montez !",
        "Attends, mais je sais comment changer un pneu voyons !"),
    Choix(
        "Lorsqu'il commence à conduire, il vous demande d'ouvrir la boite à gant. À l’intérieur, vous trouverez un couteau ensanglanté, deux doigts coupés et un CD de T-Matt.",
        "J'adore T-Matt, je lui donne le CD.",
        " C'est lui ou moi, je prends le couteau et je le poignarde."),
    Choix("Woaw ! Quelle évasion !", "Recommencer", ""),
    Choix(
        "En traversant la route du littoral, vous réfléchissez à la sagesse douteuse de poignarder quelqu’un pendant qu’il conduit une voiture dans laquelle vous êtes.",
        "Recommencer",
        ""),
    Choix(
        "Vous vous faites un bon dalon et vous chantez le dernier son de T-matt ensemble. Il vous dépose à Cambaie et il vous demande si vous connaissez un bon endroit pour jeter un corps.",
        "Recommencer",
        ""),
  ];
  String getQuestionsChoix() {
    return questions[numberChoix].question;
  }

  String getChoix1() {
    return questions[numberChoix].choix1;
  }

  String getChoix2() {
    return questions[numberChoix].choix2;
  }

  controlChoix1() {
    if (numberChoix == 0) {
      numberChoix = 2;
    } else if (numberChoix == 1) {
      numberChoix = 2;
    } else if (numberChoix == 2) {
      numberChoix = 5;
    } else if (numberChoix == 5 || numberChoix == 4 || numberChoix == 3) {
      recommencer();
    }
  }

  recommencer() {
    String recomString = questions[numberChoix].choix1;
    if (recomString == "Recommencer") {
      numberChoix = 0;
    }
  }

  controlChoix2() {
    if (numberChoix == 0) {
      numberChoix = 1;
    } else if (numberChoix == 1) {
      numberChoix = 3;
    } else if (numberChoix == 2) {
      numberChoix = 4;
    }
  }
}
