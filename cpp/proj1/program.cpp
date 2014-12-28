#include <iostream>

extern "C" void add(int*, int, int);
extern "C" void subtract(int*, int, int);

int main()
{
	std::cout << "[+] adding or [-] subtracting? ";
	char s = 0;
	std::cin >> s;
	std::cout << "a, b = ";
	int result = 0, a = 0, b = 0;
	std::cin >> a >> b;
	if (s == '+')
	{	
		add(&result, a, b);
	} else if (s == '-')
	{
		subtract(&result, a, b);
	}
	std::cout << "a " << s << " b = " << result << "\n";
	return 0;
}
