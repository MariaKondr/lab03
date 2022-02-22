model lab03f
  parameter Real a=0.45;
  parameter Real b=0.85;
  parameter Real c=0.45;
  parameter Real h=0.45;
  parameter Real x0=150000;
  parameter Real y0=100000;
  Real x(start=x0);
  Real y(start=y0);
equation
  der(x)=-a*x-b*y+sin(time+8)+1;
  der(y)=-c*x-h*y+cos(time+8)+1;
end lab03f;
