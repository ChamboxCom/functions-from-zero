from hello import add, subtract


def test_add():
    assert 2 == add(1, 1)


def test_subtract():
    assert 1 == subtract(2, 1)
