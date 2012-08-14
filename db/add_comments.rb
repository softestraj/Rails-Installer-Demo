class AddComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
       t.integer   :id,         :null => false # optional, see Authlogic::Session::MagicColumns
       t.integer   :user_id,  :null => false
    end
  end

  def self.down
    drop_table :comments
  end
end
