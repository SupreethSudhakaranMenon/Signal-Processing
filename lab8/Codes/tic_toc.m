function [] = tic_toc() 
p = zeros(1,10);
    t1 = zeros(1,10); 
    t2 = zeros(1,10); 
    t3 = zeros(1,10); 
    for i = 1:10
        N = power(2,i);
        p(i) = N ; 
        L = N/2; 
        X = zeros(size(1,N)); 
        tic 
        for j = 1:10
            X = directdft([ones(L,1) ; zeros(N-L,1)]);
        end 
            t1(i) = toc; 
        tic
        for j = 1:10
            X = radix2fft([ones(L,1) ; zeros(N-L,1)]);
        end 
            t2(i) = toc; 
        tic
        for j = 1:10
            X = fft([ones(L,1) ; zeros(N-L,1)]);
        end 
            t3(i) = toc; 
    end
    
        subplot(3,1,1) ;
        plot(p,t1); 
        subplot(3,1,2); 
        plot(p,t2); 
        subplot(3,1,3); 
        plot(p,t3);
end
    
            