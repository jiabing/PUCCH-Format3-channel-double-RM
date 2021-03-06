function r_alpha_u_v = rsgenforPUCCH(alpha,u,M_RS_sc)  
%生成PUCCH格式2，2a,2b的参考信号，这里设M_RS_sc=N_RB_sc
Fi1=[-1,1,3,-3,3,3,1,1,3,1,-3,3;
	1,1,3,3,3,-1,1,-3,-3,1,-3,3;
	1,1,-3,-3,-3,-1,-3,-3,1,-3,1,-1;
	-1,1,1,1,1,-1,-3,-3,1,-3,3,-1;
	-1,3,1,-1,1,-1,-3,-1,1,-1,1,3;
	1,-3,3,-1,-1,1,1,-1,-1,3,-3,1;
	-1,3,-3,-3,-3,3,1,-1,3,3,-3,1;
	-3,-1,-1,-1,1,-3,3,-1,1,-3,3,1;
	1,-3,3,1,-1,-1,-1,1,1,3,-1,1;
	1,-3,-1,3,3,-1,-3,1,1,1,1,1;
	-1,3,-1,1,1,-3,-3,-1,-3,-3,3,-1;
	3,1,-1,-1,3,3,-3,1,3,1,3,3;
	1,-3,1,1,-3,1,1,1,-3,-3,-3,1;
	3,3,-3,3,-3,1,1,3,-1,-3,3,3;
	-3,1,-1,-3,-1,3,1,3,3,3,-1,1;
	3,-1,1,-3,-1,-1,1,1,3,1,-1,-3;
	1,3,1,-1,1,3,3,3,-1,-1,3,-1;
	-3,1,1,3,-3,3,-3,-3,3,1,3,-1;
    -3,3,1,1,-3,1,-3,-3,-1,-1,1,-3;
	-1,3,1,3,1,-1,-1,3,-3,-1,-3,-1;
	-1,-3,1,1,1,1,3,1,-1,1,-3,-1;
	-1,3,-1,1,-3,-3,-3,-3,-3,1,-1,-3;
	1,1,-3,-3,-3,-3,-1,3,-3,1,-3,3;
	1,1,-1,-3,-1,-3,1,-1,1,3,-1,1;
	1,1,3,1,3,3,-1,1,-1,-3,-3,1;
	1,-3,3,3,1,3,3,1,-3,-1,-1,3;
	1,3,-3,-3,3,-3,1,-1,-1,3,-1,-3;
	-3,-1,-3,-1,-3,3,1,-1,1,3,-3,-3;
	-1,3,-3,3,-1,3,3,-3,3,3,-1,-1;
	3,-3,-3,-1,-1,-3,-1,3,-3,3,1,-1];

r1_alpha_u_v = zeros(1,M_RS_sc);
r_alpha_u_v = zeros(1,M_RS_sc);
for n = 1 : M_RS_sc
    r1_alpha_u_v(1,n) = exp(j * Fi1(u+1,n) * pi / 4);
    r_alpha_u_v(1,n) = exp(j * alpha * (n - 1)) * r1_alpha_u_v(1,n);
   % r2_alpha_u_v(n)=exp(j * alpha * (n - 1));
end
%r1_alpha_u_v;
%r2_alpha_u_v

