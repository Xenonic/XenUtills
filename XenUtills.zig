const std = @import("std");

pub fn len(T: type, array: [*:0]T, val: T) T {
    var length: T = 1;
    while (true) {
        if (array[length] == null) {
            val = length;
            return val;
        } else {
            length += 1;
        }
    }
}

const math = struct {
    const matherrors = error{EquationFailed};
    pub fn pthag(T: type, A: T, B: T, C: T) !T {
        A *= A;
        B *= B;
        var number: T = 0;
        var answer: T = undefined;
        while (answer != C) {
            number += 1;
            answer = number * number;
        }
        if (answer == C) {
            C = number;
            return C;
        } else {
            return matherrors.EquationFailed;
        }
    }
    pub fn square(T: type, num: T) T {
        num *= num;
        return num;
    }
    pub fn cube(T: type, num: T) T {
        num *= num;
        num *= num;
    }
    pub fn sqrRoot(T: type, num: T) !T {
        var number: T = 0;
        var answer: T = undefined;
        while (answer != num) {
            number += 1;
            answer = number * number;
        }
        if (answer == num) {
            num = number;
            return num;
        } else {
            return error.EquationFailed;
        }
    }
    pub fn cubeRoot(T: type, num: T) !T {
        var number: T = 0;
        var answer: T = undefined;
        while (answer != num) {
            number += 1;
            answer = number * number;
            answer *= number;
        }
        if (answer == num) {
            num = number;
            return num;
        } else {
            return error.EquationFailed;
        }
    }
};
