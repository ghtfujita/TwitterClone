class CreateTwclones < ActiveRecord::Migration[5.2]
  def change
    create_table :twclones do |t|

      t.text :content
      t.timestamps
    end
  end
end
