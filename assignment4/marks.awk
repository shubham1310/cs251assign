#!/usr/bin/awk -f
BEGIN {FS="|";
	for(i=0 ; i<=NF+1; i++){
		sum[i]=0;
		mini[i] =99;
		max[i] =-1;
		sd[i]=0;
	}
}
	{
		stusum=0;
		for(i=3 ; i<=NF ;i++){
			sum[i]+= $i;
			stusum+= $i;
			max[i] = (max[i] > $i) ? max[i] : $i;
			mini[i] = (mini[i] > $i) ? $i : mini[i];
			sd[i]+= ($i * $i);
		}
		max[NF+1] = (max[NF+1] > stusum)? max[NF+1] : stusum;
		mini[NF+1] = (mini[NF+1] < stusum)? mini[NF+1] : stusum;
		sum[NF+1]+=stusum;
		sd[NF+1] +=stusum*stusum;
		print $0,FS, stusum;
	}

END{ printf "max    |       |" ;
	for(i=3 ; i<=NF;i++){
		printf max[i];
		printf FS;
	}
	printf " %d\n", max[NF+1];
	printf "min    |       |" ;
	for(i=3 ; i<=NF;i++){
		printf "%d",mini[i];
		printf FS;
	}
	printf " %d\n", min[NF+1];
	printf "mean   |       |" ;
	for(i=3 ; i<=NF;i++){
		printf " %.2f " ,sum[i]/NR;
		printf FS;
	}
	printf  " %.2f \n" ,sum[i]/NR;
	printf "sd     |       |" ;
	for(i=3 ; i<=NF;i++){
		printf " %.2f " ,sqrt((sd[i]-sum[i]*sum[i]/NR)/NR);
		printf FS;
	}
	printf  " %.2f \n",sqrt((sd[i]-sum[i]*sum[i]/NR)/NR);
}
