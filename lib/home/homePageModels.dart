import 'package:onboard_homepages/home/homePageView.dart';

class homePageModels {
  String firstText;

  String subscriptionsText;
  String cleanedText;

  homePageModels(
      {required this.firstText,
      required this.subscriptionsText,
      required this.cleanedText});
}

List<homePageModels> hPModels = [
  homePageModels(
    firstText: "Keep up the carbon-free work!",
    subscriptionsText: "Subscriptions(6)",
    cleanedText: "25% Cleaned",
  )
];

class cardStrings {
  String title;
  String url;
  cardStrings({required this.title, required this.url});
}

/*List<cardStrings> cardContents = [
  cardStrings(title: "Coding Journey", url: "www.coding-journey.io"),
  cardStrings(title: "Smashing Magazine", url: "https://www.smashingmagazine"),
  cardStrings(title: "UX Labs", url: "https://uxlabs.co"),
  cardStrings(
      title: "The Netlify Blog", url: "https://www.netlify.com/tags/newsl"),
  cardStrings(title: "Student Life", url: "https://ulife.com/student-life/"),
  cardStrings(title: "Hello.io", url: "https://hello.io/job-postings/"),
];*/
