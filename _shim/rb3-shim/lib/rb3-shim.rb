# Ruby >= 3.0 移除了 Object#taint / untaint / tainted? 安全 API，
# 而 github-pages 锁定的 liquid 4.0.x 仍在使用它们。
# 此 shim 将这些方法恢复为 no-op，保证旧版 liquid 在新 Ruby 上可运行。
# 加载方式：作为 :jekyll_plugins 组的本地 path gem，由 Bundler.require 在任何渲染前载入。
# （github-pages gem 强制 safe: true，_plugins 目录会被忽略，故采用本地 gem 方案。）
class Object
  unless method_defined?(:taint)
    def taint
      self
    end

    def untaint
      self
    end

    def tainted?
      false
    end
  end
end
