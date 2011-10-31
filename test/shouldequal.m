function shouldequal(description, actual, expected)

global context

if ~(all(actual==expected))
  disp(['FAILED: ' context ': "' description ...
      '" ' mat2str(actual) ' != ' mat2str(expected)])
end
