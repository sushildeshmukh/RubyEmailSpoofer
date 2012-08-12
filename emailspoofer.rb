require 'rubygems'
require 'mailfactory'

def send_email(to, from, subject='', text='', attachments=[])
  mail_builder = MailFactory.new
  mail_builder.to = to
  mail_builder.from = from
  mail_builder.subject = subject
  mail_builder.text = text
  attachments.each{ |attachment| mail_builder.attach(attachment)}
end