# start buildspec
sudo su 
#mv /home/ubuntu/kiet-infra-application/target/* /home/ubuntu/kiet-infra-application/backup/
cd /home/ubuntu/kiet-infra-application/target/
pid=$(pgrep -f "demo-0.0.1-SNAPSHOT.jar")
echo "PID: $pid"
kill -9 "$pid"
ls
# value=`cat number.txt`
# echo $value
# docker stop nuvepro
# docker rm -f nuvepro
# aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 418843764796.dkr.ecr.ap-south-1.amazonaws.com
# docker pull 418843764796.dkr.ecr.ap-south-1.amazonaws.com/nuvepro:nuvepro-$value
# docker run -d -p 8080:8083 --name nuvepro 418843764796.dkr.ecr.ap-south-1.amazonaws.com/nuvepro:nuvepro-$value
#sudo nohup java -jar demo-0.0.1-SNAPSHOT.jar &
nohup java -jar demo-0.0.1-SNAPSHOT.jar > output.log 2>&1 &
