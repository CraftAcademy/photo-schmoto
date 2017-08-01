require 'rails_helper'

RSpec.describe Photo, type: :model do
  it { is_expected.to have_db_column :id }
  it { is_expected.to have_db_column :title }
  it { is_expected.to have_db_column :image_path }
  it { is_expected.to have_db_column :price }

end
