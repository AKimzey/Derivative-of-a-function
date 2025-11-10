%Position and velocity
%List elements of array for t and position
t=0:10;
pos=[0 1 2 4 7 11 14 16 17 18 18];
subplot(2,1,1)
plot(t,pos)
grid on
title('Position function')
n = length(t);
der=(y(3:n)-y(1:n-2))./(x(3:n)-x(1:n-2));
subplot(2,1,2)
plot(t(2:n-1),der)
grid on
xlim([0 10])
title('Velcoity function')
%Report max and avg velcoity
maxVel=max(der);
avgVel=mean(der);
fprintf("The maximum velocity is %g m/s.\n",maxVel);
fprintf("The average velocity is %g m/s.\n",avgVel);
