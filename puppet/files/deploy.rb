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
        p '*'*10
        p request[:source]
        p '*'*10
      end
    end
  end
end
