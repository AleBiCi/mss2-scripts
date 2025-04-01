% ODE CLASS
classdef ode < handle
    properties (Access = private)
        name
        fun
        DfunDy
        ini
        dim
    end
    methods
        function this = ode(name_in, f, DfDy, ini)
            this.name = name_in;
            this.fun = fun;
            this.DfunDy = DfDy;
            this.ini = ini;
        end
        function y_ini = initial_condition(this)
            y_ini = this.ini;
        end
        function y_dot = f(this, t, y)
            y_dot = this.fun(t, y);
        end
        function res = DfDy(this, t, y)
            res = this.DfunDy(t, y);
        end
    end
end