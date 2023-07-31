import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_app/screens/flights_all.dart';
import 'package:my_app/utils/app_layout.dart';
import 'package:my_app/utils/app_styles.dart';
import 'package:my_app/widgets/tickets_tab.dart';
import 'package:my_app/widgets/two_header.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String fromAirport = '';
  String toAirport = '';
  String departureDate = '';
  String flightClass = '';
  bool isSearch = true;

  void _showDatePicker(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null) {
      setState(() {
        departureDate = pickedDate.toString();
      });
    }
  }

  void _showFlightClassPicker(BuildContext context) {
    List<String> flightClasses = ['Economy Class', 'Business Class', 'First Class'];

    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        height: 200,
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: ListView.builder(
                  itemCount: flightClasses.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Center(child: Text(flightClasses[index])),
                      onTap: () {
                        setState(() {
                          flightClass = flightClasses[index];
                        });
                        Navigator.pop(context);
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _airPortPicker(BuildContext context, String type) {
    List<String> airports = ['Abijan (ABJ)', 'Accra (ACC)', 'Gambia (GMB)', 'FreeTown (FNA)'];

    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        height: 200,
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: ListView.builder(
                  itemCount: airports.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Center(child: Text(airports[index])),
                      onTap: () {
                        if (type == 'from') {
                          setState(() {
                            fromAirport = airports[index];
                          });
                        } else {
                          setState(() {
                            toAirport = airports[index];
                          });
                        }
                        Navigator.pop(context);
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool isFormValid() {
    return fromAirport.isNotEmpty && toAirport.isNotEmpty && departureDate.isNotEmpty && flightClass.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Colors.white, // Apply white background
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getWidth(20)),
        children: [
          Gap(AppLayout.getHeight(35)),
          Text(
            "Book a Flight",
            style: Styles.headStyle1.copyWith(fontSize: AppLayout.getWidth(27)),
          ),
          Gap(AppLayout.getHeight(10)),
          const TicketsTab(left: "One way", right: "Round Trip"),
          Gap(AppLayout.getHeight(15)),
          InkWell(
            onTap: () => _airPortPicker(context, 'from'),
            child: IconText(
              icon: Icons.flight_takeoff,
              text: "From",
              selectedValue: fromAirport,
            ),
          ),
          Gap(AppLayout.getHeight(14)),
          InkWell(
            onTap: () => _airPortPicker(context, 'to'),
            child: IconText(
              icon: Icons.flight_land,
              text: "To",
              selectedValue: toAirport,
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          InkWell(
            onTap: () => _showDatePicker(context),
            child: IconText(
              icon: Icons.calendar_month_outlined,
              text: "Departure Date",
              selectedValue: departureDate,
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          InkWell(
            onTap: () => _showFlightClassPicker(context),
            child: IconText(
              icon: Icons.class_outlined,
              text: "Class",
              selectedValue: flightClass,
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          InkWell(
            onTap: () {
              if (isFormValid()) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FlightAll()),
                );
              } else {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text("Validation Error"),
                    content: Text("Please select all required fields to search for flights."),
                    actions: [
                      ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("OK"),
                      ),
                    ],
                  ),
                );
              }
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15)),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 223, 80, 55),
                borderRadius: BorderRadius.circular(AppLayout.getWidth(14)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 2.0,
                    blurRadius: 5.0,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  "Search Flight",
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          const TwoHeader(text_one: "Upcoming Flights", text_two: "View all"),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(15), horizontal: AppLayout.getHeight(15)),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 78, 129, 218),
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                    boxShadow: [BoxShadow(blurRadius: 1, spreadRadius: 1, color: Colors.grey.shade200)]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                          image: const DecorationImage(image: AssetImage("assets/images/sit.jpg"), fit: BoxFit.cover)),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      "Hurry! Get a 20% discount for early flight bookings. Don't miss this opportunity! Book now and save on your upcoming travel.",
                      style: Styles.headStyle3.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: AppLayout.getHeight(174),
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(18)), color: const Color(0xff3ab8b8)),
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Discount \nfor Survey",
                          style: Styles.headStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Gap(AppLayout.getHeight(10)),
                        Text(
                          "Take the survey about our services and get dicount",
                          style: Styles.textStyle.copyWith(fontSize: 18, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Container(
                    height: AppLayout.getHeight(200),
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(18)), color: Colors.orange),
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Excellent \nServices",
                          style: Styles.headStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Gap(AppLayout.getHeight(10)),
                        Text(
                          "our airline delivers one of the best services in the aviation industry .",
                          style: Styles.textStyle.copyWith(fontSize: 18, color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  final String selectedValue; // New property to hold the selected value

  IconText({
    required this.icon,
    required this.text,
    required this.selectedValue, // Added this property
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey[100], // Apply a decent color
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1.0,
            blurRadius: 3.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: Colors.blue,
                size: 30,
              ),
              Gap(AppLayout.getWidth(15)),
              // Display the selected value if available, otherwise display the default label
              Text(
                selectedValue.isNotEmpty ? selectedValue : text,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios, size: 15),
        ],
      ),
    );
  }
}
