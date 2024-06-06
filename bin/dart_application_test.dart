import 'dart:math';

void main(List<String> arguments) {
  execute([1, 0, 1, 3]);
}

int execute(List<int> arguments) {
  int higher = 0;
  int consolidatedWater = 0;
  for (int i = 1; i < arguments.length; i++) {
    higher = max(arguments[i - 1], higher);
    if (i + 1 < arguments.length && arguments[i + 1] > arguments[i]) {
      continue;
    }
    if (arguments[i] > arguments[i - 1]) {
      int lower = min(higher, arguments[i]);
      int water = 0;
      for (int j = i - 1; j >= 0; j--) {
        if (lower > arguments[j]) {
          water = water + (lower - arguments[j]);
          continue;
        }
        if (arguments[j + 1] > arguments[j]) {
          continue;
        }
        consolidatedWater = consolidatedWater + water;
        break;
      }
    }
  }

  return consolidatedWater;
}
