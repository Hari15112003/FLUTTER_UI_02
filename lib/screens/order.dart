import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:ui_2/custom/back_button.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomBackButton(text: "Order"),
        const SizedBox(
          height: 30,
        ),
        const Text(
          "       Delivery Details",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 30,
        ),
        Expanded(child: CustomStepper(steps: steps))
      ],
    );
  }

  static List<CustomStep> steps = [
    CustomStep(DateTime(2021, 8, 9, 9, 30).millisecondsSinceEpoch,
        "Order Placed", "Your order #212423 was placed for delivery"),
    CustomStep(DateTime(2021, 8, 9, 9, 35).millisecondsSinceEpoch, "Pending",
        "Your order is pending for confirmation. Wil confirmed within 5 minutes"),
    CustomStep(DateTime(2021, 8, 9, 9, 55).millisecondsSinceEpoch, "Confirmed",
        "Your order is confirmed. Will deliver soon within 20 minutes."),
    const CustomStep(
        0, "Processing", "Your product is processing to deliver you on time."),
    const CustomStep(0, "Delivered",
        "Product deliver to you and marked as delivered by customer."),
  ];
}

class CustomStepper extends StatefulWidget {
  final List<CustomStep> steps;
  const CustomStepper({super.key, required this.steps});

  @override
  // ignore: library_private_types_in_public_api
  _CustomStepperState createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  double fullWidth(context) => MediaQuery.of(context).size.width * 0.07;
  double timeWidth(context) => fullWidth(context) / 5;
  double get dividerWidth => 60;
  double tileWidth(context) => fullWidth(context) - timeWidth(context) - 40;
  double get height => 100;

  @override
  Widget build(BuildContext context) {
    return method2();
  }

  Widget method1() {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          timeWidgets(),
          dividers(),
          tiles(),
        ],
      ),
    );
  }

  Widget method2() {
    return ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(8),
        itemCount: widget.steps.length,
        itemBuilder: (context, int index) {
          CustomStep step = widget.steps[index];
          String time = step.createdAt == 0 ? "" : "";
          bool isLast = index == widget.steps.length - 1;
          bool inComplete = widget.steps[index].createdAt == 0;
          // return timeWidget(time);
          return Row(
            children: [
              SizedBox(
                width: timeWidth(context),
                child: timeWidget(time),
              ),
              SizedBox(
                width: dividerWidth,
                child: dividerWidget(isLast, inComplete),
              ),
              Expanded(
                child: tileWidget(step),
              ),
            ],
          );
        });
  }

  Widget timeWidgets() {
    return ListView.builder(
        itemCount: widget.steps.length,
        itemBuilder: (context, int index) {
          CustomStep step = widget.steps[index];
          String time = step.createdAt == 0 ? "" : "";
          return timeWidget(time);
        });
  }

  Widget timeWidget(String time) {
    return Container(
      height: height,
      alignment: Alignment.topCenter,
      child: Text(time,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )),
    );
  }

  Widget dividers() {
    return Container(
      alignment: Alignment.center,
      width: dividerWidth,
      child: ListView.builder(
          itemCount: widget.steps.length,
          itemBuilder: (context, int index) {
            bool isLast = index == widget.steps.length - 1;
            bool inComplete = widget.steps[index].createdAt == 0;
            return dividerWidget(isLast, inComplete);
          }),
    );
  }

  Widget dividerWidget(bool isLast, bool inComplete) {
    return SizedBox(
      height: height,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          if (isLast == false)
            Container(
              width: 1,
              color: Colors.grey.shade300,
            ),
          Container(
            padding: const EdgeInsets.only(bottom: 8),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: inComplete ? Colors.grey : Colors.white,
                  ),
                  color: inComplete ? Colors.white : Colors.green,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.check, color: Colors.white, size: 12)),
          ),
        ],
      ),
    );
  }

  Widget tiles() {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        width: tileWidth(context),
        child: ListView.builder(
            itemCount: widget.steps.length,
            itemBuilder: (context, int index) {
              CustomStep step = widget.steps[index];
              return tileWidget(step);
            }),
      ),
    );
  }

  Widget tileWidget(CustomStep step) {
    return Container(
      height: height,
      alignment: Alignment.topCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            step.title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Text(
              step.description,
              style: TextStyle(
                // maxLines: 3,
                color: Theme.of(context).textTheme.bodySmall?.color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomStep extends Equatable {
  final int createdAt;
  final String title;
  final String description;

  const CustomStep(this.createdAt, this.title, this.description);

  @override
  List<dynamic> get props => [createdAt, title, description];

  @override
  String toString() {
    return props.toString();
  }
}
