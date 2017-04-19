require './lib/models/user'

describe User do

  it { is_expected.to have_property :id }
  it { is_expected.to have_property :username }
  it { is_expected.to have_property :password }
  it { is_expected.to have_property :email }
  it { is_expected.to have_property :admin }

  it { is_expected.to respond_to :admin? }

  it { is_expected.to_not be_admin }
end
