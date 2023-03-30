class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body

      # timestamps method defines a 'created_at' and 'updated_at' 
      # of the following format "2023-03-30 21:20:13.843674"
      t.timestamps
      
    end
  end
end

# IRB notation
# Article.find(1)
# => <Article id: 1, title: "Hello Rails", body: "I am on Rails!", created_at: "2020-01-18 23:47:30", updated_at: "2020-01-18 23:47:30">

# Article.all
# => #<ActiveRecord::Relation [#<Article id: 1, title: "Hello Rails", body: "I am on Rails!", created_at: "2020-01-18 23:47:30", updated_at: "2020-01-18 23:47:30">]>
