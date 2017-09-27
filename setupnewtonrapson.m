%t?rk?e karakter kullanma
%newton ad?n? dosyaya verme

clear all
clc
f=@(x)(exp(x)*cos(x)-1.4);
df=@(x)(exp(x)*cos(x)-sin(x));
ddf=@(x)(-2*(exp(x)*sin(x)));
x1=input('enter the inital value x1= ');
acc=input('enter the value of accuracy acc= ');
y1=f(x1);
y2=df(x1);
y3=ddf(x1);
while(((y1*y3)/(y2*y2))>1)
    x1=input('enter initial value again');
    y1=f(x1);
    y2=df(x1);
    y3=ddf(x1);
end
%this loop above shows the constion for the conversion criteria.
x2=(x1-(y1/y2));
while(abs(x2-x1)>acc)
    x1=x2;
    y1=f(x1);
    y2=df(x1);
    x2=(x1-(y1/y2));
end
% this loop above for accuracy
fprintf('the root of quation is %f \n',x2);

% x=fzero(@(x)(exp(x)*cos(x)-1.4),0)
% matlab solver cozum kodu
x=fzero(@(x)(exp(x)*cos(x)-1.4),0);
fprintf('matlab solver cozumu= %f \n',x);