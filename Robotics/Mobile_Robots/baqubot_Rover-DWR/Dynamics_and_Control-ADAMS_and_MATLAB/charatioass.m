function [K,P]=charatioass(n,T,a0,alpha1)
%
%[K,P]=charatioass(n,T,a0,alpha1)
%
%We begin by defining two important sets of parameters called here generalized
%time constant and characteristic ratios, respectively. These parameters are
%written in terms of coefficients of a polynomial. The properties of these
%parameters with respect to time domain response, in particular speed of response
%and overshoot, are then derived analytically. These properties are later used
%to construct a desired transfer function and a controller design procedure
%for minimum phase plants to achieve a transient response, with independently
%specified overshoot and rise time. The controller can be of state feedback plus
%feedforward or of two parameter type. The same procedure can be used for non
%minimum phase systems where reduced overshoot and increased speed of response
%may be obtained although they may not be independently specifiable.
%
%We begin by considering all-pole transfer functions of order for which we introduce
%a set of parameters ALPHA(i), [i= 1,...n]. called the characteristic ratios.
%We also introduce a generalized time constant TAO (T). We prove that ALPHA(1)
%and TAO can be used to characterize the system overshoot to a step input and
%the speed of response, respectively.
%
%Basic Requeriments of Algorithm:
%alpha1 > 2.
%a0 and T > 0.
%a1=T*a0.
%[n] is the system order.
clear alpha
ar(1,1)=a0; alpha(1,1)=alpha1; ar(1,2)=T*ar(1,1); I1=eye(n+1); I2=eye(n-1);
for k=2:n-1
    alpha(1,k)=(((sin(k*pi/n))+(sin(pi/n)))*alpha(1,1))/(2*sin(k*pi/n));
end
alpha=alpha*I2([n-1:-1:1],:);
clear dens
for i=2:n
    clear opr
    p=1;
    for x=i-1:-1:1
        opr(1,x)=alpha(1,n-x)^(p);
        p=p+1;
    end
    dens(1,i-1)=prod(opr);
end
for i=3:n+1
   ar(1,i)=(T^(i-1))*(ar(1,1))/dens(1,i-2);
end
for i=1:n+1
    lambda_ratio(1,i)=ar(1,i)/ar(1,n+1);
end
K=lambda_ratio*I1([n+1:-1:1],:);
P=roots(K);
end