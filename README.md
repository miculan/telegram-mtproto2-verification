# Formal verification of Telegram chat protocol MTProto 2.0

## Authors: [Marino Miculan](https://www.dmif.uniud.it/miculan), [Nicola Vitacolonna](https://www.dmif.uniud.it/nicola.vitacolonna) (University of Udine, Italy)

MTProto 2.0 is a suite of cryptographic protocols for instant messaging at the core of the popular Telegram messenger application, which is currently used by more than 400 millions people.
In this work we analyse MTProto 2.0 using ProVerif, a symbolic cryptographic protocol verifier based on the Dolev-Yao model. In particular, we provide a fully automated proof of the soundness of MTProto 2.0's authentication, normal chat, end-to-end encrypted chat, and re-keying mechanisms with respect to several security properties, including authentication, integrity, confidentiality and perfect forward secrecy.
This research proves the formal correctness of MTProto 2.0 in the symbolic model with respect to the considered properties, and it highlights some issues, especially in the re-keying protocol. This model can serve as a reference for implementation and analysis of clients and servers.

Full paper available at https://arxiv.org/abs/2012.03141.

See the Readme in the `src` folder for further details.

Content of dirs:

- `src`: ProVerif sources of the formalization
