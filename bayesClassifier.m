[class_1_train,class_0_train,spam, notSpam] = reading();



[TP,FN]=spamConfirm(spam);


[TN,FP]=nonSpamConfirm(notSpam);

accuracy=(TN+TP)/(TP+TN+FP+FN)
Recall=TP/(TP+FN)
Precision=TP/(TP+FP)
Fmeasure=(2*Precision*Recall)/(Precision+Recall)



