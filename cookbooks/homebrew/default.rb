execute "install homebrew" do
  not_if "brew -v"
  www_script_path = 'https://raw.githubusercontent.com/Homebrew/install/master/install'
  command "ruby -e $(curl -fsSL #{www_script_path})"
end

node.reverse_merge!(
  brew_packages: [],
)

node[:brew_packages].each do |name|
  package name
end
