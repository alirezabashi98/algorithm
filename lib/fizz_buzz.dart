void main() {
  for (var i = 1; i <= 100; i++) {
    print(
        '$i ${isMultiple(i, 2) ? 'fizz' : ''}${isMultiple(i, 5) ? 'buzz' : ''}');
  }
}
bool isMultiple(int number, int multiple) => number % multiple == 0;

/// String isMultiple(int number, int multiple,String message){
//   if(number % multiple == 0) return message;
//   return '';
// }