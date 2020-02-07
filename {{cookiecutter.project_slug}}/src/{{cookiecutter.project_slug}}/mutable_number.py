# -*- coding: utf-8 -*-
"""Main module."""


class MutableNumber:
    def __init__(self, number):
        self.history = [number]

    def get(self, idx=-1):
        return self.history[idx]

    def add(self, addend):
        number = self.get() + addend
        self.history.append(number)
        return self

    def subtract(self, subtrahend):
        number = self.get() - subtrahend
        self.history.append(number)
        return self

    def multiply(self, factor):
        number = self.get() * factor
        self.history.append(number)
        return self

    def divide(self, divisor):
        number = self.get() / divisor
        self.history.append(number)
        return self
