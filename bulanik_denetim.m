function bulanik_denetim()
clear;		
 A=[-4 -8 -4; 1 0 0;0 1 0];	
 B=[1 0 0 ; 0 0 0; 0 0 0];	 C=[ 4 1 6];	 D=0;	
u1=10;	 u2=10;	u3 = 10;
dt=0.01;	tend=5;	t0=0;	k=1;      
%   Baslangiç degerleri
U0=[u1;u2;u3];    BOY=size(A);  LS=BOY(1); LK=BOY(2);
for n=1:LS
    x0(n)=0;
end
% -----------------Denetim için gerekli veriler
%r0=input('Referans girisi degeri ==> ');
%tend=input('Simülasyon bitis zamani ==> ');
r0 = 1;
tend = 5;
	EMAX  = r0;        EMIN  = -EMAX;
	DEMAX = EMAX/10;   DEMIN = -DEMAX;
	DUMAX = 1;         DUMIN = -1;
    NLe=EMIN;   NTe=NLe;    NRe=0; 
    SLe=NTe;    STe=0;      SRe=EMAX;
    PLe=STe;    PTe=EMAX;   PRe=PTe;
    NLde=DEMIN;     NTde=NLde;     NRde=0;
    SLde=NTde;      STde=0;        SRde=DEMAX;
    PLde=STde;      PTde=DEMAX;    PRde=PTde;
    NLdu=DUMIN;       NTdu=DUMIN;    NRdu=0;
    SLdu=NTdu;        STdu=0;        SRdu=DUMAX;
    PLdu=STdu;        PTdu=DUMAX;    PRdu=PTdu;
%  Hata ve denetleyici için baslangiç degerleri
   ee=EMAX;   dee=0;  E=EMAX;  dE=0;    
   e0=EMAX;   e(1)=0; e(2)= 0;   de=e(2)-e(1); 
   C(1)=0;
% membership matrix 
     DU=[ NTdu NTdu STdu
          NTdu STdu PTdu
          STdu PTdu PTdu ];
% -------------- iteratif cözüm
while t0<tend-dt
      % Bulaniklastirma
      E=limiter(EMIN,EMAX,ee);%---------- limit E 
      [mu] = ucgen(NLe,NTe,NRe,E);
      FSE(1) = x;
      %FSE(1)=ucgen(NLe,NTe,NRe,E,0);
      [mu]=ucgen(SLe,STe,SRe,E);
      FSE(2) = x;
      [mu]=ucgen(PLe,PTe,PRe,E);
      FSE(3) = x;
      DE=limiter(DEMIN,DEMAX,dee); %----- limit DE 
      [mu]=ucgen(NLde,NTde,NRde,DE);
      FSDE(1) = x;
      [mu]=ucgen(SLde,STde,SRde,DE);
      FSDE(2) = x;
      [mu]=ucgen(PLde,PTde,PRde,DE);
      FSDE(3) = x;
      N1=length(FSE);
      N2=length(FSDE);
      NM=N1*N2;
      nn=1;
      for mm=1:N1
        for qq=1:N2
            FSDU(nn)=min( [FSE(mm) FSDE(qq)] );
            nn=nn+1;
        end
      end
      nn=1;
      for mm=1:N1
         for qq=1:N2
             DDU(nn)=FSDU(nn)*DU(mm,qq);
             nn=nn+1;
         end
      end
      DUTOP1 = sum(DDU) ;            
      DUTOP2 = sum(FSDU);
      DV = (DUTOP1/DUTOP2);

     % ------------------------------- PI etki
     C(k+1) = C(k) + DV;
     CC=limiter(0,DUMAX,C(k+1));                    
     UU0 = CC*U0;
     [x1,x2,x3]=rungekutta(A,B,UU0,x0,dt);%Runge ile denklem çöz.
     UU(k)=UU0(1);
     t(k)=t0+dt;    t0=t(k);
     r(k)=r0;       y(k)=x0(1);  
     e(k)=r(k)-y(k);    de(k)=e(k)-e0;
     ee=e(k);  dee=de(k);   e0=e(k);   duty(k)=CC;
       x0(1)=x1(1);  XX(k,1)=x1(1); 
       x0(2)=x2(1);  XX(k,2)=x2(1); 
       x0(3)=x3(1);  XX(k,3)=x3(1); 
      k=k+1;
end;
% -------------------------- Grafikler
subplot(211)
plot(t,y,t,r); xlabel('Zaman (sn)'); ylabel('y');grid

subplot(212)
plot(t,e);  xlabel('Zaman (sn)');  ylabel('e'); grid

end


