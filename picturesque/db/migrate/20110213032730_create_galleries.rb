class CreateGalleries < ActiveRecord::Migration
  def self.up
    create_table :galleries do |t|
      t.string :name
      t.timestamps
    end

    Gallery.create :name => "My Test Gallery"
  end

  def self.down
    drop_table :galleries
  end
end
