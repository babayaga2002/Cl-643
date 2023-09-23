function [product,l,m,h,il,im,ih,cl,cm,ch,SP,rm1,rm2,rm3,nProcess] = ProductionPlanningData

% data has been taken from https://www.tandfonline.com/doi/pdf/10.1080/03052150215722

% the production levels of the various processes at which the production and investment costs are known
l = [70 75 77.5 70 47.5	40 40 45 40	90 90 90 90	90 90 50 50	60 100	50 25 25 125 125 250 90 67.5 70 70 70 100 75 122.5 50 182.5 182.5 180 300 300 105 15 15	415	415	415	225	225	225	225	12.5 12.5 45 125 125]';
m = [135 150 155 145 95	80	80	90	80	180	180	180	180	180	180	100	100	120	200	100	50	50	250	250	500	180	135	135	135	135	200	150	245	100	365	365	360	430	430	170	25	25	830	830	830	450	450	450	450	25	25	90	250	250]';
h = [270 300 310 290 190 160 160 180 160 360 360 360 360 360 360 200 200 240 400 300 100 100 500 500 1000 360 200 270 270 270 400 300 490 200 540 540 550 590 590 340 50 50	1660 1660 1660 680 680 680 680 50 50 180 500 500]';

% investment costs of the various processes at the three production levels
% (low, medium and high)
il = [55 58	60.2 55.1 43.3 66.2	40 106.6 82.8 233.5	185.8 119 212.3	109.8 221.7	115.5 63.7	23.1 117.6 62.5	73.1 46.5 49.2	79.1 134 142.6 82.7	56.9 63.4 66.5 51.4	46.9 82.4 72 125.6 116.4 133.2 210.9 243.5	87 15.3	17.9 224.6	228.5 199.1	116.9 115.6	125.2 125.2	26 27.7	108.8 208.1	170.5]';
im = [81.1 85.1	86.8 83.1 66.8 92.8	61.4 151.7 125.4 390.7 304.5 179.4 362.7 164.3 376.1 180.4 100.2 33.2 186 114 101.1 70.7 74.4 144.2	229.9 234.8	133.6 84.5 84.5	96.2 83	66 116.6 117.7 195.9 168.2 196.3 278.2 322.4 119.5 20.2	26.2 365.5 384.6 371.5 190 191.8 192.7 202 40.8	39.6 157.2 308.6 267.3]';
ih = [131.6	132.4 134.1	132	104.3 153.2	95.1 231.5 207 698.7 537.1 289.2 657.7 263.1 672.7 287.4 156.3 50.7	307.5 209.6	148	110.1 112.8	258.1 392.2	397.5 181.3	131.5 136.9	147.7 144.5	98.6 175.6 199.7 259.6 213.5 248.9 356 412.6 196.7 32.7	44.9 682.1 727.6 702.9 265.1 266.8	269	285.5 63.9 56.9	251.6 515.5	452.7]';

% production costs of the various processes at the three production levels
% (low, medium and high)
cl = [50.7 56.8	56.9 51.7 38.2 38.5 31.8 37.8 38.5 92.2 86.7 95.8 87.5 105.9 93.1 41.4 34.9	36.6 67.6 33 28.7 24 63.8 68.5 101.5 50.3 53.9 42.1	44.6 44.6 55.7	48.3 92	34.9 63.2 60.3 64.7	48.3 52.8 19.4 6.6	6.9	55.2 56.5 51.9 105.8 108 105.6	106.7 9.4 9 36.8 81.4 78.4]';
cm = [90.1 103.8 103.7 97.6	69.8 65.2 57.1	57.7 65.6 159.2	154.1 175 157.2	196.6 131.1	68.7 62	62.1 125.2	63.1 48.3 43.1	123.5 134.5	195	90 101.2 75.1 77.5	78.8 106.8 90.2	174	63.9 111.4	103	110.2 65 71.4 27.4	9.7	10.6 96.3 100.5	98	204.8 209.7	202.5 206.1	16.4 15.4 64 145.8 145]';
ch = [170.7	196.2 195.7 184.8 130.4	120.7 105.5	94.9 119.1 290.9 287.7 330.9 294.9 375.2 239.4	117.2 111.6	120.8 237.2	163.8 86 79.5 241 264 377 165.6	146.4 141.8	147.7 148 208.4	172.8 336.2	120.4 156.6	142.6 154.6	85 92.7	47.3 17.7 19.4 184.3 194.3	187.6 306 313.5	302.6 308.1	28.4 27.3 118.7	275.5 277]';

% selling price for unit quantity of the product
SP = [0.975 0.975 0.975 0.975 0.975 0.78	0.78 0.735 1.45	1.13 1.13 1.13 1.13	1.13 1.13 0.83 0.83	0.45 0.74 0.74 1.25 1.25 0.43 0.43 0.43	0.6	0.69 0.86 0.86 0.86	0.9	0.9	0.9	0.87 0.48 0.48	0.48 0.16 0.16	0.16 0.5 0.5 0.15 0.15	0.15 0.76 0.76 0.76	0.76 0.7 0.7 0.735 0.68	0.68]';

% raw material requird for producing unit quantity of product
rm1 = [0.948	0.9432	0.949	0.9546	0.955	1.045	1.05	0.5103	0.6289	0.8648	0.9546	0.8265	0.7875	0.8101	0.8782	0.815	0.6994	0.3784	zeros(1,36)]';
rm2 = [zeros(1,24)	0.4678	0.7267	0.393	1.02	1.02	1.02	0.9461	0.9387	0.943	1.06	zeros(1,11)	0.2891	0.2878	0.2843	0.2874	zeros(1,5)]';
rm3 = [zeros(1,37)	6.35	5.928	6.678	0	0	7.867	7.778	7.661	zeros(1,9)]';


% determing the number of processes
nProcess = length(l);

% the value of product(i) indicates the product produced by the ith process
product = [1 1	1	2	2	3	3	4	5	6	6	6	6	6	6	7	7	8	9	9	10	10	11	11	11	12	13	14	14	14	15	15	15	16	17	17	17	18	18	18	19	19	20	20	20	21	21	21	21	22	22	23	24	24]';