# -*- coding: utf-8 -*-
cimport cython


cdef class MutableNumber:
    cdef readonly:
        list history
    cpdef get(self, int idx=?)
    cpdef MutableNumber add(self, cython.numeric addend)
    cpdef MutableNumber subtract(self, cython.numeric subtrahend)
    cpdef MutableNumber multiply(self, cython.numeric factor)
    cpdef MutableNumber divide(self, cython.numeric divisor)
