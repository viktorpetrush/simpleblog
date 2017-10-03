Category.create!(name: "First Category", description: "Category Description")
Category.create!(name: "Second Category", description: "Category Description")

Post.create!(name: "Post > First category", content: "post content", category_id: 1)
Post.create!(name: "Post > Second category", content: "post content", category_id: 2)

Category.last.comments.create(author: "Ivan Zabuv", content: "category comment content")
Post.last.comments.create(author: "Ivan Zabuv", content: "post comment content")

