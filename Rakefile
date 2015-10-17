require 'rake'
require 'erb'

desc "install the dot files into user's home directory"
task :install do
  replace_all = false
  Dir['*'].each do |file|
    next if %w[Rakefile README.rdoc LICENSE].include? file

    if File.exist?(File.join(ENV['HOME'], ".#{file.sub('.erb', '')}"))
      if File.identical? file, File.join(ENV['HOME'], ".#{file.sub('.erb', '')}")
        puts "identical ~/.#{file.sub('.erb', '')}"
      elsif replace_all
        replace_file(file)
      else
        print "overwrite ~/.#{file.sub('.erb', '')}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/.#{file.sub('.erb', '')}"
        end
      end
    else
      replace_file(file)
    end
  end
end

desc "update all vim submodules"
namespace "vim" do
  task :update_submodules do
    vim_dir = File.join(ENV['HOME'], '.vim')

    if Dir.exists?(vim_dir)
      if system "cd #{vim_dir} && git submodule update --init --recursive"
        puts
        puts 'Success: all vim submodules updated.'
      end
    else
      puts "Fail: #{vim_dir} does not exist yet! Please 'rake -f Rakefile install' first."
    end
  end
end

def replace_file(file)
  system %Q{rm -rf "$HOME/.#{file.sub('.erb', '')}"}

  if file =~ /.erb$/
    puts "generating ~/.#{file.sub('.erb', '')}"
    File.open(File.join(ENV['HOME'], ".#{file.sub('.erb', '')}"), 'w') do |new_file|
      new_file.write ERB.new(File.read(file)).result(binding)
    end
  else
    puts "linking ~/.#{file}"
    system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
  end
end
