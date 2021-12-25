import 'package:flutter/material.dart';
import 'package:patisi/widgets/custom_elevated_button.dart';
import '../../../utilities/utilities.dart';
import '../../../widgets/custom_circular_text_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: Text(
          'Hello User,',
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.w700,
            fontSize: 32,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              left: Utilities.padding,
              bottom: Utilities.padding,
            ),
            color: Theme.of(context).primaryColor,
            child: Text(
              'What you need for your friend?',
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _buttons(context),
          _healthText(context),
          _timeText(context),
          const SizedBox(height: 8),
          CustomCircularTextButtom(text: 'See remaining rights', onTap: () {}),
          _upgradeButton(context),
        ],
      ),
    );
  }

  Container _healthText(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        left: Utilities.padding,
        bottom: 6,
        right: Utilities.padding,
      ),
      child: FittedBox(
        child: Text(
          'Happy Healthy and Insured:',
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Container _timeText(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.all(Utilities.padding),
      child: const FittedBox(
        child: Text(
          '135 Day 18 Hour 15 Min 10 Sec',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Padding _upgradeButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Utilities.padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Care',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          CustomElevatedButtom(
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.star,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                const SizedBox(width: 4),
                Text(
                  'UPGRADE',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }

  Padding _buttons(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Utilities.padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: () {},
            splashColor: Colors.blue,
            borderRadius: BorderRadius.circular(60),
            child: const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.red,
              child: Text(
                'Urgent',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            children: <Widget>[
              _CustomButton(
                onTap: () {},
                child: const Text('Need Icon'),
              ),
              _CustomButton(
                onTap: () {},
                child: const Text('Need Icon'),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              _CustomButton(
                onTap: () {},
                child: const Text('Need Icon'),
              ),
              _CustomButton(
                onTap: () {},
                child: const Text('Need Icon'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton({required this.onTap, required this.child, Key? key})
      : super(key: key);
  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 90,
        width: 100,
        padding: EdgeInsets.all(Utilities.padding / 3),
        margin: EdgeInsets.all(Utilities.padding / 3),
        alignment: Alignment.center,
        color: Theme.of(context).primaryColor,
        child: child,
      ),
    );
  }
}
