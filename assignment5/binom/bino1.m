y=binornd(50,0.3,10000,1);
x=zeros(51,2);
for i = 1 : 10000
   x(y(i)+1,2)++;
end
for i = 1 : 51
   x(i,1) = i-1;
end
save bino1 x
