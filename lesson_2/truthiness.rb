# Ruby, booleans are represented by the true and false objects. Like everything else in Ruby, boolean 
#objects also have real classes behind them, and you can call methods on true and false

true.class      # => TrueClass
true.nil?       # => false
true.to_s       # => "true"
true.methods    # => list of methods you can call on the true object

false.class      # => FalseClass
false.nil?       # => false
false.to_s       # => "false"
false.methods    # => list of methods you can call on the true object

=begin
Methods list
[:inspect, :to_s, :===, :|, :&, :^, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, 
:instance_variable_get, :instance_variable_set, :instance_variables, :protected_methods, :private_methods, :public_send, :method, 
:public_method, :singleton_method, :define_singleton_method, :extend, :to_enum, :enum_for, :<=>, :=~, :!~, :eql?, :respond_to?, :freeze, 
:object_id, :send, :display, :class, :nil?, :hash, :dup, :singleton_class, :clone, :then, :itself, :yield_self, :untaint, :taint, 
:tainted?, :trust, :untrust, :untrusted?, :singleton_methods, :frozen?, :methods, :public_methods, :equal?, :!, :==, :instance_exec, 
:!=, :instance_eval, :__id__, :__send__] 
=end