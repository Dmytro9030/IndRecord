import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF010314),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const AppBarX(),
            const Gap(40),
            Align(
              child: Container(
                height: 400,
                width: 320,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 100,
                      offset: const Offset(0, 4),
                      color: const Color(0xFF7EF6F0).withOpacity(.2),
                    )
                  ],
                  color: const Color(0xFF010314),
                  borderRadius: BorderRadius.circular(42),
                  border: const Border(
                    top: BorderSide(color: Color(0xFF7EF6F0), width: 1),
                    bottom: BorderSide(color: Color(0xFF7EF6F0), width: 3),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.open_in_new_rounded),
                    ),
                    const Spacer(),
                    const Text(
                      ' Summary for IndRecord will be here as simple text which you can copy/paste',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    const Spacer(flex: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Cancel'),
                        ),
                        const Gap(5),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Save'),
                        ),
                        const Gap(5),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(color: Colors.blue)),
                          ),
                          onPressed: () {},
                          child: const Text('Process'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AppBarX extends StatelessWidget {
  const AppBarX({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc)),
          const Text('Hi, Michael 👋🏽'),
          const CircleAvatar(
            foregroundImage: AssetImage('assets/images/avatar.png'),
          )
        ],
      ),
    );
  }
}
