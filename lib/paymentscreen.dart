import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:sih_ecopreneurs/paysuccessful.dart';


class PaySuccess extends StatefulWidget {
  const PaySuccess({super.key});

  @override
  State<PaySuccess> createState() => _PaySuccessState();
}

class _PaySuccessState extends State<PaySuccess> {

  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  OutlineInputBorder? border;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();



  void onCreditCardModel(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }


  _showValidDialog(
      BuildContext context,
      ) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            "Valid",
          ),
          content: const Text("Your card successfully valid !!!"),
          actions: [
            TextButton(
                child: const Text(
                  "Ok",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          ],
        );
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(foregroundColor: Colors.black,backgroundColor: Colors.transparent,elevation: 0,
          title: Text('Rohit Sharma'),centerTitle: true,),

        body: Container(
            padding: EdgeInsets.all(15),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,children: [
              SizedBox(height:10),
              Center(child:Text('Select Payment Method',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25))),
              SizedBox(height:20),
              Center(child:Text('Default Payment Method:')),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaySuccessful()));
                  },
                  child: Material(elevation:0,child:Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Image.asset('assets/images/applepay.png')
                  ),)
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaySuccessful()));
                },
                child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/paypal.png')
                ),
              ),
              GestureDetector(onLongPress: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaySuccessful()));
              },child:CreditCardWidget(
                cardNumber: '123456789123',
                expiryDate: '12/12/24',
                cardType: CardType.mastercard,
                isHolderNameVisible: true,
                cardHolderName: 'HeriTech',
                enableFloatingCard: true,
                cvvCode: '191',
                floatingConfig: FloatingConfig(
                  isGlareEnabled: true,
                  isShadowEnabled: true,
                  shadowConfig: FloatingShadowConfig(),
                ),
                showBackView: false, //true when you want to show cvv(back) view
                onCreditCardWidgetChange: (CreditCardBrand brand) {

                }, // Callback for anytime credit card brand is changed
              ),),
              SizedBox(height:20),
              Center(child:Text('Add New Payment Method:')),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      CreditCardForm(
                        formKey: formKey,
                        obscureCvv: true,
                        obscureNumber: true,
                        cardNumber: cardNumber,
                        cvvCode: cvvCode,
                        isHolderNameVisible: true,
                        isCardNumberVisible: true,
                        isExpiryDateVisible: true,
                        cardHolderName: cardHolderName,
                        expiryDate: expiryDate,






                        onCreditCardModelChange: onCreditCardModel,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaySuccessful()));
                            print('valid!');
                          } else {
                            print('invalid!');
                          }
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: const Text(
                            'Add Payment Method',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'halter',
                              fontSize: 14,
                              package: 'flutter_credit_card',
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),

            ]
            )
        )
    );
  }
}

