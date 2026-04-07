# test_demo.py - Sample test file for neotest demo

def add_numbers(a, b):
    """Simple function to add two numbers"""
    return a + b

def divide_numbers(a, b):
    """Simple function to divide two numbers"""
    if b == 0:
        raise ValueError("Cannot divide by zero")
    return a / b

# Test functions
def test_add_positive_numbers():
    """Test adding positive numbers"""
    result = add_numbers(2, 3)
    assert result == 5

def test_add_negative_numbers():
    """Test adding negative numbers"""
    result = add_numbers(-2, -3)
    assert result == -5

def test_divide_normal():
    """Test normal division"""
    result = divide_numbers(10, 2)
    assert result == 5.0

def test_divide_by_zero():
    """Test division by zero raises exception"""
    try:
        divide_numbers(10, 0)
        assert False, "Should have raised ValueError"
    except ValueError:
        pass  # Expected

def test_failing_example():
    """This test will fail intentionally"""
    result = add_numbers(2, 2)
    assert result == 5  # Wrong! Should be 4

class TestCalculator:
    """Test class example"""

    def test_class_add(self):
        result = add_numbers(1, 1)
        assert result == 2

    def test_class_divide(self):
        result = divide_numbers(8, 4)
        assert result == 2.0