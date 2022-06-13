"Dairy.vim
"マークダウンファイルの先頭に日付を入れて日記にしてくれる。

%s/$/  /
%d"2
let @1=strftime("%Y/%m/%d")
r ../template/template_dairy.txt
%s/Date/\=@1/
$pu
1m$
$d


