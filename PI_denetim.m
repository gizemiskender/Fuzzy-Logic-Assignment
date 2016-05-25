function [] = PI_denetim( R0, KP, KI)

A=[ -2   -25 
     1    0  ]; 
B=[1 0; 1 0];
C=[ 0   5]; 
D=0; 
% initials for simulation 
x10=0; x20=0; u1=10; u2=10;      dt=0.01; 
tend=10; 
e10=0;
t0=0;  k=1;  % k is dimension counte

U0=[u1;u2];    
BOY=size(A);  
LS=BOY(1); 
LK=BOY(2);

for n=1:LS
    x0(n)=0;    
end
y0 = 0;

while t0<tend-dt
    if (t0 > (tend/2))
        r0 = R0+0.5*R0;
    else
        r0=R0;
    end
    e0=r0-y0;
    ekp=KP*e0; 
    e1=e10+dt*KI*e0;
    e10=e1;
    U=(e1+ekp)*U0;
    [x]=runge(A,B,U,x0,dt);
    u(k)=U(1);    e(k)=e0;    r(k)=r0;     y(k)=x(1);    y0=y(k);   
    t(k)=t0+dt;   t0=t(k);
    
    for n=1:LS
        x0(n)=x(n);  XX(k,n)=x(n); 
    end
    k = k + 1;
end

subplot(211);  plot(t,y,t,r); xlabel('Zaman (sn)'); ylabel('y(t)');grid

subplot(212);  plot(t,e);  xlabel('Zaman (sn)');  ylabel('e(t)'); grid
