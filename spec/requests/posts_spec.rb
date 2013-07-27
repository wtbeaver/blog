require 'spec_helper'

describe "Posts" do
  describe "GET /posts" do
    it "display some posts" do
      visit posts_path
      page.should have_content 'First Post' 
    end
  end
end
