function [res]=isempty(obj)
% isempty - returns 1 if the interval is empty and 0 otherwise
%
% Syntax:  
%    [res]=isempty(obj)
%
% Inputs:
%    obj - interval object
%
% Outputs:
%    res - bool
%
% Example: 
%    I=interval([1 2; -1 1]);
%    res=isempty(I)
%
% Other m-files required: none
% Subfunctions: none
% MAT-files required: none
%
% See also: -

% Author:       Matthias Althoff
% Written:      12-December-2010
% Last update:  19-November-2015 (Daniel Althoff)
% Last revision:---

%------------- BEGIN CODE --------------

%return result
res = isempty(obj.inf) || isempty(obj.sup);

%------------- END OF CODE --------------