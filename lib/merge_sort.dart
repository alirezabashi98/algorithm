void main() {
  List<int> arr = [12, 11, 4, 5, 8, 7,33];

  mergeSort(arr);

  print("لیست مرتب شده: $arr");
}

void mergeSort(List<int> arr) {
  if (arr.length > 1) {
    int mid = arr.length ~/ 2;
    List<int> leftHalf = arr.sublist(0, mid);
    List<int> rightHalf = arr.sublist(mid);

    // بازگشتی بر روی نیمه‌های چپ و راست
    mergeSort(leftHalf);
    mergeSort(rightHalf);

    // ادغام دو نیمه
    merge(arr, leftHalf, rightHalf);
  }
}

void merge(List<int> arr, List<int> left, List<int> right) {
  int i = 0, j = 0, k = 0;

  while (i < left.length && j < right.length) {
    if (left[i] < right[j]) {
      arr[k] = left[i];
      i++;
    } else {
      arr[k] = right[j];
      j++;
    }
    k++;
  }

  while (i < left.length) {
    arr[k] = left[i];
    i++;
    k++;
  }

  while (j < right.length) {
    arr[k] = right[j];
    j++;
    k++;
  }
}
