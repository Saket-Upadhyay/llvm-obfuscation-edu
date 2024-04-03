//
// Created by Saket Upadhyay on 3/18/24.
//

#include <iostream>

// Function to perform addition
int Add(int a, int b) {

    return a + b;
}

// Function to perform subtraction
int Subtract(int a, int b) {

    return std::max(a, b) - std::min(a, b);
}

// Function to perform binary AND
int binaryAND(int a, int b) {
    return a & b;
}

// Function to perform binary OR
int binaryOR(int a, int b) {
    return a | b;
}

// Function to perform binary OR
int binaryXOR(int a, int b) {
    return a ^ b;
}

int main(int argc, char **argv) {

    if (argc != 3) {
        exit(-1);
    }

    int num1 = atoi(argv[1]);
    int num2 = atoi(argv[2]);
    std::cout << "Enter two binary numbers: ";


    std::cout << "Addition: " << Add(num1, num2) << std::endl;
    std::cout << "Addition: " << Add(num1, num2) << std::endl;
    std::cout << "Addition: " << Add(num1, num2) << std::endl;
    std::cout << "Addition: " << Add(num1, num2) << std::endl;
    std::cout << "Subtraction: " << Subtract(num1, num2) << std::endl;
    std::cout << "Binary AND: " << binaryAND(num1, num2) << std::endl;
    std::cout << "Binary OR: " << binaryOR(num1, num2) << std::endl;
    std::cout << "Binary XOR: " << binaryXOR(num1, num2) << std::endl;
    std::cout << "Binary XOR: " << binaryXOR(num1, num2) << std::endl;

    return 0;
}
