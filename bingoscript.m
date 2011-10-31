% Monte Carlo simulation of Bingo games
% Response to http://programmingpraxis.com/2009/02/19/bingo/
% Output is :
%{
averagefor1card =

   41.0610

Elapsed time is 2.788495 seconds.

averagefor500cards =

   12.1090

Elapsed time is 219.205069 seconds.
%}
% Of course, since it's stochastic, answer will vary slightly every time
% Also, elapsed time will depend on the speed of your computer and will also
% vary from run to run.
tic;
averagefor1card = bingoprob(1)
toc
tic;
averagefor500cards = bingoprob(500)
toc
