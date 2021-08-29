function [likelihoodsSpam,likelihoodsHam]=getLikelihood(string,spamList,hamList)

    SpamVal=[];
    HamVal=[];
    for i=1:length(string)
         SpamVal=[SpamVal; count(string(i),1,spamList,hamList)];
    end
    likelihoodsSpam=SpamVal./length(spamList);
 
    for i=1:length(string)
          HamVal=[HamVal; count(string(i),0,spamList,hamList)];
    end
    likelihoodsHam=HamVal./length(hamList);
    
end

    