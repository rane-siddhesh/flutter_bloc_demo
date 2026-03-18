import 'package:bloc_demo/models/userdetails/bank_details_model.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key, required this.model});

  final BankDetailsModel model;

  String getFormattedCardNumber(String num) {
    final buffer = StringBuffer();
    for (int i = 0; i < num.length; i++) {
      buffer.write(num[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 4 == 0 && nonZeroIndex != num.length) {
        buffer.write(' ');
      }
    }

    return buffer.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(alignment: Alignment.topLeft, child: Text("Card Details")),
        SizedBox(height: 10),
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xff1e1a19),
            borderRadius: BorderRadius.circular(35.0),
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.credit_card_outlined,
                  color: Color(0xffaaaaaa),
                ),
              ),
              SizedBox(height: 50),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  getFormattedCardNumber(model.cardNumber!),
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Card Holder",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      SizedBox(height: 2),
                      Text(
                        "Siddhesh Rane",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Card Expiry",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      SizedBox(height: 2),
                      Text(
                        model.cardExpire!,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
