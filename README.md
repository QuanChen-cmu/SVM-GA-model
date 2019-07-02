********************The introduction of the SVM-GA model************************************

********************This model was coded by Quan Chen and Peng Gao, and this SVM-GA was applied to distinguish the stage II-III colorectal patients who will benefit from 5-Fu based ACT. 

*******************The installation of the SVM-GA model**************************************
We need to install 64bit MATLAB 2016a based on Windows systems and the model was built based on Libsvm Version 3.23 released on July 15, 2018 which is coded by Chih-Chung Chang and Chih-Jen Lin (http://www.csie.ntu.edu.tw/~cjlin/libsvm).

*******************The variables of the SVM-GA model*******************************************
the input.mat contains six matrixes:
trainX-----the details of the TNM stage and the expression values of 4 candidate genes (EDEM1, MVD, SEMA5B, and WWP2) in the training cohort
trainY-----the details of the relapse-free survival time and the information on recurrence in the training cohort
outcome_train-----the results of ACT-benefit/-futile group for each patients in the training cohort
testX-----the details of the TNM stage and the expression values of 4 candidate genes (EDEM1, MVD, SEMA5B, and WWP2) in the test cohort
testY-----the details of the relapse-free survival time and the information on recurrence in the test cohort
outcome_test-----the results of ACT-benefit/-futile group for each patients in the test cohort

*******************The Results of the SVM-GA model*******************************************
The model will calculate a predictive score for each patient and then we grouped the patients into predictive ACT-benefit group and predictive ACT-futile group according the cut-off point of predictive scores for further validation.
