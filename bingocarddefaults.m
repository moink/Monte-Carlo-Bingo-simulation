function [sidelength,delta,freespace] = bingocarddefaults(...
    sidelength,delta,freespace)
% Default values: sidelength=5, delta=3*sidelength, freespace=1

if ~exist('sidelength', 'var') || isempty(sidelength)
  sidelength = 5;
end
if ~exist('delta', 'var') || isempty(delta)
  delta = 3*sidelength;
end
if ~exist('freespace', 'var') || isempty(freespace)
  freespace = mod(sidelength, 2);
end
if delta<sidelength
  error('Second argument must be >= first argument')
end
if freespace && ~mod(sidelength, 2)
  error('Freespace only allowed with odd-sized cards')
end
