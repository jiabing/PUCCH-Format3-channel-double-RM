function [pilot_sequence,inter_pilot_out] = ...
                                        inter_pilot(reference,pucch_type)
global CPflag;
% global N_ULRB;
% global N_RB_sc;
% M=N_ULRB*N_RB_sc;
M = 12;
N=14;
inter_pilot_out = zeros(M,N);
k=1;
if pucch_type < 3                   %��ʽ1/1a/1b���뵼Ƶ
    if CPflag==0                      %��ͨCP
        dmrsnum=6;                  %ÿ��֡��DMRSռ�õķ�����Ŀ
        index = [2 3 4 9 10 11];  %ÿ��֡��DMRS���ڵķ����±�
      for m=1:dmrsnum 
            for i=1:M 
            inter_pilot_out(i, index(m) +1) = reference(k);%�����Ƶ��λ�ÿ�ʼӳ��pilot
            pilot_sequence(i,m) = reference(k);%��RS���г�M�еľ��������ŵ�����
            k=k+1;
            end
      end
    else CPflag==1                   %��չCP
        dmrsnum=4;
         index = [2 3 9 10];
         for m=1:dmrsnum
            for i=1:M
            inter_pilot_out(i, index(m) +1) = reference(k);
            pilot_sequence(i,m) = reference(k);
            k=k+1;
            end
         end
    end
else                                   %��ʽ2/2a/2b���뵼Ƶ
      if CPflag==0
        dmrsnum=4;                  %ÿ��֡��DMRSռ�õķ�����Ŀ
        index = [1 5 8 12];  %ÿ��֡��DMRS���ڵķ����±�
      for m=1:dmrsnum
            for i= 1:M
            inter_pilot_out(i,index(m) +1) = reference(k);
            pilot_sequence(i,m) = reference(k);
            k=k+1;
            end
      end
    else CPflag==1
        dmrsnum=4;
         index = [1 5 8 12];
         for m=1:dmrsnum
            for i=1:M
            inter_pilot_out(i, index(m) +1) = reference(k);
            pilot_sequence(i,m) = reference(k);
            k=k+1;
            end
         end
      end
end
%==============================OK=================================