#include <iostream>

int main(int argc, char** argv) {
	std::cout << "Starting App.." << std::endl;

	// This block compiles if RELEASE_BUILD is defined by CMake
	#ifdef RELEASE_BUILD
		std::cout << "" << std::endl;
		std::cout << "-- STATUS: THIS IS RELEASE BUILD --" << std::endl;
	#else
		std::cout << "-- STATUS: THIS IS DEBUG BUILD --" << std::endl;
	#endif

	for (int i = 1; i<argc; ++i) {
		std::cout << "Argument " << i << ": " << argv[i] << std::endl;
	}
	return 0;
}
