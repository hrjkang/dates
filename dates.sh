#!/bin/bash
#输入两个日期，第一个开始，第二个结束，输出开始到结束所有日期
begin=$1
end=$2
if  [ ! -n "$end" ] 
then 
    end=`date -d "-1 day" +%Y-%m-%d`
fi
val1=`date -d "$begin" +%s`
val2=`date -d "$end" +%s`
while (( val2 > val1 ))
do
    val1=`date -d "$begin" +%s`
	val2=`date -d "$end" +%s`
    echo $begin
	begin=`date -d "$begin +1 day " +%Y-%m-%d`
done

