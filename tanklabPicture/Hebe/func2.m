[m,n]=size(interfenceData2);
for i=1:m;
    for j=1:n;
        if(interfenceData2(i,j)<0)
            interfenceData2(i,j)=-interfenceData2(i,j);
        end
        
        if(interfenceData2(i,j)>300)
             interfenceData2(i,j)=log10(interfenceData2(i,j))*300/log10(300);
             if( interfenceData2(i,j)>400)
                  interfenceData2(i,j)=359+rand*30;
             end
        end
    end
end
 %for i=1:m/2;
  % interfence2(i,:)=abs(interfenceData2(2*i-1,:)-interfenceData2(2*i,:));
 %end