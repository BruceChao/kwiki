@echo off
title ͬ����github.. 

cls
echo ��ʼͬ��...

:: get date and time 
for /f "delims=" %%a in ('date/t') do @set mydate=%%a 
for /f "delims=" %%a in ('time/t') do @set mytime=%%a 
set msg=%mydate%%mytime% 

:: add all new files 
call git add . 

:: �������� commit ��Ϣ

Set /p cmsg=������Commitע�ͣ�������Ϊ�ύʱ�䣩: 
if not {%cmsg%}=={''} set msg=%cmsg%
call git commit -a -m "%msg% - %mydate%"

call git push origin master
