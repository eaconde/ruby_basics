
best = nil
best ||= 'ham'
puts best # => ham

best ||= 'cheese'
puts best # => ham. won't assign cheese as best already has a value

best = 'bacon'
puts best # => bacon!

best = ''
best ||= 'eggs'
puts best # => ''. empty is not nil so bacon & eggs is not set

best = 'bacon & eggs!'
puts best # => bacon & eggs
