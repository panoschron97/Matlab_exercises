function [x,an]=ask2(n,t)%δημιουργία συνάρτησης
T=2*pi;%υπολογισμός περιόδου
Wo=2*pi/T;%υπολογισμός συχνότητας
an=zeros(1,length(n));%για an=0 το n=άρτιος
for i=1:2:length(an);%δημιουργία for για 1 με βήμα 2 μέχρι το μήκος an
an=8/(n(i)^2*pi^2);%για an=8/n^2*pi^2 το n=περιττός
end%τέλος της for
x=zeros(1,length(t));%για x=0
for i=1:length(x);%δημιουργία for για 1 μέχρι το μήκος x
x(i)=sum(an.*cos(n*Wo*t(i)));%η συνάρτηση x(t)
end%τέλος της for
figure;plot(t,x);%απεικόνιση πρόσθεση των δύο εισόδων
end%τέλος συνάρτησης

