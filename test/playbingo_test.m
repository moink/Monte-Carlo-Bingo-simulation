addpath ..
global context

test = 'playbingo:';

context = [test 'with defaults'];
  shouldequal('numruns < (15 * 5)', playbingo < 15 * 5, 1);
