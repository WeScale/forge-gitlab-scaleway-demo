#!/bin/bash

echo "postgresql['enable'] = false" >> /etc/gitlab/gitlab.rb
echo "gitlab_rails['db_adapter'] = 'postgresql'" >> /etc/gitlab/gitlab.rb
echo "gitlab_rails['db_encoding'] = 'unicode'" >> /etc/gitlab/gitlab.rb
echo "gitlab_rails['db_host'] = '${endpoint}'" >> /etc/gitlab/gitlab.rb
echo "gitlab_rails['db_username'] = '${user}'" >> /etc/gitlab/gitlab.rb
echo "gitlab_rails['db_database'] = 'rds'" >> /etc/gitlab/gitlab.rb
echo "gitlab_rails['db_password'] = '${password}'" >> /etc/gitlab/gitlab.rb
echo "gitlab_rails['db_port'] = '${port}'" >> /etc/gitlab/gitlab.rb

gitlab-ctl reconfigure
