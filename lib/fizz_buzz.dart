void main() {
  print([
    ...Iterable<int>.generate(100, (i) => i + 1)].map((i) {
    String message = '$i ';
    message += (i % 2 == 0) ? 'Fizz' : '';
    message += (i % 5 == 0) ? 'Buzz' : '';
    return message;
  }).join('\n'));
}