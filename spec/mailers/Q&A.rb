=beging
1. 已经用devise创建了用户表，生成action mailer user 的时候不能调用UsersController#create
---解决:
   class Users::RegistrationsController < Devise::RegistrationsController
   1) 重写controller类继承自devise的controller
   devise_for :users, controllers: { registrations: 'users/registrations' }
   2) 在routes.rb 中添加新增的controller
2. 链接邮件服务器失败
   config/environments/$rails_env.rb 中这样配置gmail邮件服务器

  config.action_mailer.delivery_method = :smtp

  config.action_mailer.smtp_settings = {
      address:           'smtp.gmail.com',
      port:               587,
      domain:             'example.com',
      user_name:          'longxing386@gmail.com',
      password:           '',
      authentication:     'plain',
      enable_starttls_auto: true
  }
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.default_options = {from: 'longxing386@gmail.com'}
=end