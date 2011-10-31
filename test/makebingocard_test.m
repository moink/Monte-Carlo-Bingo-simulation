addpath ..
global context

test = 'makebingocard:';

context = [test 'defaults'];
  shouldequal('sidelength is 5', size(makebingocard), [5 5]);

context = [test 'freespace=1'];
card=makebingocard(5,[],1);
  shouldequal('the center is 0', card(3,3), 0);

context = [test 'freespace=0'];
card = makebingocard(5,[],0);
  shouldequal('the center is not 0', card(3,3) == 0, 0);

context = [test 'sidelength=7'];
card = makebingocard(7);
  shouldequal('sidelength is 7', size(card), [7 7]);
  shouldequal('the center is 0', card(4,4), 0);
