sudo yum update -y

sudo yum install wget -y

sudo yum install java-1.8.0-openjdk.x86_64 -y

mkdir /app

cd /app

wget https://download.sonatype.com/nexus/3/nexus-3.39.0-01-unix.tar.gz

sudo tar -xvf nexus-3.39.0-01-unix.tar.gz

rm nexus-3.39.0-01-unix.tar.gz

mv nexus-3.39.0-01 nexus

sudo adduser nexus

sudo chown -R nexus:nexus /app/nexus

sudo chown -R nexus:nexus /app/sonatype-work

# after you have to add user 

vim /app/nexus/bin/nexus.rc
run_as_user="nexus"

./nexus/bin/nexus start
./nexus/bin/nexus/ status
sudo firewall-cmd --add-port=8081/tcp -permanent
