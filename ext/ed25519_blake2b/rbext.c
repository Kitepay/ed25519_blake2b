#include <ruby/ruby.h>
#include <ruby/encoding.h>
#include "ed25519.h"

VALUE cEd25519_Blake2b;

VALUE ed25519_blake2b_public_key(VALUE self, VALUE rbSecret_key) {
  Check_Type(rbSecret_key, T_STRING);
  if (RSTRING_LEN(rbSecret_key) != 32) {
    rb_raise(rb_eArgError, "The secret key must be 32 bytes in length");
    return Qnil;
  }

  unsigned char *secret_key = RSTRING_PTR(rbSecret_key);

  ed25519_public_key public_key;
  ed25519_publickey(secret_key, public_key);

  return rb_str_new(public_key, 32);
}

void Init_ed25519_blake2b() {
  cEd25519_Blake2b = rb_define_module("Ed25519Blake2b");
  rb_define_singleton_method(cEd25519_Blake2b, "public_key", ed25519_blake2b_public_key, 1);
}
