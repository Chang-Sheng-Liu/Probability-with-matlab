%國立台北科技大學 電子工程系 
%劉長生 Chang-Sheng Liu
%%
%%亂數矩陣
sum_all=zeros();
all=zeros();
TIMES=4000
%擲回數
for t=1:7
U = rand(1, TIMES);
for i=1:TIMES
    if U(i)<(1/6)
       all(i)=1;
       sum_all(i)=sum(all(1:i))/i;
    elseif U(i)>(1/6) && U(i)<(2/6)
        all(i)=2;
        sum_all(i)=sum(all(1:i))/i;
    elseif U(i)>(2/6) && U(i)<(3/6)
        all(i)=3;
        sum_all(i)=sum(all(1:i))/i;
    elseif U(i)>(3/6) && U(i)<(4/6)
        all(i)=3;
        sum_all(i)=sum(all(1:i))/i;
    elseif U(i)>(4/6) && U(i)<(5/6)
        all(i)=2;
        sum_all(i)=sum(all(1:i))/i;
    elseif U(i)>(5/6) && U(i)<=1
        all(i)=1;
        sum_all(i)=sum(all(1:i))/i;
    end    
end
plot(sum_all)
hold on
end
