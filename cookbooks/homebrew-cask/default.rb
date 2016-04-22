require "itamae/plugin/resource/cask"
include_recipe "../homebrew/default.rb"

execute "install brew-cask" do
  not_if "brew cask"
  command "brew tap caskroom/cask"
end

execute "export app_dir for brew-cask" do
  command 'export HOMEBREW_CASK_OPTS="--appdir=/Applications"'
end

node.reverse_merge!(
  cask_packages: [],
)

node[:cask_packages].each do |name|
  cask name
end
