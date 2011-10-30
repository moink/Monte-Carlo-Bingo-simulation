function card=makebingocard(sidelength,delta,freespace)
%makes a bingo card of size sidelength x sidelength, with each column i
%randomly choosing sidelength numbers between (i-1)*delta+1 and i*delta, 
%with or without a free space in the middle
%
%Default values: sidelength=5, delta=3*sidelength, freespace=1
if nargin<3
    if nargin<2
        if nargin<1
            sidelength=5;
        end
        delta=3*sidelength;
    end
    freespace=mod(sidelength,2);
end

if delta<sidelength
    error('Second argument must be >= first argument')
end
if freespace && ~mod(sidelength,2)
    error('Freespace only allowed with odd-sized cards')
end
card=zeros(sidelength);
for i=1:sidelength
    rp=randperm(delta);
    card(:,i)=delta*(i-1)+rp(1:sidelength)';
end
if freespace
    card((i+1)/2,(i+1)/2)=0;
end