echo "0. Compress sample cmd"
echo "9.  .tar.xz"
echo "10. .z"
read option

case "$option" in
    "0")
    echo "Compress sample"
    ;;
    "9")
    echo "1. compression 2. decompression"
    read options
    echo "Input file name"
    if [ $options = 1 ];
    then
        read filename
        tar jcvf "$filename".tar.xz "$filename"            
    else
        if [ $options = 2 ];
        then
        read filename
        tar jxvf "$filename".tar.xz        
        else
            echo "ERROR"
        fi
    fi
    ;;
    "10")
    echo "1. compression 2. decompression"
    read options
    echo "Input file name"
    if [ $options = 1 ];
    then
        read filename
        compress -c "$filename" > "$filename".z
    else
        if [ $options = 2 ];
        then
            read filename
            uncompress "$filename".z
        else
            echo "ERROR"
        fi
    fi
    ;;
    "*")
    echo "Not supported"
    ;;
    
esac
