%%
% COmpute the inverse of rotation transformation matrix
function res = inv_frame(frame)
  arguments
    frame (4,4) sym
  end
  % definitions of symbolic variables
  syms rm res
  if is_frame(frame)
    rm = frame(1:3,1:3).';
    res = [[rm;0 0 0 ],[-frame(1,4) -frame(2,4) -frame(3,4) 1].'];
  end
end