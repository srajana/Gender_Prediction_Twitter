function model = init_model()

%load('w_ridge.mat');
%model.w_ridge = w_ridge;

load('mdl_svm.mat');
load('mdl_log.mat');
load('mdl_libsvm.mat');

model.svm = svm_full;
model.libsvm = mdl_libsvm;
model.logistic = mdl_logistic;

% Example:
% model.svmw = SVM.w;
% model.lrw = LR.w;
% model.classifier_weight = [c_SVM, c_LR];
