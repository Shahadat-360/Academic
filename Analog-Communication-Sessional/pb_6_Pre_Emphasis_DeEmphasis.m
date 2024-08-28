f1 = 10;
for f = 1:50
    x(f) = (1/sqrt(1+(f1/f)^2));
    y(f) = (1/sqrt(1+(f/f1)^2));
    f2(f) = f;
end
subplot(2,1,1);
plot(f2,x);
title('Pre emphasis signal')

subplot(2,1,2)
plot(f2,y)
title('De emphasis signal')
