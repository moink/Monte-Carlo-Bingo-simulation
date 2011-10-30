addpath ..
global context

context='won';
  shouldequal('for one row of zeros',
    checkbingocard([
      1 2 3
      0 0 0
      7 8 9
    ]), 1);

  shouldequal('for one column of zeros',
    checkbingocard([
      1 0 3
      0 0 6
      7 0 9
    ]), 1);

  shouldequal('for diagonal 1 of zeros',
    checkbingocard([
      1 0 0
      4 0 6
      0 8 9
    ]), 1);

  shouldequal('for diagonal 2 of zeros',
    checkbingocard([
      0 2 0
      4 0 6
      7 8 0
    ]), 1);

context='not won';
  shouldequal('in an initial state with center zero',
    checkbingocard([
      1 2 3
      4 0 6
      7 8 9
    ]), 0);

  shouldequal('in some insignificant zeroed state',
    checkbingocard([
      1 0 3
      4 0 0
      0 8 0
    ]), 0);
