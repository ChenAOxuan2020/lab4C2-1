# 1 "getMax.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "getMax.c"
# 1 "getMax.h" 1


int getMax(const int arr_A[], const int size);
# 2 "getMax.c" 2
int getMax(const int arr_A[],const int size) {
 int maxType = 0;
 int timeNow = 0;
 int timeMax = 0;
 for (int i = 0; i < size; i++)
 {
  for (int k = 0; k < size; k++) {
   if (arr_A[i] == arr_A[k]) {
    timeNow++;
   }
  }
  if (timeNow >= timeMax) {
   maxType = arr_A[i];
   timeMax = timeNow;
  }
  timeNow = 0;
 }
 return maxType;
}
