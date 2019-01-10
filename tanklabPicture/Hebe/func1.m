[m,n]=size(interfenceData1);
for i=1:m;
    for j=1:n;
        if(interfenceData1(i,j)<0)
            interfenceData1(i,j)=-interfenceData1(i,j);
        end
        
        if(interfenceData1(i,j)>300)
             interfenceData1(i,j)=log10(interfenceData1(i,j))*300/log10(300);
        end
        if( interfenceData1(i,j)>400)
                  interfenceData1(i,j)=359+rand*30;
             end
    end
end

 