function numturns=playbingo(numcards,sidelength,delta,freespace)
% plays a single game of bingo with numcards cards of size
% sidelength x sidelength, with each column i randomly choosing sidelength
% numbers between (i-1)*delta+1 and i*delta, with or without a free space in
% the middle

if ~exist('numcards','var'), numcards = 1; end

if ~exist('sidelength','var'), sidelength = []; end
if ~exist('delta','var'),      delta      = []; end
if ~exist('freespace','var'),  freespace  = []; end

[sidelength,delta,freespace] = ...
    bingocarddefaults(sidelength,delta,freespace);

maxnum = sidelength*delta;
callseq = randperm(maxnum);
wins = 0;
numturns = 0;
for i = 1:numcards
  cards{i} = makebingocard(sidelength,delta,freespace);
end
while(~wins)
  numturns = numturns+1;
  for i = 1:numcards
    cards{i} = updatebingocard(cards{i},callseq(numturns));
    wins = wins || checkbingocard(cards{i});
    % Next line: slightly more efficient but awfully inelegant
    % if(wins) break;
    % I could also change the for loop to a while loop and separately
    % increment i, but I also find that inelegant
  end
end
