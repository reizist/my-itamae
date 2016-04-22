include_recipe "../homebrew/default.rb"

execute "install brew-cask" do
  not_if "brew cask"
  command "brew tap caskroom/cask"
end
