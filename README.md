# multi-agent

This code is intended to generate simulation results for the paper [A]. It has two parts.

The first part focuses on the distributed estimation of network size, specifically the total number of agents in the network. We present the estimation result obtained by the proposed algorithm in Section 3.1 of [A]. Additionally, we compare this to those obtained using the Initial Condition Averaging Method (IAM, [B]) and Order Statistics Method (OSM, [C]).

The second part is focused on the distributed estimation of PageRank scores. Here, we present the estimation result obtained by the proposed algorithm in Section 3.2 of [A]. We also compare this to those obtained using the Randomized Algorithm (RA, [D]) and the Synchronous Algorithm based on New Interpretation (SANI, [E]).

By running the file "RunAll.m," you can generate all the simulation results.

References

[A] J. W. Kim, J. G. Lee, D. Lee, and H. Shim, "A design method of distributed algorithms via discrete-time Blended dynamics theorem," submitted to Automatica, under review, available at arXiv preprint arXiv:2210.05142

[B] I. Shames, T. Charalambous, C. N. Hadjicostis, and M. Johansson, "Distributed network size estimation and average degree estimation and control in networks isomorphic to directed graphs", in Proceedings of the Allerton Conference on Communication, Control, and Computing, pp. 1885--1892, 2012.

[C] D. Varagnolo, G. Pillonetto, and L. Schenato, "Distributed cardinality estimation in anonymous networks," IEEE Transactions on Automatic Control}, vol. 59, no. 3, pp. 645-659, 2014.

[D] H. Ishii and R. Tempo, "Distributed randomized algorithms for the PageRank computation," IEEE Transactions on Automatic Control}, vol. 55, no. 9, pp. 1987-2002, 2010.

[E] A. Suzuki and H. Ishii, "Distributed randomized algorithms for PageRank based on a novel interpretation," in Proceedings of the American Control Conference, pp. 472--477, 2018.
