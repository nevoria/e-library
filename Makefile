conan_d:
	cd build && conan install .. -s build_type=Debug --output-folder=. --build missing -s compiler.cppstd=17

conan_r:
	cd build && conan install .. -s build_type=Release --output-folder=. --build missing -s compiler.cppstd=17
