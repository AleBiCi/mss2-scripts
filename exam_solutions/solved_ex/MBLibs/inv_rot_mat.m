%%
% Compute the inverse of rotation transformation matrix
function rm = inv_rot_mat(frame)
  arguments
    frame (3,3) sym
  end
  % definitions of symbolic variables
  syms rm
  if is_frame3(frame)
    rm  = frame.'; %transpose of rotation matrix
  end
end