# CREATE DEMO.JS FILE
# docker run --rm -v $(pwd):/src -u $(id -u):$(id -g) emscripten/emsdk emcc  lib/demo.c -s WASM=1 -o public/demo.js

# CREATE A WASM HTML FILE
# docker run --rm -v $(pwd):/src -u $(id -u):$(id -g) emscripten/emsdk emcc  lib/demo.c -s WASM=1 -o public/demo.html

# CREATE A WASM MODULE
# docker run --rm -v $(pwd):/src -u $(id -u):$(id -g) emscripten/emsdk emcc  lib/demo.c -s WASM=1 -o public/demo.wasm

# CREATE SIDE MODULES (WASM) FOR EACH MODULE
# docker run --rm -v $(pwd):/src -u $(id -u):$(id -g) emscripten/emsdk emcc  lib/demo.c -s WASM=1 -s SIDE_MODULE=1 -o public/demo.wasm

# OPTIMIZE WASM MODULE
# LEVEL OF OPTIMIZE 1 - OPT, 2 - OPT, 3 - OPT,
#docker run --rm -v $(pwd):/src -u $(id -u):$(id -g) emscripten/emsdk emcc  lib/demo.c -s WASM=1 -o public/demo.wasm -O3

# JAVASCRIPT CLOSURE WASM
#docker run --rm -v $(pwd):/src -u $(id -u):$(id -g) emscripten/emsdk emcc  lib/demo.c -s WASM=1 -o public/demo.wasm -clojure

# POST READY JAVASCRIPT COMPILATION
# docker run --rm -v $(pwd):/src -u $(id -u):$(id -g) emscripten/emsdk emcc  lib/demo.c -s WASM=1 --post-js public/ready.js -o public/demo.js


# PRE READY JAVASCRIPT COMPILATION
# docker run --rm -v $(pwd):/src -u $(id -u):$(id -g) emscripten/emsdk emcc  lib/demo.c -s WASM=1 --pre-js public/ready.js -o public/demo.js



# EXPORTED FUNCTIONS
# docker run --rm -v $(pwd):/src -u $(id -u):$(id -g) emscripten/emsdk emcc  lib/demo.c -s WASM=1 -s EXPORTED_FUNCTIONS="['_getNumber']" -o public/demo.js


# EXPORTED FUNCTIONS and main function
# docker run --rm -v $(pwd):/src -u $(id -u):$(id -g) emscripten/emsdk emcc  lib/demo.c -s WASM=1 -s EXPORTED_FUNCTIONS="['_getNumber','_main']" -o public/demo.js


# EXPORTED FUNCTIONS/ main function and functions with arguments 
# docker run --rm -v $(pwd):/src -u $(id -u):$(id -g) emscripten/emsdk emcc  lib/demo.c -s WASM=1 -s EXPORTED_FUNCTIONS="['_getNumber','_main','_getDoubleNumber']" -o public/demo.js


# EXPORTED FUNCTIONS/ main function and functions with arguments add greet function
# docker run --rm -v $(pwd):/src -u $(id -u):$(id -g) emscripten/emsdk emcc  lib/demo.c -s WASM=1 -s EXPORTED_FUNCTIONS="['_getNumber','_main','_getDoubleNumber','_greet']" -o public/demo.js


# EXPORTED FUNCTIONS/ main function and functions with arguments add greet function with agruments
docker run --rm -v $(pwd):/src -u $(id -u):$(id -g) emscripten/emsdk emcc  lib/demo.c -s WASM=1 -s EXPORTED_FUNCTIONS="['_getNumber','_main','_getDoubleNumber','_greet','_greetWithName']" -o public/demo.js

