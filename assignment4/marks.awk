#!/usr/bin/awk -f
BEGIN {FS="|";
	for(i=0 ; i<=NF ; i++){
		sum[i]=0;
		min[i] = 100000 ;
		max[i] =-1;
	}
	max[NF+1]=-1;
	min[NF+1] = 100000 ;
}
	{
		stusum=0;
		for(i=3 ; i<=NF ;i++){
			sum[i]+= $i;
			stusum+= $i;
			max[i]=(max[i] > $i)? max[i] : $i;
			min[i]=(min[i] < $i)? min[i] : $i;
		}
		max[NF+1]=(max[NF+1] > stusum)? max[NF+1] : stusum;
		print $0,FS, stusum;
	}

END{ printf "max    |       |" ;
	for(i=3 ; i<=NF+1;i++){
		printf max[i];
		printf FS;
	}
	printf(" \n");
	printf "min    |       |" ;
	for(i=3 ; i<=NF+1;i++){
		printf min[i];
;		printf FS;
	}
	printf(" \n");
	printf "mean   |       |" ;
	for(i=3 ; i<=NF+1;i++){
		printf "%.2f" ,sum[i]/NR;
		printf FS;
	}
	printf(" \n");
	}
