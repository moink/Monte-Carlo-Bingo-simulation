addpath ..
global context

context='defaults';
  shouldequal('sidelength is 5',
    size(makebingocard), [5 5]);

  context='defaults,sidelength:odd';
    shouldequal('doesn''t fail; freespace is 0',
      size(makebingocard(6)), [6 6]);

context='validations';
  shouldfail('delta must be >= sidelength',
    (@() makebingocard(5,4)));

context='sidelength=5';
card=makebingocard(5);
  shouldequal('the center is 0',
    card(3,3), 0);

  context='sidelength=5,freespace=0';
  card=makebingocard(5,15,0);
    shouldequal('the center is not 0',
      card(3,3) == 0, 0);

context='sidelength=7';
card=makebingocard(7);
  shouldequal('sidelength is 7',
    size(card), [7 7]);

  shouldequal('the center is 0',
    card(4,4), 0);

context='freespace=1';
  shouldfail('sidelength must be odd',
    (@() makebingocard(6,12,1)));
