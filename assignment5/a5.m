y=zeros(51,4);
for i = 0 : 50
	y(i+1,1)=i;
	y(i+1,2)=binopdf(i,50,0.3);
	y(i+1,3)=poisspdf(i,15);
	y(i+1,4)=normpdf(i,15,sqrt(10.5));
end
save a5 y
