import 'package:design_ui/app_style/app_size.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends AppSize {
  Widget cardUser() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
            color: bottonSaveColor,
            borderRadius: BorderRadius.circular(decorationS10)),
      ),
    );
  }

  Widget menuIcon() {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => Column(
          children: [
            cicleAvatarIconWidget(
                icons: Icons.local_cafe_rounded, maxRadius: 35),
            Text(
              'Coffee',
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }

  Widget cicleAvatarIconWidget(
      {IconData? icons = Icons.local_cafe_sharp, double? maxRadius = 25}) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 4),
      child: CircleAvatar(
        maxRadius: maxRadius,
        child: Icon(icons),
      ),
    );
  }

  Widget ListMenu() {
    return Flexible(
      child: Wrap(
        children: List.generate(4, (index) => cardItem()),
      ),
    );
  }

  Widget cardItem() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: mianAppColor,
          borderRadius: BorderRadius.circular(decorationS15),
        ),
        child: Row(
          children: [
            Expanded(flex: 1, child: cicleAvatarIconWidget(maxRadius: 30)),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Address',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Phnom Penh',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
