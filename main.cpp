#include <iostream>

using namespace std;

extern "C" unsigned long long GCD_ASM(unsigned long long, unsigned long long);

int GCD(unsigned long long a, unsigned long long b) {

	if (a <= 0 || b <= 0) {
		return 0;
	}


	while (b != 0) {
		int LastModulus = b;
		b = a % b;
		a = LastModulus;
	}

	return a;
}

int main() {
	cout << "GDC: " << GCD(110, 210) << endl;
	cout << "GDC_ASM: " << GCD_ASM(110, 210) << endl;
	return 0;
}