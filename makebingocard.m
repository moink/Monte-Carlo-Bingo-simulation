function [card] = makebingocard(sidelength,delta,freespace)
% makes a bingo card of size sidelength x sidelength, with each column i
% randomly choosing sidelength numbers between (i-1)*delta+1 and i*delta,
% with or without a free space in the middle

if ~exist('sidelength','var'), sidelength = []; end
if ~exist('delta','var'),      delta      = []; end
if ~exist('freespace','var'),  freespace  = []; end

[sidelength,delta,freespace] = ...
    bingocarddefaults(sidelength,delta,freespace);

card = zeros(sidelength);
for i=1:sidelength
  rp = randperm(delta);
  card(:,i) = delta*(i-1)+rp(1:sidelength)';
end
if freespace
  card((sidelength+1)/2, (sidelength+1)/2) = 0;
end
