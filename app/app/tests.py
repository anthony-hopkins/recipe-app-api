"""
Sample tests
"""
from django.test import SimpleTestCase
from app import calc

class CalcTests(SimpleTestCase):
    """Test calc module"""

    def test_add_numbers(self):
        res = calc.add(5, 10)
        self.assertEqual(res, 15)

    def test_subtract_numbers(self):
        res = calc.subtract(5, 10)
        self.assertEqual(res, 5)
