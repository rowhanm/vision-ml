## Domain adaption
GAN loss = minimize (- Eps [log(D(x))]  -  Ept[log(1-D(G(x)))])
s=source t=target

Adversarial Domain adaptaion - consider an intermediate feature space, a common representation for both domains.

Ms: Xs -> R        Mt: Xt -> R

Train classifire on labeled source data through repr. space.

C: R -> Y

Play a game between the maps and a discriminator.

