import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [
            Image(image: AssetImage('assets/landscape.jpg')),
            Title(),
            Buttons(),
            DescriptionText()
          ],
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'El rejón alias awita chiwas',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Chihuahua',
                style: TextStyle(color: Colors.black45),
              )
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41')
        ],
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _CustomButton(icon: Icons.phone, text: 'CALL'),
          _CustomButton(icon: Icons.near_me_sharp, text: 'ROUTE'),
          _CustomButton(icon: Icons.share, text: 'SHARE'),
        ],
      ),
    );
  }
}

class DescriptionText extends StatelessWidget {
  const DescriptionText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
          'Lorem dolore tempor cupidatat esse dolor. Commodo laboris nostrud Lorem elit fugiat reprehenderit nisi tempor officia ullamco ex. Amet nostrud eu ex occaecat veniam non. Cupidatat ullamco et irure nisi exercitation culpa occaecat minim nisi id cupidatat. Deserunt quis quis laborum in exercitation fugiat cupidatat elit nisi duis ipsum dolor.'),
    );
  }
}

class _CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const _CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
