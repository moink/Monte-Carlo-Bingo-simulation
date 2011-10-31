addpath ..
global context

test = 'bingocarddefaults:';

context = [test 'empty arguments'];
[sidelength,delta,freespace] = bingocarddefaults;
  shouldequal('sidelength = 5', sidelength, 5);
  shouldequal('delta = 3*sidelength', delta, 15);
  shouldequal('freespace = 1', freespace, 1);

context = [test 'even-sized cards'];
[sidelength,~,freespace] = bingocarddefaults(6);
  shouldequal('can be created', sidelength, 6);
  shouldequal('freespace defaults to 0', freespace, 0);

context = [test 'validations'];
  shouldfail('delta must be >= sidelength',
    (@() bingocarddefaults(5,4)));
