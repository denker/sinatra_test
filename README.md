# Sinatra + RSpec for API applications

Based on http://shiroyasha.io/sinatra-app-with-rspec.html

## RSpec in Atom

Unit test are a lot more useful if we can launch it right from the editor.

1. Install package *rspec* (https://atom.io/packages/rspec)
2. Set rspec formatter to progress (this project spec_helper sets 'documentation' if only one test file run)
Atom -> Config...
add
~~~~
"*":
<...>
  rspec:
    command: "bundle exec rspec --format progress"
~~~~
2. Set hotkeys if necessary (Atom -> Keymap... ->  )
~~~
'atom-text-editor':
  'ctrl-cmd-z':     'rspec:run-all'
~~~
