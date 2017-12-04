class ListOfUrls < ActiveRecord::Migration[5.1]

  def up
    create_table :list_of_urls do |t|
      t.string :url
    end
  end

  def down
    drop_table :list_of_urls
  end

end
