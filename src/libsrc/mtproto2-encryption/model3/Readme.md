This model is like Model 2, except that encryption functions are made
probabilistic to simulate the randomness added to the messages exchanged
using MTProto 2.0.

The difference with respect to Model 2 matters for some observational
equivalences, which can be obviously falsified when encryption primitives are
deterministic (ProVerif says that they "cannot be proved", of course, but the
trace suggests that they do not hold). Some observational equivalences do not
hold even when probabilistic functions are used, although this is slightly less
trivial.
