from django.test import TestCase

from app.calc import add

class CalcTest(TestCase):

    def test_add_numbers(self):
        """Testing that two numbers are added"""
        self.assertEqual(add(12,9), 21)