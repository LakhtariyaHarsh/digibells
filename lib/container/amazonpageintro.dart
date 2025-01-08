import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Amazonpageintro extends StatefulWidget {
  const Amazonpageintro({super.key});

  @override
  State<Amazonpageintro> createState() => _AmazonpageintroState();
}

class _AmazonpageintroState extends State<Amazonpageintro> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Color(0xffd1edff),
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              'Amazon Seller Calculator India: A Comprehensive Guide to Understanding Amazon Seller Fees and Profitability',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
            ),
            SizedBox(height: 16.0),
            AutoSizeText(
              'Introduction',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
            ),
            SizedBox(height: 8.0),
            AutoSizeText(
              'The Indian e-commerce market is booming, and Amazon India is at the forefront of this growth. '
              'With millions of active customers, Amazon India presents a lucrative opportunity for businesses to sell their products online. '
              'However, as an Amazon seller, it\'s crucial to understand the various fees and costs involved in selling on the platform to ensure profitability. '
              'This is where an Amazon seller calculator India comes in handy.',
              style: TextStyle(fontSize: 16.0),
              maxLines: 6,
            ),
            SizedBox(height: 16.0),
            AutoSizeText(
              'What is an Amazon Seller Calculator India?',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
            ),
            SizedBox(height: 8.0),
            AutoSizeText(
              'An Amazon seller calculator India is a tool that helps sellers estimate their potential profits by taking into account the various fees and costs associated with selling on Amazon India. '
              'These fees include referral fees, closing fees, shipping and handling fees, storage fees, and other miscellaneous fees. By factoring in these fees, sellers can determine their net profit margin and make informed pricing decisions.',
              style: TextStyle(fontSize: 16.0),
              maxLines: 6,
            ),
            SizedBox(height: 16.0),
            AutoSizeText(
              'Key Features of an Amazon Seller Calculator India',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
            ),
            SizedBox(height: 8.0),
            AutoSizeText(
              'A comprehensive Amazon seller calculator India typically includes the following features:',
              style: TextStyle(fontSize: 16.0),
              maxLines: 3,
            ),
            SizedBox(height: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                bulletPoint(
                    'Product category selection: Allows users to select the product category they intend to sell in.'),
                bulletPoint(
                    'Product price input: Enter the selling price of the product.'),
                bulletPoint(
                    'Fee calculation: Calculates various Amazon seller fees based on product category and price.'),
                bulletPoint(
                    'Profit margin estimation: Provides an estimated profit margin after deducting all applicable fees.'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget bulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('• ', style: TextStyle(fontSize: 16.0)),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: text.split(':').first +
                      ': ', // Bold the part before the colon
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: text.split(':').length > 1
                      ? text.split(':').sublist(1).join(':').trim()
                      : '', // Regular text for the rest
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
