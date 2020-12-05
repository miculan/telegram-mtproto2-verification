# Verification of MTProto 2.0 in ProVerif

**TL;DR**

1. Install ProVerif 2.01 or later.
2. Make sure that `proverif` is in your `PATH`.
3. Execute:

    ```sh
    make
    make run
    ```

4. Go take a coffee or two. Then go for dinner. 
5. Check the results!


## Library files

The files in the `libsrc` folder contain the code that formalizes the protocols:

- `mtproto2-common`: common declarations (RSA encryption, hash functions, etc.);

- `mtproto2-encryption`: MTProto 2.0's encryption scheme.

- `mtproto2-authorization`: the authorization protocol.

- `mtproto2-secret-chat`: the secret chat protocol.

- `mtproto2-rekeying`: the re-keying protocol (not refactored yet!).

To use these files, they must be concatenated into a single `mtproto2.pvl` file
by running `make`.


## Queries

The files in the `src` folder contain the code that verifies the following
security properties:

- `mtproto2-auth-auth.pv`: mutual authentication in the authorization protocol.
- `mtproto2-auth-secr.pv`: secrecy of client-server communication.
- `mtproto2-secr-secr.pv`: secrecy, authentication and integrity in secret chats.
- `mtproto2-reky.pv`: secrecy, authentication and integrity for re-keying.

These files may be run with `make run` or with a command like the following:

```sh
proverif -lib mtproto2.pvl mtproto2-SOMETHING.pv
```

