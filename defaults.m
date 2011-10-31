function varargout = defaults(varnames, defaultfun)

for i=1:size(varnames,2)
  if ~exist(varnames{i}, 'var')
    % ^-- doesn't work, because if they exist,
    % then in the calling scope.
    eval([varnames{i} '=[];']);
  end
end
varargout = varnames;

% call defaultfun on them