function [avg,stddev,numturns] = bingoprob(numcards,numruns,...
    sidelength,delta,freespace)

if ~exist('numruns','var'), numruns = 1000; end
if ~exist('numcards','var'), numcards = 1; end

if ~exist('sidelength','var'), sidelength = []; end
if ~exist('delta','var'), delta = []; end
if ~exist('freespace','var'), freespace = []; end

[sidelength,delta,freespace] = ...
    bingocarddefaults(sidelength,delta,freespace);

for i = 1:numruns
  numturns(i) = playbingo(numcards,sidelength,delta,freespace);
end

avg = mean(numturns);
stddev = std(numturns);
