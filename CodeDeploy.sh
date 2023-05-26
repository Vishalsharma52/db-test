export lquser=`aws secretsmanager get-secret-value --secret-id dbsecret --region ap-south-1   | jq --raw-output .SecretString | jq -r ."username"`
export lqpassword=`aws secretsmanager get-secret-value --secret-id dbsecret --region ap-south-1   | jq --raw-output .SecretString | jq -r ."password"`
export hostname=`aws secretsmanager get-secret-value --secret-id dbsecret --region ap-south-1   | jq --raw-output .SecretString | jq -r ."host"`
export portnumber=`aws secretsmanager get-secret-value --secret-id dbsecret --region ap-south-1   | jq --raw-output .SecretString | jq -r ."port"`

bash $JENKINS_HOME/liquibase/liquibase --changeLogFile=$1 --username=$lquser --password=$lqpassword --classpath=$JENKINS_HOME/liquibase/sqljdbc_12.2/enu/mssql-jdbc-12.2.0.jre8.jar --url="jdbc:sqlserver://$hostname:$portnumber;encrypt=false;trustServerCertificate=true;" update
