void main() {
  var list = [1,2,3,4,5,6,7,8,9,10];
  print(binarySearchDarts(list, 9));
}

/// We can return mid, which specifies the index of that item
String binarySearchDarts(List<int> scores, int target) {
  int low = 0, high = scores.length - 1;

  while(low <= high){
    int mid = (low + high) ~/ 2;
    int midScore  =  scores[mid];

    if(target == midScore){
      return "Target $target found at position $mid. Score: $midScore";
    }else if(target > midScore){
      low = mid+1;
    }else{
      high = mid-1;
    }

  }
  return 'Nothing was found';
}
