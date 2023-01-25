Fw=1000;
c=540;
r=500;
Fm=2.5*Fw;

alfa = linspace(0,50,120);

for i=1:120
    gamma=deg2rad(110-alfa(i));
    l=(r*cos(gamma)+sqrt(r^2*cos(gamma)^2+4*c^2-r^2))/2;
    Rs(i)=(Fm*sqrt(4*c^2-r^2*sin(gamma)^2))/(l*sin(gamma));
    Rc(i)=(c*Fm)/(l*sin(gamma));
end

plot(alfa,[Rs;Rc]);
legend("F_S","F_C");
title("Wykres wymaganej siły siłownika od kąta rozwarcia")
xlabel("kąt rozwarcia [°]")
ylabel("siła [N]")
