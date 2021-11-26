build:
  cargo build
  (cd examples/helloworld && cargo build)

helloworld: build
  php -dextension=$(pwd)/examples/helloworld/target/debug/libhelloworld.dylib -a
