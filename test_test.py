import pytest

def inc(x):
	return x + 1

def test_answer():
	#pass
    assert inc(3) == 4
