% draw the picture
function [draw] = drawpicture(origin,heart,final,r,c_x,c_y,r_big,N)
   
    %draw the star
    for i=1:N
        line = zeros(2,2);
        if(mod(N,2)==1)
            j = mod(i+(N-3)/2,N)+1;
            k = mod(i+(N-1)/2,N)+1;
        else
            j = mod(i+N/2-2,N)+1;
            k = mod(i+N/2,N)+1;
        end
        line(1,:) = origin(i,:);
        line(2,:) = origin(j,:);
        plot(line(:,1),line(:,2),'r-')
        hold on 
        line(1,:) = origin(i,:);
        line(2,:) = origin(k,:);
        plot(line(:,1),line(:,2),'r-')
        hold on  
    end
    % draw the circle and the five points
    sita = 0:pi/100:2*pi;
    for i=1:N
%        plot(origin(i,1),origin(i,2),'bo')
%        axis([-1.3,3.3,-0.3,4.3])
        plot(heart(i,1)+r(i)*cos(sita),heart(i,2)+r(i)*sin(sita),'g-');
        hold on;
        plot(final(i,1),final(i,2),'ko');
        hold on;
    end
    c_x = double(c_x);
    c_y = double(c_y);
    r_big = double(r_big);
    plot(c_x+r_big*cos(sita),c_y+r_big*sin(sita),'k-')

    
    axis equal;
    draw = 1;
    
    saveas(gcf,'Excited.jpg');

end   
