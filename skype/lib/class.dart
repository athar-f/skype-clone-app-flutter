class massage{
  String sms;
  String image;
  String?description;

  massage({required this.sms, required this.image, this.description})
{} List<massage> massagedata=[
  massage(sms:'Apple' , image: 'assets/apple.jpeg',description: 'Apple is an eatable fruit and its very delicious and enrich with vitamens'),
  massage(sms:'Banana' , image: 'assets/banana.jpeg',description: 'Banana is an eatable fruit and its very delicious and enrich with vitamens'),
  massage(sms:'Grapes' , image: 'assets/grapes.jpeg',description: 'Grapes is an eatable fruit and its very delicious and enrich with vitamens'),
  massage(sms:'Mango' , image: 'assets/mango.jpeg',description: 'Mango is an eatable fruit and its very delicious and enrich with vitamens'),
  massage(sms:'Strawberry' , image: 'assets/strawbery.jpeg',description: 'Strawberry is an eatable fruit and its very delicious and enrich with vitamens'),
  ]; 
}