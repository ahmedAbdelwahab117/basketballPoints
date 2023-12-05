import 'package:flutter/material.dart';

class Points extends StatefulWidget {
  const Points({super.key});

  @override
  State<Points> createState() => _PointsState();
}

class _PointsState extends State<Points> {
  int teamOnePoints = 0;

  int teamTwoPoints = 0;

  // const Points({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Points Counter'), backgroundColor: Colors.orange),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const SizedBox(height: 25),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 12),
              Column(children: [
                const SizedBox(height: 20),
                const Text(
                  'Team A',
                  style: TextStyle(fontSize: 48, color: Colors.black),
                ),
                const SizedBox(height: 12),
                Text(
                  '$teamOnePoints',
                  style: const TextStyle(fontSize: 120, color: Colors.black),
                ),
                const SizedBox(height: 13),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.orange),
                      minimumSize: MaterialStatePropertyAll(Size(125, 45))),
                  onPressed: () {
                    setState(() {
                      teamOnePoints++;
                    });
                  },
                  child: const Text(
                    'Add 1 Point',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(height: 13),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.orange),
                      minimumSize: MaterialStatePropertyAll(Size(125, 45))),
                  onPressed: () {
                    setState(() {
                      teamOnePoints += 2;
                    });
                  },
                  child: const Text(
                    'Add 2 Point',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(height: 13),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.orange),
                      minimumSize: MaterialStatePropertyAll(Size(125, 45))),
                  onPressed: () {
                    setState(() {
                      teamOnePoints += 3;
                    });
                  },
                  child: const Text(
                    'Add 3 Point',
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ]),
              const SizedBox(
                  height: 400,
                  child: VerticalDivider(color: Colors.grey, thickness: 1)),
              Column(children: [
                const SizedBox(height: 20),
                const Text(
                  'Team B',
                  style: TextStyle(fontSize: 48, color: Colors.black),
                ),
                const SizedBox(height: 12),
                Text(
                  '$teamTwoPoints',
                  style: const TextStyle(fontSize: 120, color: Colors.black),
                ),
                const SizedBox(height: 13),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.orange),
                      minimumSize: MaterialStatePropertyAll(Size(125, 45))),
                  onPressed: () {
                    setState(() {
                      teamTwoPoints++;
                    });
                  },
                  child: const Text(
                    'Add 1 Point',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(height: 13),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.orange),
                      minimumSize: MaterialStatePropertyAll(Size(125, 45))),
                  onPressed: () {
                    setState(() {
                      teamTwoPoints += 2;
                    });
                  },
                  child: const Text(
                    'Add 2 Point',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(height: 13),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.orange),
                      minimumSize: MaterialStatePropertyAll(Size(125, 45))),
                  onPressed: () {
                    setState(() {
                      teamTwoPoints += 3;
                    });
                  },
                  child: const Text(
                    'Add 3 Point',
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ])
            ]),
        const Spacer(),
        ElevatedButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.orange),
              minimumSize: MaterialStatePropertyAll(Size(155, 45))),
          onPressed: () {
            setState(() {
              teamOnePoints = 0;
              teamTwoPoints = 0;
            });
          },
          child: const Text(
            'Reset',
            style: TextStyle(color: Colors.black),
          ),
        ),
        const Spacer()
      ]),
    );
  }
}
