% プロット系

x = 0:pi/100:2*pi;
% 開始点:間隔:終了点;、実態はx配列ここでは1*201
whos % MATLAB内に実保存されている変数の一覧を見ることができる便利
y = sin(x);
plot(x,y); % 2次元のプロット
plot(x,y,'r--'); % 3番目の引数はライン仕様 r-- 破線

% 既存のFigureにプロットを追加できる
plot(x,y);
hold on
y2 = cos(x);
plot(x, y2, 'r:'); % r: 点線
legend('sin', 'cos'); % 右上あたりにプロット線の見出しをつけられる
hold off

% 3次元プロット
[X, Y] = meshgrid(-2:.2:2); % .2=0.2、-2から2まで0.2刻み
% [X , Y] 2つの戻り値を格納できる
% meshgrid 2次元および3次元の空間の四角形グリッド
% meshgrid(gv,gv)=mesgrid(gv)
% ベクトル行列を作成X,Yに格納
% 要は、グリッドを作成している。(-3:.2:3)にすると、範囲が-3~3

Z = X.*exp(-X.^2 - Y.^2);
surf(X, Y, Z);

