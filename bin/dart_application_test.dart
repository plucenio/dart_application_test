import 'dart:math';

void main(List<String> arguments) {
  trap([1, 0, 1, 3]);
}

int trap(List<int> height) {
  int higher = 0;
  int consolidatedWater = 0;
  for (int i = 1; i < height.length; i++) {
    higher = max(height[i - 1], higher);
    if (i + 1 < height.length && height[i + 1] > height[i]) {
      continue;
    }
    if (height[i] > height[i - 1]) {
      int lower = min(higher, height[i]);
      int water = 0;
      for (int j = i - 1; j >= 0; j--) {
        if (lower > height[j]) {
          water = water + (lower - height[j]);
          continue;
        }
        if (height[j + 1] > height[j]) {
          continue;
        }
        consolidatedWater = consolidatedWater + water;
        break;
      }
    }
  }

  return consolidatedWater;
}
