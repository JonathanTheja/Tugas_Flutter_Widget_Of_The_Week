import 'package:flutter/material.dart';
import 'package:newsapp/model/kdrama.dart';

final ScrollController _controller = ScrollController();

class KdramaScreen extends StatelessWidget {
  static const routeName = '/kdrama_list';
  const KdramaScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kdrama List'),
      ),
      body: ScrollbarTheme(
          data: ScrollbarThemeData(
            thumbColor: MaterialStateProperty.all<Color>(
                Colors.red), // Set the color of the scrollbar thumb
            trackColor: MaterialStateProperty.all<Color>(Colors.grey),
            // Set the color of the scrollbar track
          ),
          child: Scrollbar(
              controller: _controller,
              isAlwaysShown: true,
              thickness: 8.0,
              radius: Radius.circular(4.0),
              child: ListView.builder(
                controller: _controller,
                itemCount: koreanDramaList.length,
                itemBuilder: (context, index) {
                  final KoreanDrama kdrama = koreanDramaList[index];
                  return InkWell(
                    onTap: () {},
                    child: Card(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 1, child: Image.asset(kdrama.banner))
                        ],
                      ),
                    ),
                  );
                },
              ))),
    );
  }
}
