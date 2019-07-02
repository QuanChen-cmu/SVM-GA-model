%% This code is for SVM-GA model
%This model was coded by Quan Chen and Peng Gao to distinguish the stage II-III colorectal patients who will benefit from 5-Fu based ACT. 
clear;
load input.mat;

% Normalization
new=[trainX;testX];
[inputtrain,inputps]=mapminmax(new');
input=inputtrain';
temp=size(trainX)+1;
p_train=input(1:size(trainX),:);
p_test=input(temp:end,:);

[outputtrain,outputps]=mapminmax(outcome_train');
y=outputtrain';

[outputtrain2,outputps2]=mapminmax(outcome_test');
testpre=outputtrain2';

% Building the SVM-GA model
  cmd=['-c ',num2str(3),' -g ',num2str(0.3),'-b 1'];

        model = svmtrain(y, p_train, cmd);
% Calculating the predicitve scores in the test cohort by the SVM-GA model
        [predict_label, accuracy, roc] = svmpredict(testpre,p_test, model);
        [X,Y,THRE,AUC,OPTROCPT,SUBY,SUBYNAMES]=perfcurve(outcome_test,roc,'1');
        


 