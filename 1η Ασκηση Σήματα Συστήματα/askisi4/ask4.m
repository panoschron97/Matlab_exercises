function [ha,hb,hc]=ask4(t)%δημιουργία της function ha,hb,hc
%το t είναι το βήμα που το έχουμε ορίσει t=[-20:0.1:20]
ha=exp(-4.*t).*heaviside(t);%το ha είναι ίσο με e^(-4*t) επί το u(t) αλλά εμείς το u(t)
%το ορίσαμε με heaviside(t)
hb=exp(2.*t).*heaviside(t);%το hb είναι ίσο με e^(2*t) επί το u(t) αλλά εμείς το u(t)
%το ορίσαμε με heaviside(t)
hc=(t-1).*[heaviside(t+3)-heaviside(t-4)];%το hc είναι ίσo (t-1)*[u(t+3)-u(t-4)]
%το u(t) εμείς το u(t)το ορίσαμε με heaviside(t)
figure;plot(t,ha);%χρησιμοποιούμε το figure για να μας απεικονίσει την γραφική παράσταση
%ha με βήμα t
figure;plot(t,hb);%χρησιμοποιούμε το figure για να μας απεικονίσει την γραφική παράσταση
%hb με βήμα t
figure;plot(t,hc);%χρησιμοποιούμε το figure για να μας απεικονίσει την γραφική παράσταση
%hc με βήμα t
end%τέλος συνάρτησης 
