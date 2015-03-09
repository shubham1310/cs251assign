#!/usr/bin/awk -f
BEGIN {FS="|";
		sum[""]=0;
		mini[""]=0;
		max[""]=0;
		sd[""]=0;
		num_row=0;
}
	{
		stusum=0;
		for(i=3 ; i<=NF ;i++){
			if(num_row==0){
				mini[i]=$i;
				max[i]=$i;
			}
			sum[i]+= $i;
			stusum+= $i;
			max[i] = (max[i] > $i) ? max[i] : $i;
			mini[i] = (mini[i] > $i) ? $i : mini[i];
			sd[i]+= ($i * $i);
		}
		if(num_row==0){
				mini[i]=stusum;
				max[i]=stusum;
		}
		max[NF+1] = (max[NF+1] > stusum)? max[NF+1] : stusum;
		mini[NF+1] = (mini[NF+1] < stusum)? mini[NF+1] : stusum;
		sum[NF+1]+=stusum;
		sd[NF+1] +=stusum*stusum;
		printf "%s ",$0;printf FS;
		printf "  %5d\n", stusum;
		num_row++;
	}

END{ printf "max    |       |" ;
	for(i=3 ; i<NF;i++){
		printf max[i];
		printf FS;
	}
	printf max[i];
	printf " " FS " ";
	printf " %5d\n", max[i+1];
	printf "min    |       |" ;
	for(i=3 ; i<NF;i++){
		printf mini[i];
		printf FS;
	}
	printf mini[i];
	printf " " FS " ";
	printf " %5d\n", mini[i+1];
	printf "mean   |       |" ;
	for(i=3 ; i<=NF;i++){
		printf " %.2f " ,sum[i]/NR;
		printf FS;
	}
	printf  " %5.2f \n" ,sum[i]/NR;
	printf "sd     |       |" ;
	for(i=3 ; i<=NF;i++){
		printf " %.2f " ,sqrt((sd[i]-sum[i]*sum[i]/NR)/NR);
		printf FS;
	}
	printf  " %5.2f \n",sqrt((sd[i]-sum[i]*sum[i]/NR)/NR);
}