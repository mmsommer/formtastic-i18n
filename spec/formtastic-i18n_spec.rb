require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

Dir.glob('locale/*.yml').each do |locale_file|
  describe "a formtastic-i18n #{locale_file} locale file" do
    it_behaves_like 'a valid locale file', locale_file
    it { locale_file.should be_a_subset_of 'locale/en.yml' }
  end
end
