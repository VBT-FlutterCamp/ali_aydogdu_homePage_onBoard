import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:onboard_homepages/onboard/onboardModel.dart';

class onboard_view extends StatefulWidget {
  const onboard_view({Key? key}) : super(key: key);

  @override
  _onboard_viewState createState() => _onboard_viewState();
}

class _onboard_viewState extends State<onboard_view> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.appTheme.primaryColor,
        body: Stack(
          fit: StackFit.loose,
          children: [
            ImageContainer(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 45),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: context.dynamicHeight(0.18),
                  ),
                  FirstText(context),
                  SecondText(context),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 310,
                      ),
                      ButtonContainer(context)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container ButtonContainer(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: context.appTheme.primaryColor),
      child: TextButton(
        onPressed: () {},
        child: Text(
          models[0].buttonText,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: context.dynamicHeight(0.023),
              color: context.appTheme.colorScheme.background),
        ),
      ),
    );
  }

  Text SecondText(BuildContext context) {
    return Text(
      models[0].description,
      style: context.textTheme.headline6?.copyWith(
        fontWeight: FontWeight.w300,
        color: context.appTheme.colorScheme.background,
      ),
      textAlign: TextAlign.center,
    );
  }

  Text FirstText(BuildContext context) {
    return Text(
      models[0].title,
      style: context.textTheme.headline4?.copyWith(
        fontWeight: FontWeight.w700,
        color: context.appTheme.colorScheme.background,
      ),
      textAlign: TextAlign.center,
    );
  }

  Container ImageContainer() {
    return Container(
        child: Image.asset(
      models[0].image,
      fit: BoxFit.fitWidth,
      width: double.infinity,
    ));
  }
}
