
Awestruct::Extensions::Pipeline.new do
  extension Awestruct::Extensions::Posts.new( '/blog' ) 
  extension Awestruct::Extensions::Paginator.new( :posts, '/index', :per_page=>10 )
  extension Awestruct::Extensions::Tagger.new( :posts, '/index', '/blog/tags', :per_page=>10 )
  extension Awestruct::Extensions::TagCloud.new( :posts, '/blog/tags/index.html', :layout=>:base, :title=>'Blog Tags' )
  extension Awestruct::Extensions::Atomizer.new( :posts, '/blog.atom', :num_entries=>14 )
  extension Awestruct::Extensions::Disqus.new
  extension Awestruct::Extensions::Indexifier.new

  helper Awestruct::Extensions::GoogleAnalytics
end

