// import 'package:bottom_picker/bottom_picker.dart';
// import 'package:bottom_picker/resources/arrays.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:my_app/screens/flights_all.dart';
// import 'package:my_app/utils/app_layout.dart';
// import 'package:my_app/utils/app_styles.dart';
// import 'package:my_app/widgets/icon_text.dart';
// import 'package:my_app/widgets/tickets_tab.dart';
// import 'package:my_app/widgets/two_header.dart';

// class SearchScreen extends StatefulWidget {
//   const SearchScreen({super.key});

//   @override
//   State<SearchScreen> createState() => _SearchScreenState();
// }

// String selectedAirport = '';

// void _showDatePicker(BuildContext context) {
//   BottomPicker.date(
//     title: "Select a Date",
//     dateOrder: DatePickerDateOrder.dmy,
//     pickerTextStyle: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w300, fontSize: 18),
//     titleStyle: const TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
//     onSubmit: (index) {
//       print(index);
//       // selectedAirport = index;
//     },
//     bottomPickerTheme: BottomPickerTheme.plumPlate,
//     displayButtonIcon: false,
//     displaySubmitButton: false,
//   ).show(context);
// }

// void _showFlightClassPicker(BuildContext context) {
//   List<String> flightClasses = ['Economy Class', 'Business Class', 'First Class'];

//   BottomPicker(
//     items: flightClasses.map((className) => Text(className)).toList(),
//     onSubmit: (selectedIndex) {
//       String selectedClass = flightClasses[selectedIndex];

//       selectedAirport = selectedClass;
//     },
//     title: 'Select Ticket Class',
//     pickerTextStyle: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w300, fontSize: 18),
//     titleStyle: const TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
//   ).show(context);
// }

// void _airPortPicker(BuildContext context) {
//   BottomPicker(
//     items: const [
//       Text('Abijan (ABJ'),
//       Text('Accra (ACC'),
//       Text('Gambia (GMB)'),
//       Text('FreeTown (FNA'),
//     ],
//     title: 'Select Airport',
//     pickerTextStyle: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w300, fontSize: 18),
//     titleStyle: const TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
//     displayButtonIcon: false,
//     displaySubmitButton: false,
//   ).show(context);
// }

// class _SearchScreenState extends State<SearchScreen> {
//   bool isSearch = true;
//   @override
//   Widget build(BuildContext context) {
//     final size = AppLayout.getSize(context);
//     return Scaffold(
//       backgroundColor: Styles.bgColor,
//       body: ListView(
//         padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getWidth(20)),
//         children: [
//           Gap(AppLayout.getHeight(35)),
//           Text(
//             "Book a Flight",
//             style: Styles.headStyle1.copyWith(fontSize: AppLayout.getWidth(27)),
//           ),
//           Gap(AppLayout.getHeight(10)),
//           const TicketsTab(left: "One way", right: "Round Trip"),
//           Gap(AppLayout.getHeight(15)),
//           InkWell(
//             onTap: () => _airPortPicker(context),
//             child: const IconText(
//               icon: Icons.flight_takeoff,
//               text: "From",
//             ),
//           ),
//           Gap(AppLayout.getHeight(14)),
//           InkWell(
//             onTap: () => _airPortPicker(context),
//             child: const IconText(
//               icon: Icons.flight_land,
//               text: "To",
//             ),
//           ),
//           Gap(AppLayout.getHeight(15)),
//           InkWell(
//               onTap: () => _showDatePicker(context),
//               child: const IconText(icon: Icons.calendar_month_outlined, text: "Departure Date")),
//           Gap(AppLayout.getHeight(15)),
//           InkWell(
//               onTap: () => _showFlightClassPicker(context),
//               child: const IconText(icon: Icons.class_outlined, text: "Class")),
//           Gap(AppLayout.getHeight(20)),
//           InkWell(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const FlightAll()),
//               );
//             },
//             child: Container(
//               padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15)),
//               decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 223, 80, 55),
//                   borderRadius: BorderRadius.circular(AppLayout.getWidth(14))),
//               child: Center(
//                 child: Text(
//                   "Search Flight",
//                   style: Styles.textStyle.copyWith(color: Colors.white),
//                 ),
//               ),
//             ),
//           ),
//           Gap(AppLayout.getHeight(20)),
//           const TwoHeader(text_one: "Upcoming Flights", text_two: "View all"),
//           Gap(AppLayout.getHeight(15)),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 height: AppLayout.getHeight(400),
//                 width: size.width * 0.42,
//                 padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(15), horizontal: AppLayout.getHeight(15)),
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
//                     boxShadow: [BoxShadow(blurRadius: 1, spreadRadius: 1, color: Colors.grey.shade200)]),
//                 child: Column(
//                   children: [
//                     Container(
//                       height: AppLayout.getHeight(190),
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
//                           image: const DecorationImage(image: AssetImage("assets/images/sit.jpg"), fit: BoxFit.cover)),
//                     ),
//                     Gap(AppLayout.getHeight(12)),
//                     Text(
//                       "Hurry! Get a 20% discount for early flight bookings. Don't miss this opportunity! Book now and save on your upcoming travel.",
//                       style: Styles.headStyle3,
//                     ),
//                   ],
//                 ),
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     height: AppLayout.getHeight(174),
//                     width: size.width * 0.44,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(AppLayout.getHeight(18)), color: const Color(0xff3ab8b8)),
//                     padding:
//                         EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15)),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Discount \nfor Survey",
//                           style: Styles.headStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
//                         ),
//                         Gap(AppLayout.getHeight(10)),
//                         Text(
//                           "Take the survey about our services and get dicount",
//                           style: Styles.textStyle.copyWith(fontSize: 18, color: Colors.white),
//                         )
//                       ],
//                     ),
//                   ),
//                   Gap(AppLayout.getHeight(20)),
//                   Container(
//                     height: AppLayout.getHeight(200),
//                     width: size.width * 0.44,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(AppLayout.getHeight(18)), color: Colors.orange),
//                     padding:
//                         EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15)),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Excellent \nServices",
//                           style: Styles.headStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
//                         ),
//                         Gap(AppLayout.getHeight(10)),
//                         Text(
//                           "our airline delivers one of the best services in the aviation industry .",
//                           style: Styles.textStyle.copyWith(fontSize: 18, color: Colors.white),
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
