class StringCalculator {
  int add(String numbers){
   if(numbers.isEmpty) return 0;
   String delimiters = r'[,\n]';
   String nums = numbers;
   if(numbers.startsWith('//')){
    final match =RegExp(r'^//(.)\n(.*)').firstMatch(numbers);
   delimiters = '[${RegExp.escape(match!.group(1)!)}]';
      nums = match.group(2)!;
   }
   final tokens = nums.split(RegExp(delimiters));
   final parsedNumbers = tokens.map(int.parse).toList();
   final negatives = parsedNumbers.where((n) => n < 0).toList();
   if(negatives.isNotEmpty){
    throw Exception('negatives not allowed: ${negatives.join(', ')}');
   }
   return parsedNumbers.reduce((a,b) => a+b);

  }
}