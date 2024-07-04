class CreateVolunteers < ActiveRecord::Migration[7.1]
  def change
    create_table :volunteers do |t|
      t.string :name
      t.string :job
      t.string :description
      t.string :facebook_url
      t.string :twitter_url
      t.string :linkedin_url

      t.timestamps
    end
  end
end
