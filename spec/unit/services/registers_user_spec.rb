require 'spec_helper'

describe RegistersUser do
  let(:user_creator) { mock('user_creator') }
  subject(:registers_user) { RegistersUser.new }

  it 'registers a new user' do
    user_creator.expects(:find_or_create_by).with(username: 'username')
    registers_user.(username: 'username', user_creator: user_creator)
  end

end
