%% subtract
% the function can subtract:
% - a point with another point to obtain a new vector between the two
% points
% - a vector with another point to obtain a new vector
% Return  a vector
function res = subtract(obj1,obj2)
  % arguments
  %   frame (4,4)
  % end
  syms coords;

  if strcmp(obj1.type,'POINT') & strcmp(obj2.type,'POINT')
    tmp = project(obj2,obj1.frame);
    coords = tmp.coords-obj1.frame*obj1.coords;
    res = make_VECTOR(obj1.frame,coords(1:3));
  end
  if strcmp(obj1.type,'VECTOR') & strcmp(obj2.type,'VECTOR')
    tmp = project(obj2,obj1.frame);
    coords = tmp.coords-obj1.frame*obj1.coords;
    res = make_VECTOR(obj1.frame,coords(1:3));
  end
  if strcmp(obj1.type,'POINT') & strcmp(obj2.type,'VECTOR')
    error('Add() operation not allowed between points')
  end
  if strcmp(obj2.type,'VECTOR') & strcmp(obj1.type,'POINT')
    error('Add() operation not allowed between points')
  end

end