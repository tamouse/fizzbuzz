# A modified sample Guardfile
# More info at https://github.com/guard/guard#readme

guard :bundler do
  watch('Gemfile')
  # Uncomment next line if your Gemfile contains the `gemspec' command.
  # watch(/^.+\.gemspec/)
end

guard :rspec, :cmd => "bundle exec rspec" do
  watch(%r{^spec/.+_spec\.rb$})

  # The assumption made here is that your spec directory reflects
  # the lib directory exactly. Thus the tests for something like
  # lib/widget.rb would be in spec/lib/widget_spec.rb, and
  # lib/widget/some_class.rb would be in spec/lib/widget/some_class_spec.rb
  # Thus, NOT the way bundle gem sets things up!
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }

  # Note that if you do start from bundle gem, the following line
  # should work for that:
  # watch(%r{^lib/(.+)\.rb$})     { |m| "spec/#{m[1]}_spec.rb" }

  watch('spec/spec_helper.rb')  { "spec" }
end
