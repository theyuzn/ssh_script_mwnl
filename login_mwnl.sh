#!/bin/bash 
#!/bin/sh 

count=0
LOGIN_IDX=-1
host=name@127.0.0.01
. ssh.conf

login(){
    echo "ssh log in with $host"
    ssh $host
}

print_opt(){
    echo ""
    echo "You want to login what?"
    echo "Press index to login."
    echo "1.) $HOST_NAME_1"
    echo "2.) $HOST_NAME_2"
    echo "3.) $HOST_NAME_3"
    echo "4.) $HOST_NAME_4"
    echo "5.) $HOST_NAME_5"
}

wait_opt(){
    while : ; do
        read -n 1 k <&1
        case $k in
        
            1)  host=$HOST_NAME_1@$HOST_IP
                break
                ;;
            2)  host=$HOST_NAME_2@$HOST_IP
                break
                ;;
            3)  host=$HOST_NAME_3@$HOST_IP
                break
                ;;
            4)  host=$HOST_NAME_4@$HOST_IP
                break
                ;;
            5)  host=$HOST_NAME_5@$HOST_IP
                break
                ;;
            *)  print_opt
        esac
    done
}

main(){
    print_opt
    wait_opt
    printf "\nssh log in with \n$host\n"
    login $host
}

main






