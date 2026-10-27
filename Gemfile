source 'https://rubygems.org'
gem 'github-pages', group: :jekyll_plugins
# 以下 gem 在 Ruby >= 3.4 后不再内置，jekyll 3.x / liquid 运行时需要
gem 'csv'
gem 'bigdecimal'
gem 'logger'
gem 'webrick'  # Ruby >= 3.0 不再内置，jekyll serve 内置服务器需要
# 本地兼容 gem：恢复 Ruby 3.0+ 移除的 taint API，供 liquid 4 在新版 Ruby 上运行
gem 'rb3-shim', path: '_shim/rb3-shim', group: :jekyll_plugins
