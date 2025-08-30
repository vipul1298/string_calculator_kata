class StringCalculator {
  int add(String numbers){
   if(numbers.isEmpty) return 0;
   if(!numbers.contains(',')) return int.parse( numbers);
   final tokens = numbers.split(RegExp(r'[,\n]'));
   return tokens.map((int.parse)).reduce((a,b) => a+b);

  }
}