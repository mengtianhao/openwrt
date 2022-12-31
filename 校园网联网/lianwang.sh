#! /bin/bash    
    
timeout=5   
           
target=www.baidu.com   
     
ret_code=`curl -I -s --connect-timeout $timeout $target -w %{http_code} | tail -n1`  
     
if [ "x$ret_code" = "x200" ]; then   
echo "has internet" 
else  
echo "no internet"
python netlogin.py 20212104157 Xm091201 3  
fi
