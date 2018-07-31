#include <ruby/ruby.h>
#include <ruby/encoding.h>
#include "ed25519.h"

VALUE cEd25519_Blake2b;

VALUE ed25519_blake2b_public_key(VALUE self, VALUE secret_key) {
  ed25519_public_key public_key;
  int length;
  ed25519_publickey(StringValueCStr(secret_key), public_key);

  return rb_str_new2((unsigned char *) public_key);
}

void Init_ed25519_blake2b() {
  cEd25519_Blake2b = rb_define_module("Ed25519Blake2b");
  rb_define_singleton_method(cEd25519_Blake2b, "public_key", ed25519_blake2b_public_key, 1);
}
