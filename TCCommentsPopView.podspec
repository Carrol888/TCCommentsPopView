
Pod::Spec.new do |s|
    s.name         = 'TCCommentsPopView'
    s.version      = 'v0.0.3'
    s.summary      = '纵享丝滑'
    s.description  =  <<-DESC
                         纵享丝滑,德芙巧克力……
                      DESC
    s.homepage     = 'https://github.com/gitwangxiancheng/TCCommentsPopView.git'
    s.license      = 'MIT'
    s.authors      = { "jace chen" => "18191459044@163.com" }
    s.platform     = :ios, '9.0'
    s.source       = {:git => 'https://github.com/gitwangxiancheng/TCCommentsPopView.git', :tag => s.version}
    s.source_files = 'TCCommentsPopView', 'TCCommentsPopView/**/*.{h,m}'
    s.requires_arc = true
end
