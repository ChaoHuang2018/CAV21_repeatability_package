function range = getValidRange(property)
% getValidRange - returns a string containing the valid range of property
%
% Syntax:  
%    range = getValidRange(property)
%
% Inputs:
%    property - name of option
%
% Outputs:
%    range - valid range of property
%
% Example: 
%
% 
% Author:       Mark Wetzlinger
% Written:      08-May-2020
% Last update:  24-Jul-2020 (boxInputs removed, MA)
% Last revision:---


%------------- BEGIN CODE --------------

bool = '0 or 1';
zonorders = '>= 1';
% the following table contains the valid ranges for all options
dict = {'alg', '''lin'', ''poly'', ''linRem''';...
        'compTimePoint', bool;...
        'enclose', '''box'',''pca'',''flow''';...
        'error', 'real number greater than 0';...
        'errorOrder', zonorders;...
        'errorOrder3', zonorders;...
        'fracVert', '[0, 1]';...
        'fracInpVert', '[0, 1]';...
        'guardIntersect', '''polytope'', ''conZonotope'', ''levelSet'', ''zonoGirard'', ''pancake'', ''hyperplaneMap'', ''nondetGuard''';...
        'intermediateOrder', zonorders;...
        'intersectInvariant', bool;...
        'inpChanges', 'natural number greater than 0';...
        'isHyperplaneMap', bool;...
        'krylovError', 'real number greater than 0';...
        'krylovStep', 'natural number greater than 0';...
        'lagrangeRem.method', '''interval'', ''taylorModel''';...
        'linAlg', '''standard'', ''wrapping-free'', ''fromStart'', ''decomp'', ''krylov'', ''adap''';...
        'maxDepGenOrder', zonorders;...
        'maxError', 'vector of system dimension, all entries >= 0';...
        'maxError_x', 'vector of system dimension, all entries >= 0';...
        'maxError_y', 'vector of system dimension, all entries >= 0';...
        'maxPolyZonoRatio', zonorders;...
        'outputOrder', zonorders;...
        'polytopeOrder', zonorders; ...
        'points', 'natural number greater than 0';...
        'reductionInterval', 'natural number greater than 0, or Inf';...
        'reductionTechnique', '''girard'', ''combastel'', ''pca'', ''methA'', ''methB'' ,''methC'', ''methD'', ''methE'', ''methF'', ''redistribute'', ''cluster'', ''scott'', ''constOpt''';...
        'replacements', 'function_handle';...
        'saveOrder', zonorders;...
        'simplify', '''none'', ''simplify'', ''collect'', ''optimize''';...
        'specification', 'cell array of halfspace objects';...
        'taylorTerms', 'natural number greater than 0';...
        'tensorOrder', "alg='lin'/'poly': >=3; alg='linRem': 2";...
        'tensorParallel', bool;...
        'timeStep', 'real number greater than 0, less or equal to tFinal';...
        'tStart', 'real number greater than 0';...
        'tFinal', 'real number greater than max(0,params.tStart)';...
        'verbose', bool;...
        'y0guess', 'vector of system dimension';...
        'zonotopeOrder', zonorders};

range = 'see manual'; % default information if not in dict
for idx=1:length(dict)
    if strcmp(property,dict{idx,1})
        range = dict{idx,2};
        return
    end
end


end

%------------- END CODE ----------------