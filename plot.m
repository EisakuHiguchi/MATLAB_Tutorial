% �v���b�g�n

x = 0:pi/100:2*pi;
% �J�n�_:�Ԋu:�I���_;�A���Ԃ�x�z�񂱂��ł�1*201
whos % MATLAB���Ɏ��ۑ�����Ă���ϐ��̈ꗗ�����邱�Ƃ��ł���֗�
y = sin(x);
plot(x,y); % 2�����̃v���b�g
plot(x,y,'r--'); % 3�Ԗڂ̈����̓��C���d�l r-- �j��

% ������Figure�Ƀv���b�g��ǉ��ł���
plot(x,y);
hold on
y2 = cos(x);
plot(x, y2, 'r:'); % r: �_��
legend('sin', 'cos'); % �E�゠����Ƀv���b�g���̌��o����������
hold off

% 3�����v���b�g
[X, Y] = meshgrid(-2:.2:2); % .2=0.2�A-2����2�܂�0.2����
% [X , Y] 2�̖߂�l���i�[�ł���
% meshgrid 2���������3�����̋�Ԃ̎l�p�`�O���b�h
% meshgrid(gv,gv)=mesgrid(gv)
% �x�N�g���s����쐬X,Y�Ɋi�[
% �v�́A�O���b�h���쐬���Ă���B(-3:.2:3)�ɂ���ƁA�͈͂�-3~3

Z = X.*exp(-X.^2 - Y.^2);
surf(X, Y, Z);

