module PoolParty
  class SendMail
    # this needs to install and configure sendmail
    # sudo apt-get install sendmail
    # sudo sendmailconfig (just say "Y" to all the questions)
    # first thought is just to get this to be a sender, no open port 25 for relaying
    # /usr/sbin/sendmail -q1h == just for sending

    plugin :sendmail do
      def enable
        has_package(:name => "sendmail")
      end
    end
  end
end

