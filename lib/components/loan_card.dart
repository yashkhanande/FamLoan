import 'package:flutter/material.dart';

class LoanCard extends StatelessWidget {
  final String? title;
  final String? status;
  final int? amount;
  const LoanCard({super.key, this.title, this.status, this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.grey.withValues(alpha: 0.3)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey[300],
                  child: Icon(Icons.person_outlined, color: Colors.grey[700]),
                ),
                const SizedBox(width: 8.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title ?? "New Loan",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // Container(
                    //   padding: const EdgeInsets.symmetric(
                    //     horizontal: 6.0,
                    //     vertical: 3.0,
                    //   ),
                    //   decoration: BoxDecoration(
                    //     color: Color(0xff6B7280).withValues(alpha: 0.2),
                    //     borderRadius: BorderRadius.circular(12.0),
                    //     border: Border.all(
                    //       color: Color(0xff6B7280).withValues(alpha: 0.2),
                    //     ),
                    //   ),
                    //   child: Row(
                    //     children: [
                    //       const Icon(
                    //         Icons.circle_outlined,
                    //         size: 12.0,
                    //         color: Colors.white,
                    //       ),
                    //       const SizedBox(width: 8.0),
                    //       const Text(
                    //         "Draft",
                    //         style: TextStyle(
                    //           color: Colors.blueGrey,
                    //           fontSize: 12,
                    //           fontWeight: FontWeight.w500,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6.0,
                        vertical: 3.0,
                      ),
                      decoration: BoxDecoration(
                        color: status == "BORROWING"
                            ? Colors.purple.withValues(alpha: .1)
                            : Colors.green.withValues(alpha: .1),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Text(
                        status ?? '--',
                        style: TextStyle(
                          color: status == "BORROWING"
                              ? Colors.purple
                              : Colors.green,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 2.0),
                    Text(
                      "₹${amount ?? 0}",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(color: Colors.grey.withValues(alpha: 0.3)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(Icons.calendar_month_outlined, color: Colors.grey),
                const SizedBox(width: 8.0),
                const Text(
                  "Next repayment",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 20.0),
                const Text(
                  "₹200",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: 4.0),
                Container(
                  width: 4.0,
                  height: 4.0,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 4.0),
                Text(
                  "Mar 05",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
