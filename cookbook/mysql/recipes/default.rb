#install mysql client & server
%w(mysql-client libmysqlclient-dev mysql-server).each do |pkg|
  package pkg
end
