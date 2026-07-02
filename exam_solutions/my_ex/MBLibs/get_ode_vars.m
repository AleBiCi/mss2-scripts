%% Get ode variables from equations
% %This is a function that extracts the ode variables
function ode_vars = get_ode_vars(dae_vars,ode_eqns)
  syms t
  ode_vars = sym.empty(length(ode_eqns),0);
  for i= 1:length(dae_vars)
    % Search in the differential equations
    for j = 1:length(ode_eqns)
      if has(ode_eqns(j), diff(dae_vars(i),t))
        ode_vars(j) = dae_vars(i);
      end
    end
  end
  ode_vars = ode_vars.';
end