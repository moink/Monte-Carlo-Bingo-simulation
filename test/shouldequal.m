function shouldequal(description, actual, expected)

global context

if ~(all(actual==expected))
  disp(strcat('FAILED: (', context, ')-', description))
end
