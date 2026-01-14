#!/usr/bin/env python3
"""
Test file for LSP functionality.
This file contains various Python constructs to test LSP features.
"""

import os
import sys
from typing import List, Dict, Optional


class Calculator:
    """A simple calculator class to test LSP features."""

    def __init__(self, name: str) -> None:
        self.name = name
        self.history: List[float] = []

    def add(self, a: float, b: float) -> float:
        """Add two numbers."""
        result = a + b
        self.history.append(result)
        return result

    def divide(self, a: float, b: float) -> Optional[float]:
        """Divide two numbers, handling division by zero."""
        if b == 0:
            return None
        result = a / b
        self.history.append(result)
        return result

    def get_history(self) -> List[float]:
        """Get calculation history."""
        return self.history.copy()


def main() -> None:
    """Main function to demonstrate LSP features."""
    calc = Calculator("Test Calculator")

    # Test autocompletion - try typing calc. and see suggestions
    result1 = calc.add(10, 5)
    result2 = calc.divide(20, 4)

    # Test type hints - hover over variables to see types
    history = calc.get_history()

    print(f"Results: {result1}, {result2}")
    print(f"History: {history}")

    # Intentional error to test diagnostics
    # uncomment the next line to see error highlighting
    # undefined_variable.some_method()


if __name__ == "__main__":
    main()