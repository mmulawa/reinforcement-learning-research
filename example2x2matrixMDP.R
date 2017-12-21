# Title     : Reinforcement Learning Techniques with R : Programming the Environment | packtpub.com  https://www.youtube.com/watch?v=bei9cAEtdrc
# Objective : training
# Created by: mmulawa
# Created on: 21.12.2017

library(MDPtoolbox)

up <- matrix(c(
1, 0, 0, 0,
0.7, 0.2, 0.1, 0,
0, 0.1, 0.2, 0.7,
0,0,0,1),
nrow=4, ncol=4, byrow=TRUE)

left <- matrix(c(
0.9, 0.1, 0, 0,
0.1, 0.9, 0, 0,
0, 0.7, 0.2, 0.1,
0,0,0.1,0.9),
nrow=4, ncol=4, byrow=TRUE)

down <- matrix(c(
0.3, 0.7, 0, 0,
0, 0.9, 0.1, 0,
0, 0.1, 0.9, 0,
0,0,0.7,0.3),
nrow=4, ncol=4, byrow=TRUE)

right <- matrix(c(
0.9, 0.1, 0, 0,
0.1, 0.2, 0.7, 0,
0, 0, 0.9, 0.1,
0,0,0.1,0.9),
nrow=4, ncol=4, byrow=TRUE)

T <- list(up=up, left=left, down=down, right=right)

R <- matrix(c(
-1,-1,-1,-1,
-1,-1,-1,-1,
-1,-1,-1,-1,
10,10,10,10),
nrow=4, ncol=4, byrow=TRUE)

mdp_check(T, R)

m <- mdp_policy_iteration(P=T, R=R, discount=0.9)

m$policy

names(T)[m$policy]

m$V