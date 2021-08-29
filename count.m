% count the number of occurances of words.
function [c]=count(Word,op,spam,ham)
   
   c=0;
    if op==1
        for j=1:size(spam,2)
           
            if strcmp(spam(j),Word)
                c=c+1;
            end
        end
        if c>30
            c=30;
        end
    end
    if op==0
        for k=1:size(ham,2)
            if strcmp(ham(k),Word)
                c=c+1;
            end
        end
        if c>30
           c=30;
        end
    end
    c=c+1;
end
