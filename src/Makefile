.POSIX:
.SUFFIXES:

MAKEFLAGS += --warn-undefined-variables
SHELL = /bin/sh

LIB     = mtproto2.pvl
LIBDIR  = ./libsrc
# The order of the library files matter: do not change it!
LIBSRC  = $(LIBDIR)/mtproto2-common.pv
LIBSRC += $(LIBDIR)/mtproto2-encryption.pv
LIBSRC += $(LIBDIR)/mtproto2-authorization.pv
LIBSRC += $(LIBDIR)/mtproto2-secret-chat.pv
LIBSRC += $(LIBDIR)/mtproto2-rekeying.pv

$(LIB): $(LIBSRC)
	cat $(LIBSRC) >$@

.PHONY: run
run:    $(LIB)
	time proverif -lib $(LIB) mtproto2-auth-auth.pv
	time proverif -lib $(LIB) mtproto2-auth-secr.pv
	time proverif -lib $(LIB) mtproto2-chat-secr.pv
	time proverif -lib $(LIB) mtproto2-reky-secr.pv

.PHONY: clean
clean:
	-rm -f $(LIB)
	-rm -f *.out
	-rm -f $(LIBDIR)/*.out

# vim: ts=8 sts=8 sw=8
