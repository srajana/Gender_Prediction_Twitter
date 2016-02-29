function predictions = make_final_prediction(model,X_test,X_train)
% Input
% X_test : a nxp vector representing "n" test samples with p features.
% X_test=[words images image_features] a n-by-35007 vector
% model : struct, what you initialized from init_model.m
%
% Output
% prediction : a nx1 which is your prediction of the test samples

% Sample model
%predictions = X_test(:,1:5000) * model.w_ridge;
%predictions(predictions > 0.5) = 1;
%predictions(predictions <= 0.5) = 0;

yhat_svm = predict(model.svm,X_test);
predictions=yhat_svm;

%yhat_logistic = predict(test_y, sparse(X_test), model.logistic, ['-q', 'col']);

%Ktest = kernel(X_train, X_test);
%test_y = zeros(size(X_test,1),1);
%[yhat_lbsvm acc vals] = svmpredict(test_y, [(1:size(Ktest,1))' Ktest], mdl_libsvm);

%o1=yhat_svm;
%o2=yhat_logistic;
%o3=yhat_lbsvm;

%x=o1-o2;
%ind = find(x~=0);
%ind2 = find(x==0);

%op=zeros(size(o1));

%for i=1:numel(o1)
%    if sum(ind==i)==1
%        op(i)=o3(i);
%    else
%        op(i)=o1(i);
%    end
%end

%predictions=op;