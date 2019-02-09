Thread.new do
  system 'ruby -rwebrick -e "WEBrick::HTTPServer.new(:DocumentRoot => \"./\", :Port => 8000).start"'
end
Thread.new do
  system 'open -a Google\ Chrome -n --args http://localhost:8000/'
end
