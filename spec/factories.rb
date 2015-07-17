FactoryGirl.define do
  factory(:project) do
    name("KindMind.com")
    description("A cool website I'm working on.")
    url("www.kindmind.com")
  end

  factory(:blog) do
    title("A new blog post")
    content("New blog post content")
  end

  factory(:comment) do
    author("Bill Brasky")
    text("Great post!")
  end

  factory(:user) do
    email("user@test.com")
    password("123abc!!")
  end

  factory(:admin, class: User) do
		email("admin@test.com")
		password("123abc!!")
		admin(true)
	end
end
