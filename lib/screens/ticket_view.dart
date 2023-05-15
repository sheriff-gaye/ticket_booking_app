import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:my_app/utils/app_layout.dart';
import 'package:my_app/utils/app_styles.dart';
import 'package:my_app/widgets/tick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: AppLayout.getWidth(size.width * 0.85),
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 167 : 169),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
            decoration: BoxDecoration(
                color: isColor == null ? const Color(0xff256799) : Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getHeight(21)),
                    topRight: Radius.circular(AppLayout.getHeight(21)))),
            padding: EdgeInsets.all(AppLayout.getHeight(16)),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    "${ticket['from']['code']}",
                    style: isColor == null ? Styles.headStyle3.copyWith(color: Colors.white) : Styles.headStyle3,
                  ),
                  Expanded(child: Container()),
                  const ThickContainer(
                    isColor: true,
                  ),
                  Expanded(
                      child: Stack(children: [
                    SizedBox(
                      height: AppLayout.getHeight(24),
                      child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                (constraints.constrainWidth() / 6).floor(),
                                (index) => SizedBox(
                                      width: AppLayout.getWidth(3),
                                      height: AppLayout.getHeight(1),
                                      child: DecoratedBox(
                                          decoration:
                                              BoxDecoration(color: isColor == null ? Colors.white : Color(0xff8accfc))),
                                    )),
                          );
                        },
                      ),
                    ),
                    Center(
                      child: Transform.rotate(
                          angle: 1.5,
                          child: Icon(
                            Icons.airplanemode_active,
                            color: isColor == null ? Colors.white : Color(0xff8accfc),
                          )),
                    ),
                  ])),
                  const ThickContainer(
                    isColor: true,
                  ),
                  Expanded(child: Container()),
                  Text(
                    "${ticket['to']['code']}",
                    style: isColor == null ? Styles.headStyle3.copyWith(color: Colors.white) : Styles.headStyle3,
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(3)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: AppLayout.getWidth(100),
                    child: Text(
                      "${ticket['from']['name']}",
                      style: isColor == null ? Styles.headStyle4.copyWith(color: Colors.white) : Styles.headStyle4,
                    ),
                  ),
                  Text(
                    "${ticket['flying_time']}",
                    style: isColor == null ? Styles.headStyle4.copyWith(color: Colors.white) : Styles.headStyle4,
                  ),
                  SizedBox(
                    width: AppLayout.getWidth(100),
                    child: Text(
                      "${ticket['to']['name']}",
                      textAlign: TextAlign.end,
                      style: isColor == null ? Styles.headStyle4.copyWith(color: Colors.white) : Styles.headStyle4,
                    ),
                  )
                ],
              )
            ]),
          ),
          Container(
            color: isColor == null ? Styles.orangeColor : Colors.white,
            child: Row(children: [
              SizedBox(
                height: AppLayout.getHeight(20),
                width: AppLayout.getWidth(10),
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: isColor == null ? Colors.white : Colors.white,
                        borderRadius:
                            const BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)))),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(
                          (constraints.constrainWidth() / 15).floor(),
                          (index) => SizedBox(
                                height: AppLayout.getHeight(1),
                                width: AppLayout.getWidth(5),
                                child: DecoratedBox(
                                    decoration:
                                        BoxDecoration(color: isColor == null ? Colors.white : Colors.grey.shade300)),
                              )),
                    );
                  },
                ),
              )),
              SizedBox(
                height: AppLayout.getHeight(20),
                width: AppLayout.getWidth(10),
                child: const DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)))),
              )
            ]),
          ),
          Container(
            decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                    bottomRight: Radius.circular(isColor == null ? 21 : 0))),
            padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${ticket['date']}",
                        style: isColor == null ? Styles.headStyle3.copyWith(color: Colors.white) : Styles.headStyle3,
                      ),
                      const Gap(5),
                      Text(
                        "Date",
                        style: isColor == null ? Styles.headStyle4.copyWith(color: Colors.white) : Styles.headStyle4,
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "${ticket['departure_time']}",
                        style: isColor == null ? Styles.headStyle3.copyWith(color: Colors.white) : Styles.headStyle3,
                      ),
                      const Gap(5),
                      Text(
                        "Departure Time",
                        style: isColor == null ? Styles.headStyle4.copyWith(color: Colors.white) : Styles.headStyle4,
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "${ticket['number']}",
                        style: isColor == null ? Styles.headStyle3.copyWith(color: Colors.white) : Styles.headStyle3,
                      ),
                      Gap(AppLayout.getHeight(5)),
                      Text(
                        "Number",
                        style: isColor == null ? Styles.headStyle4.copyWith(color: Colors.white) : Styles.headStyle4,
                      )
                    ],
                  )
                ],
              )
            ]),
          )
        ]),
      ),
    );
  }
}
