require_dependency 'update_status_on_percentage_hooks'

Redmine::Plugin.register :update_status_on_percentage do
  name 'Update Status on Percentage Change plugin'
  author 'Maciej Dems'
  description 'This plugin changes status "New" to "In progress" if percentage is changed'
  version '0.0.1'
  author_url 'http://fizyka.p.lodz.pl/en/about-the-institute/employees/maciej-dems/'
end
