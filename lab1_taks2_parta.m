% Given sequence
x = [-1,2,3,4,5,6,7,6,5,4,3,-2,1];

% Origin at position 2 in the array
origin_position = 2;

% Determine x1[n]
n = 1:length(x);
x1 = zeros(size(x));

% Shifted indices for x[n-5] and x[n+4]
index_minus_5 = n - 5;
index_plus_4 = n + 4;

% Apply the formula x1[n] = 2x[n-5] - 3x[n+4]
x1(index_minus_5 >= 1 & index_minus_5 <= length(x)) = 2 * x(n(index_minus_5 >= 1 & index_minus_5 <= length(x)) - 5);
x1(index_plus_4 >= 1 & index_plus_4 <= length(x)) = x1(index_plus_4 >= 1 & index_plus_4 <= length(x)) - 3 * x(n(index_plus_4 >= 1 & index_plus_4 <= length(x)) + 4);

% Plot the sequences
figure;

subplot(2, 1, 1);
stem(n, x, 'b', 'LineWidth', 2);
title('Original Sequence x[n]');
xlabel('n');
ylabel('x[n]');

subplot(2, 1, 2);
stem(n, x1, 'r', 'LineWidth', 2);
title('Derived Sequence x1[n] = 2x[n-5] - 3x[n+4]');
xlabel('n');
ylabel('x1[n]');

% Highlight the origin
hold on;
stem(origin_position, x(origin_position), 'g', 'LineWidth', 2, 'Marker', 'o', 'MarkerSize', 8);
legend('Original Sequence x[n]', 'Derived Sequence x1[n]', 'Origin');
hold off;
