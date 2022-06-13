"tabArcaver.vim

%s/$/  /
%d
r ../template/template_dairy.txt
6pu
1d
%s/<md.*/今日のタブ/
%s/<h2>/タブ\r/
g/^#.*</d

