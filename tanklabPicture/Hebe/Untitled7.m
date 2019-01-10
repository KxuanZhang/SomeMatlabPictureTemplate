[m,n]=size(interfenceData2);
for i=1:m;
    for j=1:n;
        if(interfenceData2(i,j)<0)
            interfenceData2(i,j)=-interfenceData2(i,j);
        end
        % interfenceData1(i,j)=log10(interfenceData1(i,j))*100;
        %if(interfenceData2(i,j)>10000)
         %   interfenceData2(i,j)=log10(interfenceData2(i,j))*10000;
        %end
    end
end
%%
 
 [m,n]=size(interfence2);
for i=1:m;
    for j=1:n;
         
        if(interfence2(i,j)>300)
            interfence2(i,j)=log10(interfence2(i,j))*10+300;
        end
    end
end