import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kartal/src/context_extension.dart';
import 'package:onboard_homepages/home/homePageModels.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.appTheme.colorScheme.background,
        floatingActionButton: floatingButton(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: bottomNavBar(context),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: context.dynamicHeight(0.1),
                ),
                title_row(context),
                SizedBox(
                  height: context.dynamicHeight(0.02),
                ),
                sub_cleaned_Row(context),
                listViewBuilder()
              ],
            ),
          ),
        ),
      ),
    );
  }

  BottomAppBar bottomNavBar(BuildContext context) {
    return BottomAppBar(
      color: context.appTheme.primaryColor,
      shape: CircularNotchedRectangle(),
      notchMargin: 1,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.folder),
            color: context.appTheme.colorScheme.background,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.manage_accounts),
            color: context.appTheme.colorScheme.background,
          ),
        ],
      ),
    );
  }

  FloatingActionButton floatingButton(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: context.appTheme.colorScheme.background,
      onPressed: () {},
      child: Icon(Icons.settings),
    );
  }

  Row title_row(BuildContext context) {
    return Row(
      children: [
        Container(
          width: context.dynamicWidth(0.5),
          child: Text(
            hPModels[0].firstText,
            style: context.textTheme.headline4?.copyWith(
                fontWeight: FontWeight.w700,
                color: context.appTheme.primaryColor),
          ),
        ),
      ],
    );
  }

  Row sub_cleaned_Row(BuildContext context) {
    return Row(
      children: [
        Text(hPModels[0].subscriptionsText,
            style: context.textTheme.headline6?.copyWith(
                fontWeight: FontWeight.w400,
                color: context.appTheme.primaryColor)),
        SizedBox(
          width: context.dynamicWidth(0.18),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white12, borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.all(7),
          child: Text(hPModels[0].cleanedText,
              style: context.textTheme.headline6?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: context.appTheme.primaryColor)),
        )
      ],
    );
  }

  ListView listViewBuilder() {
    return ListView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: cardContents.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 0),
              borderOnForeground: true,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: context.normalBorderRadius,
              ),
              color: context.appTheme.primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(cardContents[index].title),
                        Text(cardContents[index].url)
                      ],
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.blue[50],
                      ),
                      margin: EdgeInsets.all(15),
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.delete)))
                ],
              ),
            ),
          );
        });
  }
}
