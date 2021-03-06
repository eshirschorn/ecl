function error_transfer_matrix = quat_to_euler_error_transfer_matrix(q0,q1,q2,q3)
%QUAT_TO_EULER_ERROR_TRANSFER_MATRIX
%    ERROR_TRANSFER_MATRIX = QUAT_TO_EULER_ERROR_TRANSFER_MATRIX(Q0,Q1,Q2,Q3)

%    This function was generated by the Symbolic Math Toolbox version 6.2.
%    13-Jul-2017 08:41:41

t8 = q0.*q1.*2.0;
t9 = q2.*q3.*2.0;
t2 = t8+t9;
t4 = q0.^2;
t5 = q1.^2;
t6 = q2.^2;
t7 = q3.^2;
t3 = t4-t5-t6+t7;
t10 = t3.^2;
t11 = t2.^2;
t12 = t10+t11;
t13 = 1.0./t12;
t14 = 1.0./t3;
t15 = 1.0./t3.^2;
t17 = q0.*q2.*2.0;
t18 = q1.*q3.*2.0;
t16 = t17-t18;
t19 = t16.^2;
t20 = -t19+1.0;
t21 = 1.0./sqrt(t20);
t24 = q0.*q3.*2.0;
t25 = q1.*q2.*2.0;
t22 = t24+t25;
t23 = t4+t5-t6-t7;
t26 = t23.^2;
t27 = t22.^2;
t28 = t26+t27;
t29 = 1.0./t28;
t30 = 1.0./t23;
t31 = 1.0./t23.^2;
error_transfer_matrix = reshape([t10.*t13.*(q1.*t14.*2.0-q0.*t2.*t15.*2.0),q2.*t21.*2.0,t26.*t29.*(q3.*t30.*2.0-q0.*t22.*t31.*2.0),t10.*t13.*(q0.*t14.*2.0+q1.*t2.*t15.*2.0),q3.*t21.*-2.0,t26.*t29.*(q2.*t30.*2.0-q1.*t22.*t31.*2.0),t10.*t13.*(q3.*t14.*2.0+q2.*t2.*t15.*2.0),q0.*t21.*2.0,t26.*t29.*(q1.*t30.*2.0+q2.*t22.*t31.*2.0),t10.*t13.*(q2.*t14.*2.0-q3.*t2.*t15.*2.0),q1.*t21.*-2.0,t26.*t29.*(q0.*t30.*2.0+q3.*t22.*t31.*2.0)],[3, 4]);
