Pod::Spec.new do |s|
  s.name             = 'KVKCalendar'
  s.version          = '0.5.5'
  s.summary          = 'A most fully customization calendar and timeline library for iOS.'
  
  s.description      = <<-DESC
  KVKCalendar is a most fully customization calendar and timeline library.
  Library consists of four modules for displaying various types of calendar (day, week, month, year).
  You can choose any module or use all. It is designed based on a standard iOS calendar, but with additional features.
  Timeline displays the schedule for the day and week.
                       DESC

  s.homepage         = 'https://github.com/kvyatkovskys/KVKCalendar'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Sergei Kviatkovskii' => 'sergejkvyatkovskij@gmail.com' }
  s.source           = { :git => 'https://github.com/kvyatkovskys/KVKCalendar.git', :tag => s.version.to_s }
  s.social_media_url = 'https://github.com/kvyatkovskys'
  s.ios.deployment_target = '10.0'
  s.source_files     = 'Sources/**/*.swift'
  s.frameworks       = 'UIKit', 'EventKit'
  s.swift_version    = '5.0'
end
