import 'package:test/test.dart';

import '../bin/dart_application_test.dart';

void main() {
  test('Test 1', () {
    expect(execute([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]), equals(6));
  });

  test('Test 2', () {
    expect(execute([10, 5, 0, 5]), equals(5));
  });

  test('Test 3', () {
    expect(execute([0, 1, 0, 2]), equals(1));
  });

  test('Test 4', () {
    expect(execute([3, 2, 1, 0, 1]), equals(1));
  });

  test('Test 5', () {
    expect(execute([2, 1, 2, 1]), equals(1));
  });

  test('Test 6', () {
    expect(execute([2, 1, 0, 1, 3]), equals(4));
  });

  test('Test 7', () {
    expect(execute([1, 0, 1, 3]), equals(1));
  });

  test('Test 8', () {
    expect(execute([1, 0, 1, 3, 2, 1, 2, 1]), equals(2));
  });

  test('Test 9', () {
    expect(execute([1, 0, 1, 0, 1]), equals(2));
  });

  test('Test 10', () {
    expect(execute([]), equals(0));
  });

  test('Test 11', () {
    expect(execute([1]), equals(0));
  });

  test('Test 12', () {
    expect(execute([0, 2, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]), equals(7));
  });

  test('Test 13', () {
    expect(execute([0, 2, 0, 2, 1, 0, 1, 3, 2, 1, 2, 4]), equals(10));
  });

  test('Test 14', () {
    expect(execute([1, ...List.generate(998, (index) => 0), 1]), equals(998));
  });

  test('Test 15', () {
    expect(execute([4, 2, 0, 3, 2, 5]), equals(9));
  });
}
