import 'package:auto_size_text/auto_size_text.dart';
import 'package:digibells/utills/constant.dart';
import 'package:flutter/material.dart';

class Commendetail extends StatefulWidget {
  const Commendetail({super.key});

  @override
  State<Commendetail> createState() => _CommendetailState();
}

class _CommendetailState extends State<Commendetail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            "Grow Your Alibaba Business with Expert Account Management Services",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          AutoSizeText(
            "If you're selling on Alibaba, you know that managing your account can be a full-time job. Between creating new listings, managing orders, and keeping up with customer inquiries, it can be difficult to find time to grow your business.",
            style: TextStyle(
              fontSize: 16,
              color: black54,
            ),
          ),
          SizedBox(height: 5),
          AutoSizeText(
            "That's where DigiBells comes in. We offer expert Alibaba account management services designed to help you grow your business and increase your sales.",
            style: TextStyle(
              fontSize: 16,
              color: black54,
            ),
          ),
          SizedBox(height: 10),
          AutoSizeText(
            "Why Choose DigiBells?",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          AutoSizeText(
            "Our team of experts has years of experience managing Alibaba accounts for sellers just like you. We'll work with you to create a customized plan that meets your unique needs and helps you achieve your sales goals.",
            style: TextStyle(
              fontSize: 16,
              color: black54,
            ),
          ),
          SizedBox(height: 5),
          AutoSizeText(
            "But that's not all. We'll also help you:",
            style: TextStyle(
              fontSize: 16,
              color: black54,
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    spacing: 10, // Space between rows if wrapping occurs
                    runSpacing: 10, // Space between lines if wrapping occurs
                    children: [
                      for (var text in [
                        "Create new listings and optimize your existing ones to attract more customers",
                        "Manage your orders and ensure that they are fulfilled on time and to your customers' satisfaction",
                        "Respond to customer inquiries in a timely and professional manner",
                        "Identify new growth opportunities and help you expand your product offerings",
                      ])
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.circle,
                              size: 7,
                              color: black54,
                            ),
                            const SizedBox(width: 5),
                            Expanded(
                              child: AutoSizeText(
                                text,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: black54,
                                ),
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ],
              )),
          SizedBox(height: 5),
          AutoSizeText(
            "Our Process",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          AutoSizeText(
            "Our process begins with a thorough analysis of your current Alibaba account and your sales history. We'll identify areas for improvement and create a customized plan to help you achieve your sales goals.",
            style: TextStyle(
              fontSize: 16,
              color: black54,
            ),
          ),
          SizedBox(height: 5),
          AutoSizeText(
            "Next, we'll work with you to create new listings and optimize your existing ones. We'll ensure that your listings are fully optimized with the right keywords, titles, and descriptions, helping you to rank higher in search results and attract more customers.",
            style: TextStyle(
              fontSize: 16,
              color: black54,
            ),
          ),
          SizedBox(height: 5),
          AutoSizeText(
            "We'll also help you manage your orders and ensure that they are fulfilled on time and to your customers' satisfaction. And we'll respond to customer inquiries in a timely and professional manner, helping you to build strong relationships with your customers.",
            style: TextStyle(
              fontSize: 16,
              color: black54,
            ),
          ),
          SizedBox(height: 10),
          AutoSizeText(
            "Why Account Management Matters",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          AutoSizeText(
            "Managing your Alibaba account effectively is essential if you want to grow your business and increase your sales. By working with a team of experts like DigiBells, you can free up more time to focus on growing your business and expanding your product offerings.",
            style: TextStyle(
              fontSize: 16,
              color: black54,
            ),
          ),
          SizedBox(height: 5),
          AutoSizeText(
            "We'll handle the day-to-day management of your Alibaba account, allowing you to focus on the big picture and take your business to the next level.",
            style: TextStyle(
              fontSize: 16,
              color: black54,
            ),
          ),
          AutoSizeText(
            "Our Guarantee",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          AutoSizeText(
            "We're confident in our ability to help you grow your Alibaba business, which is why we offer a satisfaction guarantee. If you're not completely satisfied with our services, we'll work with you to make it right.",
            style: TextStyle(
              fontSize: 16,
              color: black54,
            ),
          ),
          AutoSizeText(
            "Contact Us Today",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          AutoSizeText(
            "Ready to take your Alibaba business to the next level? Contact us today to learn more about our expert account management services.",
            style: TextStyle(
              fontSize: 16,
              color: black54,
            ),
          ),
        ],
      ),
    );
  }
}
