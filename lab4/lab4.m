%task1
str = '195256 СПб Науки 49';
k = sum(str ~= ' ');
str1 = num2str(k);

%task2
for i = 1:length(str)
    if str(i) == ' '
        s1 = i;
    end
end
for i = 1:length(str)
    if str(i) == ' '
        s2 = i;
        break
    end
end
str2 = [str(s2+1:end) str(s1:s2) str(1:s1-1)];

%task3
str3 = str;
for i = 1:length(str)
    switch str3(i)
        case '0'
            str3 = strrep(str3, '0','ноль');
        case '1'
            str3 = strrep(str3, '1','один');
        case '2'
            str3 = strrep(str3, '2','два');
        case '3'
            str3 = strrep(str3, '3','три');
        case '4'
            str3 = strrep(str3, '4','четыре');
        case '5'
            str3 = strrep(str3, '5','пять');
        case '6'
            str3 = strrep(str3, '6','шесть');
        case '7'
            str3 = strrep(str3, '7','семь');
        case '8'
            str3 = strrep(str3, '8','восемь');
        case '9'
            str3 = strrep(str3, '9','девять');
    end
end

%task4
str4 = [];
ind = strfind(str,' ');
indx = [0 ind length(str)+1];
for i = 1:length(indx)-1
    word = str(indx(i)+1:indx(i+1)-1);
    numx = str2num(word);
    if isnumeric(numx) == 1
        str4 = [str4 numx];
    end
end

%task5
f = fopen('in7.txt','wt');
fprintf(f,'195256 СПб Науки 49\n');
fprintf(f,'4.79 2.001 9.921 3.21 0.25\n');
fprintf(f,'1.129 1.865 8.341 9.33 8.01\n');
fprintf(f,'8.136 8.401 7.133 3.12 3.44');
fclose(f);

%task6
file1 = fgetl(f);
file2 = fgetl(f);
file3 = fgetl(f);
file4 = fgetl(f);
m2 = [file2];
m3 = [file3];
m4 = [file4];

%7
File1NameExp='v07';
PictHigh1='200';
DirName1=['D:/' File1NameExp];
if ~exist(DirName1, 'dir')
    mkdir(DirName1);
end
cd(DirName1);
FileHtml=fopen(['00' File1NameExp ' .htm'],'wt');
fprintf(FileHtml,['<HTML>\n']);
fprintf(FileHtml,['<head>\n']);
fprintf(FileHtml,['<title>Отчет по лабораторной работе \n']);
fprintf(FileHtml,['</title>\n']);
fprintf(FileHtml,['<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows">\n']);
fprintf(FileHtml,['</head>\n']);
fprintf(FileHtml,['<body>\n']);
fprintf(FileHtml,['<center><H3>ОТЧЕТ<br>по лабораторной работе</h3></center>\n']);
fprintf(FileHtml,['1. ' str1 '</br>']);
fprintf(FileHtml,['2. ' str2 '</br>']);
fprintf(FileHtml,['3. ' str3 '</br>']);
fprintf(FileHtml,['4. ' str4 '</br>']);
fprintf(FileHtml,['6. ' m2 '</br>']);
fprintf(FileHtml,[m3 '</br>']);
fprintf(FileHtml,[m4 '</br>']);
h1=figure('Name','Модельное изображение (исходное Image0) im3d');
hold on
x = (1:0.01:5);
for beta=-5:0.1:5
    y = sin(7*x);
    plot(x,y);
end
hold off
FileName000=[File1NameExp '_7.jpg'];
saveas(h1,FileName000);
fprintf(FileHtml,['<br><br> Графики \n']);
fprintf(FileHtml,['<a href="' FileName000 '">']);
fprintf(FileHtml,['<br><img src="'...
    FileName000 '" height="' PictHigh1 '" >' '\n']);
fprintf(FileHtml,['</a>\n']);
fprintf(FileHtml,['</body>\n']);
fprintf(FileHtml,['</HTML>\n']);
fclose(FileHtml);
close all
