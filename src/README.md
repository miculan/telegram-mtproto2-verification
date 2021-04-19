# Verification of MTProto 2.0 in ProVerif

**TL;DR**

1. Install ProVerif 2.01 or later.
2. Make sure that `proverif` is in your `PATH`.
3. Execute:

    ```sh
    make
    ./run.sh <query> ... <query>
    ```

  where `<query>` is any of the `mtproto2-query-*` files in the source
  directory. Glob patterns may be used: for instance, to test all the queries:

  ```sh
  ./run.sh *query*
  ```

4. Compare the results with the expected results as indicated in the comments
   inside the query scripts.

**NOTE:** the queries have been tested with ProVerif v2.02pl1.


## Library files

The files in the `libsrc` folder contain the code that formalizes the protocols:

- `mtproto2-common.pvl`: common declarations (types, groups, etc.);

- `mtproto2-authorization.pvl`: model for the authorization protocol.

- `mtproto2-cloud-chat.pvl`: model for cloud chat messages.

- `mtproto2-secret-chat.pvl`: model for the secret chat protocol.

- `mtproto2-rekeying`: model for the re-keying protocol.

- `mtproto2-encryption`: this directory contains models for the cryptographic
  primitives.

To use these files, they must be concatenated into a single `mtproto2.pvl` file
by running `make`. To use a specific model for the cryptographic primitives,
specify the name of the corresponding directory when running `make`, e.g.:

    make ENC=model2

