format shortg

clock

% Load data
img_train = importdata('../train/images_train.txt');
img_feat_train = importdata('../train/image_features_train.txt');
word_train = importdata('../train/words_train.txt');
Y_train = importdata('../train/genders_train.txt');
X_train = [word_train];
img_test = importdata('../test/images_test.txt');
img_feat_test = importdata('../test/image_features_test.txt');
word_test = importdata('../test/words_test.txt');
X_test = [word_test];

clock

model = init_model;

clock

predictions = make_final_prediction(model, X_test,X_train);

% Use turnin on the output file
% turnin -c cis520 -p leaderboard submit.txt
dlmwrite('submit.txt', predictions);

clock