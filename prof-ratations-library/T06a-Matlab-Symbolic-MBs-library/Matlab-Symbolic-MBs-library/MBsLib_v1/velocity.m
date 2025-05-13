%% velocity
% compute the time derivative of the coordinates of a point or the component of a vector
% Return a vector object with velocity components expressed in ground
function res = velocity(obj)
  syms t
  if strcmp(obj.type,'POINT') || strcmp(obj.type,'VECTOR')
    tmp = project(obj,ground());
    coords = diff(tmp.coords,t);
    res = make_VECTOR(obj.frame,coords(1:3));
  end
  
end