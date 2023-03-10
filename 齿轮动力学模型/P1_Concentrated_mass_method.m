clc
clear
close all

%% 基本参数
z1 = 55;
z2 = 75;
a = 20*pi/180;            % 压力角
m  = 2;                   % 模数
rb1 = z1*m/2*cos(a)*1e-3; % 基圆直径（m）
rb2 = z2*m/2*cos(a)*1e-3;

b = 0.15*1e-3;    % 齿侧间隙（m）

m1 = 2.034;       % 质量
m2 = 3.973;
g = 9.8;          % 重力加速度（若要忽略重力设为0即可）
I1 = 0.0033;      % 转动惯量
I2 = 0.0115;

f1 = 30;          % 输入轴频率
fm = f1*z1;       % 啮合频率
T1 = 31.9;        % 输入扭矩
T2 = 68.8;        % 输出扭矩
k1 = 2*1e8;       % 轴承支撑刚度
k2 = 2*1e8;
c1 = 900;         % 轴承支撑阻尼
c2 = 900;


%% 啮合刚度
km = 1*1e8;       % 随便给了一个啮合刚度
cm = 1000;