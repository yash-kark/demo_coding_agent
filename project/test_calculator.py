from calculator import add, multiply, divide


def test_add():
    assert add(2, 3) == 5


def test_multiply():
    assert multiply(2, 3) == 6


def test_divide():
    assert divide(6, 3) == 2


if __name__ == "__main__":
    test_add()
    test_multiply()
    test_divide()
    print("All tests passed!")
