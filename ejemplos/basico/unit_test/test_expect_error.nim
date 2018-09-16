import unittest

suite "Just Testing":
  test "test expected to fail":
    expect AssertionError:
      assert true == false
