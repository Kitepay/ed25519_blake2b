require 'mkmf'
$CFLAGS += ' -DED25519_CUSTOMHASH -Wall -Wextra -std=c99 -pedantic -Wno-long-long -Wunused-parameter'
create_makefile('ed25519_blake2b')
