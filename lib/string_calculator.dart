class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    
    final normalizedInput = numbers.replaceAll('\n', ',');
    final parts = normalizedInput.split(',');
    return parts.map(int.parse).reduce((a, b) => a + b);
  }
}

