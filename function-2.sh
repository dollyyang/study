#!/bin/bash
function Check_Url(){
curl -I -s $1|head -1 && return 0 | return 1
}

Check_Url www.baidu.com
