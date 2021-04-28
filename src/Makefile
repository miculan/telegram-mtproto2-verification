.POSIX:
.SUFFIXES:

MAKEFLAGS += --warn-undefined-variables
SHELL      = /bin/sh

# Choose the model for the cryptographic primitives
ENC       ?= model2

LIB        = mtproto2.pvl
LIBDIR     = ./libsrc

# The order of the library files matters: do not change it!
LIBSRC     = $(LIBDIR)/proverif/cryptoverif.pvl
LIBSRC    += $(LIBDIR)/mtproto2-common.pvl
LIBSRC    += $(LIBDIR)/mtproto2-encryption/$(ENC)/mtproto2-encryption-common.pvl
LIBSRC    += $(LIBDIR)/mtproto2-encryption/$(ENC)/mtproto2-encryption-authorization.pvl
LIBSRC    += $(LIBDIR)/mtproto2-encryption/$(ENC)/mtproto2-encryption-part-i.pvl
LIBSRC    += $(LIBDIR)/mtproto2-encryption/$(ENC)/mtproto2-encryption-part-ii.pvl
LIBSRC    += $(LIBDIR)/mtproto2-authorization.pvl
LIBSRC    += $(LIBDIR)/mtproto2-cloud-chat.pvl
LIBSRC    += $(LIBDIR)/mtproto2-secret-chat.pvl
LIBSRC    += $(LIBDIR)/mtproto2-rekeying.pvl


.PHONY: $(LIB)
$(LIB):
	cat $(LIBSRC) >$@

.PHONY: clean
clean:
	-rm -f $(LIB)
	-rm -f *.out
	-rm -f $(LIBDIR)/*.out
	-rm -f ./html/*

# vim: ts=8 sts=8 sw=8
