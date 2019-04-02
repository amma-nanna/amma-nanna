# amma-nanna
node {
stage('deploy to tomcat')
sshagent(['tomcat']) {
    sh 'scp -o StrictHostKeyChecking=no /tmp/*war /opt/tomcat/apache-tomcat-8.5.39/webapps'
}
