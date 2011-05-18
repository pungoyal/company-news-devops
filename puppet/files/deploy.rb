module MCollective
  module Agent
    class Deploy < RPC::Agent
      metadata :name => "Deploy",
               :description => "Deployment agent",
               :author => "Anonymous",
               :version => "0.1",
               :license => "private",
               :url => "http://cn.com",
               :timeout => 600

      action "war" do
        validate :source, String
        `wget #{request[:source]} -o companyNews.war`
        `sudo service tomcat6 stop`
        `rm -f /var/lib/tomcat6/webapps/*`
        `mv companyNews.war /var/lib/tomcat6/webapps/`
        `sudo chown tomcat:tomcat /var/lib/tomcat6/webapps/companyNews.war`
        `sudo service tomcat6 start`
      end
    end
  end
end
