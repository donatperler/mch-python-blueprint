# -*- coding: utf-8 -*-
"""A class representing a mutable number."""
import cython


cdef class MutableNumber:

    def __init__(self, number):
        self.history = [number]

    cpdef get(self, int idx=-1):
        return self.history[idx]

    cpdef MutableNumber add(self, cython.numeric addend):
        cdef cython.numeric number = self.get() + addend
        self.history.append(number)
        return self

    cpdef MutableNumber subtract(self, cython.numeric subtrahend):
        cdef cython.numeric number = self.get() - subtrahend
        self.history.append(number)
        return self

    cpdef MutableNumber multiply(self, cython.numeric factor):
        cdef cython.numeric number = self.get() * factor
        self.history.append(number)
        return self

    cpdef MutableNumber divide(self, cython.numeric divisor):
        cdef cython.numeric number = self.get() / divisor
        self.history.append(number)
        return self
