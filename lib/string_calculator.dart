class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    final (delimiter, numbersToProcess) = _parseDelimiter(numbers);
    final normalizedInput = numbersToProcess.replaceAll('\n', delimiter);
    final parts = normalizedInput.split(delimiter);
    return parts.map(int.parse).reduce((a, b) => a + b);
  }

  (String, String) _parseDelimiter(String input) {
    if (input.startsWith('//')) {
      final delimiterEndIndex = input.indexOf('\n');
      final delimiter = input.substring(2, delimiterEndIndex);
      final numbers = input.substring(delimiterEndIndex + 1);
      return (delimiter, numbers);
    }
    return (',', input);
  }
}

