function [h1,h2,h3,x,y]=ask1(t)%δημιουργία συνάρτησης
h1=heaviside(t);%πρώτη κρουστική απόκριση
h2=-heaviside(t-3);%δεύτερη κρουστική απόκριση
h3=heaviside(t-1)-heaviside(t-2);%τρίτη κρουστική απόκριση
x=heaviside(t)+(-heaviside(t-3));%πρόσθεση δύο εισόδων των κρουστικών αποκρίσεων
y=(heaviside(t)+(-heaviside(t-3))).*(heaviside(t-1)-heaviside(t-2));%η έξοδος όλου του συστήματος
a=conv(x,y,'same');%υπολογισμός της συνέλιξης του συστήματος
figure;subplot(2,2,1);plot(t,h1);title('h1(t)')%απεικόνιση της h1(t)
hold on;subplot(2,2,2);plot(t,h2);title('h2(t)')%απεικόνιση της h2(t)
hold on;subplot(2,2,3);plot(t,h3);title('h3(t)')%απεικόνιση της h3(t)
hold on;subplot(2,2,4);plot(t,x);title('x(t)=h1(t)+h2(t)')%απεικόνιση πρόσθεσης των δύο εισόδων
figure;subplot(2,2,1);plot(t,y);title('y(t)=(h1(t)+h2(t)).*h3(t)')%απεικόνιση εξόδου όλου του συστήματος
hold on;subplot(2,2,2);plot(t,a);title('a')%απεικόνιση της συνέλιξης 
end%τέλος συνάρτησης
