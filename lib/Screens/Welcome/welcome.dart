import 'package:english_for_kids/Components/background.dart';
import 'package:flutter/material.dart';

class WelCome extends StatelessWidget {
  const WelCome({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGround(
      // ignore: sort_child_properties_last
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/logo.png'))),
            child: Row(),
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              InkWell(
                child: Container(
                  height: MediaQuery.of(context).size.height / 10,
                  width: MediaQuery.of(context).size.width * 3 / 4,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/3.png'),
                  )),
                ),
              ),
              const Text(
                'Or continue with',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.only(right: 40),
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2.0, color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Image(
                        image: AssetImage('assets/gg.png'),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2.0, color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Image(
                        image: AssetImage('assets/fb.png'),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
            ],
          ))
        ],
      ),
      path: 'assets/bg.png',
    );
  }
}
