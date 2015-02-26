#!/usr/bin/awk -f
BEGIN {FS="|";
	for(i=0;i<NR ; i++){
		sum[i]=0;
		min[i] = 100000 ;
		max[i] =-1;
	}
}
	{
		stusum=0;
		for(i=1;i<NF ;i++){
			sum[i]+= $i;
			stusum+= &i;
			max[i]=(max[i] > &i)? max[i] : &i;
			min[i]=(min[i] < &i)? min[i] : &i;
		}
		
	}
END{ print "max" ,FS ;
	for(i=1;i<NF;i++)
		printf   }