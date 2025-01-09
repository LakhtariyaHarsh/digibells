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
                      '• Product category selection: Allows users to select the product category they intend to sell in.'),
                  bulletPoint(
                      '• Product price input: Enter the selling price of the product.'),
                  bulletPoint(
                      '• Fee calculation: Calculates various Amazon seller fees based on product category and price.'),
                  bulletPoint(
                      '• Profit margin estimation: Provides an estimated profit margin after deducting all applicable fees.'),
                ],
              ),
              SizedBox(height: 16.0),
              AutoSizeText(
                'Benefits of Using an Amazon Seller Calculator India',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
              ),
              SizedBox(height: 8.0),
              AutoSizeText(
                'Utilizing an Amazon seller calculator India offers several advantages:',
                style: TextStyle(fontSize: 16.0),
                maxLines: 3,
              ),
              SizedBox(height: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  bulletPoint(
                      '• Accurate profit estimation: Helps sellers accurately estimate their profit margins and make informed pricing decisions'),
                  bulletPoint(
                      '• Reduced financial risks: Enables sellers to identify potential financial risks associated with selling on Amazon India'),
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
                'How to Use an Amazon Seller Calculator India',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
              ),
              SizedBox(height: 8.0),
              AutoSizeText(
                'Using an Amazon seller calculator India is straightforward:',
                style: TextStyle(fontSize: 16.0),
                maxLines: 3,
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
                'Amazon Seller Fees Calculator India',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
              ),
              SizedBox(height: 8.0),
              AutoSizeText(
                'Amazon India charges various fees to sellers, including:',
                style: TextStyle(fontSize: 16.0),
                maxLines: 3,
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
                      "• Storage fees: Fees for storing products in Amazon's fulfillment centers, based on product dimensions and storage time"),
                  bulletPoint(
                      '• Other fees: Additional fees may apply depending on the fulfillment method, product category, and other factors'),
                ],
              ),
              SizedBox(height: 16.0),
              AutoSizeText(
                'Amazon Kitna Milega Calculator',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
              ),
              SizedBox(height: 8.0),
              AutoSizeText(
                '"Amazon Kitna Milega" is a Hindi phrase that translates to "How much will I get from Amazon?" This phrase is often used by aspiring Amazon sellers to inquire about their potential earnings. An Amazon seller calculator India can help answer this question by providing an estimated profit margin based on product category, price, and applicable fees.',
                style: TextStyle(fontSize: 16.0),
                maxLines: 3,
              ),
              SizedBox(height: 16.0),
              AutoSizeText(
                'Amazon Pricing Calculator India',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
              ),
              SizedBox(height: 8.0),
              AutoSizeText(
                'An Amazon pricing calculator India helps sellers determine the optimal price for their products by considering various factors, including:',
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
                      "• Amazon fees: The various fees charged by Amazon India"),
                  bulletPoint(
                      '• Demand and supply: The market demand for the product and the availability of similar products'),
                ],
              ),
              SizedBox(height: 16.0),
              AutoSizeText(
                'Amazon Seller Price Calculator',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
              ),
              SizedBox(height: 8.0),
              AutoSizeText(
                'An Amazon seller price calculator is an essential tool for sellers to determine the right price for their products, ensuring profitability while maintaining competitiveness.',
                style: TextStyle(fontSize: 16.0),
                maxLines: 3,
              ),
              SizedBox(height: 16.0),
              AutoSizeText(
                'Conclusion',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
              ),
              SizedBox(height: 8.0),
              AutoSizeText(
                "An Amazon seller calculator India is an invaluable resource for sellers to navigate the complexities of Amazon India's fee structure and make informed pricing decisions. By understanding and factoring in these fees, sellers can maximize their profits and achieve long-term success on the platform.",
                style: TextStyle(fontSize: 16.0),
                maxLines: 3,
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
