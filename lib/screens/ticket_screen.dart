import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_app/screens/bottom_bar.dart';
import 'package:my_app/screens/ticket_view.dart';
import 'package:my_app/utils/app_info.dart';
import 'package:my_app/utils/app_layout.dart';
import 'package:my_app/utils/app_styles.dart';
import 'package:my_app/widgets/column_layout.dart';
import 'package:my_app/widgets/layout_builder.dart';

class TicketApp extends StatelessWidget {
  const TicketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getWidth(20)),
          children: [
            Gap(AppLayout.getHeight(33)),
            Center(
              child: Text(
                "Get Your Ticket",
                style: Styles.headStyle1,
              ),
            ),
            Gap(AppLayout.getHeight(7)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              child: Column(
                children: [
                  Gap(AppLayout.getHeight(20)),
                  const DottedLines(
                    section: 15,
                    isColor: false,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(
                        firstText: "Flutter DB",
                        secondText: "Passengers",
                        alignmnet: CrossAxisAlignment.start,
                      ),
                      ColumnLayout(
                        firstText: " PC 077367",
                        secondText: "Passport",
                        alignmnet: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const DottedLines(
                    section: 15,
                    isColor: false,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ColumnLayout(
                        firstText: "3456 673 76456",
                        secondText: "Number of E-tickets",
                        alignmnet: CrossAxisAlignment.start,
                      ),
                      ColumnLayout(
                        firstText: "    B67G76",
                        secondText: "Booking Code",
                        alignmnet: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const DottedLines(
                    section: 15,
                    isColor: false,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/visa.png",
                                scale: 11,
                              ),
                              const Gap(5),
                              Text(
                                "*** 2462",
                                style: Styles.headStyle3,
                              )
                            ],
                          ),
                          const Gap(5),
                          Text(
                            "Payment Method",
                            style: Styles.headStyle4,
                          )
                        ],
                      ),
                      const ColumnLayout(
                        firstText: "\$250.00",
                        secondText: "Price",
                        alignmnet: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const DottedLines(
                    section: 15,
                    isColor: false,
                  ),
                  Gap(AppLayout.getHeight(20)),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                      bottomRight: Radius.circular(AppLayout.getHeight(21)))),
              margin: const EdgeInsets.only(left: 15, right: 15),
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(
                    data: "https://www.youtube.com/watch?v=71AsYo2q_0Y&t=15967s",
                    barcode: Barcode.code128(),
                    drawText: false,
                    height: 70,
                    width: double.infinity,
                    color: Styles.textColor,
                  ),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(10)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(
                ticket: ticketList[1],
              ),
            ),
            Gap(AppLayout.getHeight(10)),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Ticket Booked'),
                      content: const Text(
                          'Congratulations! Your ticket with Sunny Travels has been successfully booked. Get ready for an incredible journey filled with unforgettable experiences and beautiful memories.hank you for choosing Sunny Travels for your travel needs. Bon voyage! ✈️🌞 '),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const BotttomBar()),
                                );
                              },
                              child: const Text('OK')),
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                backgroundColor: const Color.fromARGB(255, 4, 139, 47),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
              child: const Text('Download Ticket'),
            ),
          ],
        ),
        Positioned(
          left: AppLayout.getHeight(22),
          top: AppLayout.getHeight(295),
          child: Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Styles.textColor, width: 2)),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
        Positioned(
          right: AppLayout.getHeight(22),
          top: AppLayout.getHeight(295),
          child: Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Styles.textColor, width: 2)),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
      ]),
    );
  }
}
