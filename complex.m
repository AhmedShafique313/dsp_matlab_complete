n = -10:10;
x = exp((0.10+0.3j)*n);

subplot(2, 2, 1);
stem(n, abs(x));
title('Magnitude');
xlabel('n');
ylabel('|x[n]|');

subplot(2, 2, 2);
stem(n, angle(x));
title('Phase');
xlabel('n');
ylabel('Phase (radians)');

subplot(2, 2, 3);
stem(n, real(x));
title('Real Part');
xlabel('n');
ylabel('Real(x[n])');

subplot(2, 2, 4);
stem(n, imag(x));
title('Imaginary Part');
xlabel('n');
ylabel('Imag(x[n])');
