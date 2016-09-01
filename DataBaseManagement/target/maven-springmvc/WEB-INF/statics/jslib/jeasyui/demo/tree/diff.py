# -*- encoding:utf-8 -*-
import difflib
file1 = open('tree_data1.json')
file2 = open('tree_data11.json')
try:
    file1_text = file1.read()
    file2_text = file2.read()
finally:
    file1.close()
    file2.close()

file1_lines = file1_text.splitlines()
file2_lines = file2_text.splitlines()

d = difflib.HtmlDiff()
print d.make_file(file1_lines,file2_lines)
