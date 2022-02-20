class OnBoardModels {
  String title;
  String description;
  String image;
  String buttonText;
  OnBoardModels(
      {required this.description,
      required this.buttonText,
      required this.title,
      required this.image});
}

List<OnBoardModels> models = [
  OnBoardModels(
      image: "assets/images/Landing.png",
      description: "Clean up old subscriptions and say no to email carbon!",
      title: "Cleaning your inbox has never been easier.",
      buttonText: "Get Started      >>"),
];
