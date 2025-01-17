import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';

class Amazonpageintro extends StatefulWidget {
  final String name;
  const Amazonpageintro({super.key, required this.name});

  @override
  State<Amazonpageintro> createState() => _AmazonpageintroState();
}

class _AmazonpageintroState extends State<Amazonpageintro> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        color: Color(0xffd1edff),
        elevation: 8.0,
        margin: EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                '${widget.name} Seller Calculator India: A Comprehensive Guide to Understanding ${widget.name} Seller Fees and Profitability',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              AutoSizeText(
                'Introduction',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              AutoSizeText(
                'The Indian e-commerce market is booming, and ${widget.name} India is at the forefront of this growth. '
                'With millions of active customers, ${widget.name} India presents a lucrative opportunity for businesses to sell their products online. '
                'However, as an ${widget.name} seller, it\'s crucial to understand the various fees and costs involved in selling on the platform to ensure profitability. '
                'This is where an ${widget.name} seller calculator India comes in handy.',
                style: TextStyle(fontSize: 16.0),
                maxLines: 6,
              ),
              SizedBox(height: 16.0),
              AutoSizeText(
                'What is an ${widget.name} Seller Calculator India?',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              AutoSizeText(
                'An ${widget.name} seller calculator India is a tool that helps sellers estimate their potential profits by taking into account the various fees and costs associated with selling on ${widget.name} India. '
                'These fees include referral fees, closing fees, shipping and handling fees, storage fees, and other miscellaneous fees. By factoring in these fees, sellers can determine their net profit margin and make informed pricing decisions.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              AutoSizeText(
                'Key Features of an ${widget.name} Seller Calculator India',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              AutoSizeText(
                'A comprehensive ${widget.name} seller calculator India typically includes the following features:',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  bulletPoint(
                      '• Product category selection: Allows users to select the product category they intend to sell in.'),
                  bulletPoint(
                      '• Product price input: Enter the selling price of the product.'),
                  bulletPoint(
                      '• Fee calculation: Calculates various ${widget.name} seller fees based on product category and price.'),
                  bulletPoint(
                      '• Profit margin estimation: Provides an estimated profit margin after deducting all applicable fees.'),
                ],
              ),
              SizedBox(height: 16.0),
              AutoSizeText(
                'Benefits of Using an ${widget.name} Seller Calculator India',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              AutoSizeText(
                'Utilizing an ${widget.name} seller calculator India offers several advantages:',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  bulletPoint(
                      '• Accurate profit estimation: Helps sellers accurately estimate their profit margins and make informed pricing decisions'),
                  bulletPoint(
                      '• Reduced financial risks: Enables sellers to identify potential financial risks associated with selling on ${widget.name} India'),
                  bulletPoint(
                      '• Enhanced profitability: Guides sellers towards pricing strategies that maximize profitability'),
                  bulletPoint(
                      '• Competitive pricing: Empowers sellers to price their products competitively while maintaining profitability'),
                  bulletPoint(
                      '• Improved business decisions: Provides valuable insights for making informed business decisions'),
                ],
              ),
              SizedBox(height: 16.0),
              AutoSizeText(
                'How to Use an ${widget.name} Seller Calculator India',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              AutoSizeText(
                'Using an ${widget.name} seller calculator India is straightforward:',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  bulletPoint(
                      '1. Select product category: Choose the product category that best matches your product'),
                  bulletPoint(
                      '2. Enter product price: Input the selling price of your product'),
                  bulletPoint(
                      '3. Calculate fees and profit: Click the calculation button to view the estimated fees and profit margin'),
                ],
              ),
              SizedBox(height: 16.0),
              AutoSizeText(
                '${widget.name} Seller Fees Calculator India',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              AutoSizeText(
                '${widget.name} India charges various fees to sellers, including:',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  bulletPoint(
                      "• Referral fees: A percentage of the product's selling price, ranging from 2% to 17%"),
                  bulletPoint(
                      "• Closing fees: A fixed fee based on the product's price range, starting at ₹5"),
                  bulletPoint(
                      '• Shipping and handling fees: Fees for packaging, shipping, and handling orders, varying based on product weight and dimensions'),
                  bulletPoint(
                      "• Storage fees: Fees for storing products in ${widget.name}'s fulfillment centers, based on product dimensions and storage time"),
                  bulletPoint(
                      '• Other fees: Additional fees may apply depending on the fulfillment method, product category, and other factors'),
                ],
              ),
              SizedBox(height: 16.0),
              AutoSizeText(
                '${widget.name} Kitna Milega Calculator',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              AutoSizeText(
                '"${widget.name} Kitna Milega" is a Hindi phrase that translates to "How much will I get from ${widget.name}?" This phrase is often used by aspiring ${widget.name} sellers to inquire about their potential earnings. An ${widget.name} seller calculator India can help answer this question by providing an estimated profit margin based on product category, price, and applicable fees.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              AutoSizeText(
                '${widget.name} Pricing Calculator India',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              AutoSizeText(
                'An ${widget.name} pricing calculator India helps sellers determine the optimal price for their products by considering various factors, including:',
                style: TextStyle(fontSize: 16.0),
                maxLines: 3,
              ),
              SizedBox(height: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  bulletPoint(
                      "• Product cost: The actual cost of acquiring or manufacturing the product"),
                  bulletPoint(
                      "• Desired profit margin: The target profit margin sellers aim to achieve"),
                  bulletPoint(
                      '• Competitive pricing: The prices of similar products offered by other sellers'),
                  bulletPoint(
                      "• ${widget.name} fees: The various fees charged by ${widget.name} India"),
                  bulletPoint(
                      '• Demand and supply: The market demand for the product and the availability of similar products'),
                ],
              ),
              SizedBox(height: 16.0),
              AutoSizeText(
                '${widget.name} Seller Price Calculator',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              AutoSizeText(
                'An ${widget.name} seller price calculator is an essential tool for sellers to determine the right price for their products, ensuring profitability while maintaining competitiveness.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              AutoSizeText(
                'Conclusion',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              AutoSizeText(
                "An ${widget.name} seller calculator India is an invaluable resource for sellers to navigate the complexities of ${widget.name} India's fee structure and make informed pricing decisions. By understanding and factoring in these fees, sellers can maximize their profits and achieve long-term success on the platform.",
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: RichText(
            text: TextSpan(
              style: GoogleFonts.poppins(
                fontSize: 16.0,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: text.split(':').first + ': ',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: text.split(':').length > 1
                      ? text.split(':').sublist(1).join(':').trim()
                      : '',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
