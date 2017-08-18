docker stop jenkins || echo "Nothing to see here! :D"
docker rm jenkins || echo "Nothing to see here! :D"
docker pull jenkins
docker run --detach --publish 49000:8080 --name jenkins jenkins
echo "Waiting for Jenkins process to start ...."
for i in {0..30};
do
    echo -n "."
    sleep 1
done
echo
echo -n "Here's the admin password!    "
docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
echo "Browse to http://localhost:49000"
