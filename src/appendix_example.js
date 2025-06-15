
console.log("hello")

function min(arr) {
  if (arr.length === 0) {
    throw new Error("Array must not be empty");
  }
  let minIndex = 0;
  for (let i = 1; i < arr.length; i++) {
    if (arr[i] < arr[minIndex]) {
      minIndex = i;
    }
  }
  return arr[minIndex];
}

console.log(min([1, 2, -1, 10]));
