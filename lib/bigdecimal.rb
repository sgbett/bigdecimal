if RUBY_ENGINE == 'jruby'
  JRuby::Util.load_ext("org.jruby.ext.bigdecimal.BigDecimalLibrary")
else
  require 'bigdecimal.so'
end

# restore support for rails 4.2.x
def BigDecimal.new(*args, **kwargs)
  BigDecimal(*args, **kwargs)
end
