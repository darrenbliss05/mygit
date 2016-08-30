require 'spec_helper'
describe 'mygit' do
  let :facts do
      {
        osfamily: 'RedHat',
        operatingsystemrelease: '7.2.1511',
      }
  end
  context 'with default values for all parameters' do
    it { is_expected.to contain_class('mygit') }
    it { should contain_class('mygit::params') }
    it { should contain_class('mygit::install') }
    it { should contain_class('mygit::config') }
  end
end

describe 'mygit::config' do
  let :facts do
      {
        osfamily: 'RedHat',
        operatingsystemrelease: '7.2.1511',
      }
  end
  let (:title) {'config'}
  it do 
   is_expected.to contain_file('/etc/gitconfig').with({
   :mode    => '0644',
   :content => /alias/,
   :owner   => 'root',
   :group   => 'root',
  })  
 end 
end
