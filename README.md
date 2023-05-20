# multi-agent

This code is for the simulation results regarding the paper [A].

There exist two parts.

First part is for the distributed estimation of network size, i.e., total number of agent in network.

In this part, we present three estimation results, obtained by the proposed algorithm in Section 3.1 of [A] and other algorithms including the Initial Condition Averaging Method (IAM, [B]) and Order Statistics Method (OSM, [C]).

Second parti is for the distributed estimation of PageRank scores.

In this part, we present three estimation results, obtained by the proposed algorithm in Section 3.2 of [A] and other algorithms including the Randomized Algorith (RA, [D]), and Synchronous Algorithm based on New Interpretation (SANI, [E]).

If you run the file "RunAll.m", then you can get all the simulation results.



References

[A] J. W. Kim, J. G. Lee, D. Lee, and H. Shim, "A design method of distributed algorithms via discrete-time Blended dynamics theorem," submitted to Automatica, under review, available at arXiv preprint arXiv:2210.05142

[B] I. Shames, T. Charalambous, C. N. Hadjicostis, and M. Johansson, "Distributed network size estimation and average degree estimation and control in networks isomorphic to directed graphs", in Proceedings of the Allerton Conference on Communication, Control, and Computing, pp. 1885--1892, 2012.

[C] D. Varagnolo, G. Pillonetto, and L. Schenato, "Distributed cardinality estimation in anonymous networks," IEEE Transactions on Automatic Control}, vol. 59, no. 3, pp. 645-659, 2014.

[D] H. Ishii and R. Tempo, "Distributed randomized algorithms for the PageRank computation," IEEE Transactions on Automatic Control}, vol. 55, no. 9, pp. 1987-2002, 2010.

[E] A. Suzuki and H. Ishii, "Distributed randomized algorithms for PageRank based on a novel interpretation," in Proceedings of the American Control Conference, pp. 472--477, 2018.
