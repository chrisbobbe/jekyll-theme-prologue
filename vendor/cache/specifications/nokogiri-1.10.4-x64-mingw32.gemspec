# -*- encoding: utf-8 -*-
# stub: nokogiri 1.10.4 x64-mingw32 lib

Gem::Specification.new do |s|
  s.name = "nokogiri".freeze
  s.version = "1.10.4"
  s.platform = "x64-mingw32".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Aaron Patterson".freeze, "Mike Dalessio".freeze, "Yoko Harada".freeze, "Tim Elliott".freeze, "Akinori MUSHA".freeze, "John Shahid".freeze, "Lars Kanis".freeze]
  s.date = "2019-08-11"
  s.description = "Nokogiri (\u92F8) is an HTML, XML, SAX, and Reader parser.  Among\nNokogiri's many features is the ability to search documents via XPath\nor CSS3 selectors.".freeze
  s.email = ["aaronp@rubyforge.org".freeze, "mike.dalessio@gmail.com".freeze, "yokolet@gmail.com".freeze, "tle@holymonkey.com".freeze, "knu@idaemons.org".freeze, "jvshahid@gmail.com".freeze, "lars@greiz-reinsdorf.de".freeze]
  s.executables = ["nokogiri".freeze]
  s.extra_rdoc_files = ["LICENSE-DEPENDENCIES.md".freeze, "LICENSE.md".freeze, "README.md".freeze, "ext/nokogiri/html_document.c".freeze, "ext/nokogiri/html_element_description.c".freeze, "ext/nokogiri/html_entity_lookup.c".freeze, "ext/nokogiri/html_sax_parser_context.c".freeze, "ext/nokogiri/html_sax_push_parser.c".freeze, "ext/nokogiri/nokogiri.c".freeze, "ext/nokogiri/xml_attr.c".freeze, "ext/nokogiri/xml_attribute_decl.c".freeze, "ext/nokogiri/xml_cdata.c".freeze, "ext/nokogiri/xml_comment.c".freeze, "ext/nokogiri/xml_document.c".freeze, "ext/nokogiri/xml_document_fragment.c".freeze, "ext/nokogiri/xml_dtd.c".freeze, "ext/nokogiri/xml_element_content.c".freeze, "ext/nokogiri/xml_element_decl.c".freeze, "ext/nokogiri/xml_encoding_handler.c".freeze, "ext/nokogiri/xml_entity_decl.c".freeze, "ext/nokogiri/xml_entity_reference.c".freeze, "ext/nokogiri/xml_io.c".freeze, "ext/nokogiri/xml_libxml2_hacks.c".freeze, "ext/nokogiri/xml_namespace.c".freeze, "ext/nokogiri/xml_node.c".freeze, "ext/nokogiri/xml_node_set.c".freeze, "ext/nokogiri/xml_processing_instruction.c".freeze, "ext/nokogiri/xml_reader.c".freeze, "ext/nokogiri/xml_relax_ng.c".freeze, "ext/nokogiri/xml_sax_parser.c".freeze, "ext/nokogiri/xml_sax_parser_context.c".freeze, "ext/nokogiri/xml_sax_push_parser.c".freeze, "ext/nokogiri/xml_schema.c".freeze, "ext/nokogiri/xml_syntax_error.c".freeze, "ext/nokogiri/xml_text.c".freeze, "ext/nokogiri/xml_xpath_context.c".freeze, "ext/nokogiri/xslt_stylesheet.c".freeze]
  s.files = ["LICENSE-DEPENDENCIES.md".freeze, "LICENSE.md".freeze, "README.md".freeze, "bin/nokogiri".freeze, "ext/nokogiri/html_document.c".freeze, "ext/nokogiri/html_element_description.c".freeze, "ext/nokogiri/html_entity_lookup.c".freeze, "ext/nokogiri/html_sax_parser_context.c".freeze, "ext/nokogiri/html_sax_push_parser.c".freeze, "ext/nokogiri/nokogiri.c".freeze, "ext/nokogiri/xml_attr.c".freeze, "ext/nokogiri/xml_attribute_decl.c".freeze, "ext/nokogiri/xml_cdata.c".freeze, "ext/nokogiri/xml_comment.c".freeze, "ext/nokogiri/xml_document.c".freeze, "ext/nokogiri/xml_document_fragment.c".freeze, "ext/nokogiri/xml_dtd.c".freeze, "ext/nokogiri/xml_element_content.c".freeze, "ext/nokogiri/xml_element_decl.c".freeze, "ext/nokogiri/xml_encoding_handler.c".freeze, "ext/nokogiri/xml_entity_decl.c".freeze, "ext/nokogiri/xml_entity_reference.c".freeze, "ext/nokogiri/xml_io.c".freeze, "ext/nokogiri/xml_libxml2_hacks.c".freeze, "ext/nokogiri/xml_namespace.c".freeze, "ext/nokogiri/xml_node.c".freeze, "ext/nokogiri/xml_node_set.c".freeze, "ext/nokogiri/xml_processing_instruction.c".freeze, "ext/nokogiri/xml_reader.c".freeze, "ext/nokogiri/xml_relax_ng.c".freeze, "ext/nokogiri/xml_sax_parser.c".freeze, "ext/nokogiri/xml_sax_parser_context.c".freeze, "ext/nokogiri/xml_sax_push_parser.c".freeze, "ext/nokogiri/xml_schema.c".freeze, "ext/nokogiri/xml_syntax_error.c".freeze, "ext/nokogiri/xml_text.c".freeze, "ext/nokogiri/xml_xpath_context.c".freeze, "ext/nokogiri/xslt_stylesheet.c".freeze]
  s.licenses = ["MIT".freeze]
  s.post_install_message = "Nokogiri is built with the packaged libraries: libxml2-2.9.9, libxslt-1.1.33, zlib-1.2.11, libiconv-1.15.\n".freeze
  s.rdoc_options = ["--main".freeze, "README.md".freeze]
  s.required_ruby_version = Gem::Requirement.new([">= 2.3".freeze, "< 2.7.dev".freeze])
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Nokogiri (\u92F8) is an HTML, XML, SAX, and Reader parser".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mini_portile2>.freeze, ["~> 2.4.0"])
      s.add_development_dependency(%q<concourse>.freeze, ["~> 0.24"])
      s.add_development_dependency(%q<hoe-bundler>.freeze, ["~> 1.2"])
      s.add_development_dependency(%q<hoe-debugging>.freeze, ["~> 2.0"])
      s.add_development_dependency(%q<hoe-gemspec>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<hoe-git>.freeze, ["~> 1.6"])
      s.add_development_dependency(%q<minitest>.freeze, ["~> 5.8"])
      s.add_development_dependency(%q<racc>.freeze, ["~> 1.4.14"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 12.0"])
      s.add_development_dependency(%q<rake-compiler>.freeze, ["~> 1.0.3"])
      s.add_development_dependency(%q<rake-compiler-dock>.freeze, ["~> 0.7.0"])
      s.add_development_dependency(%q<rexical>.freeze, ["~> 1.0.5"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.73"])
      s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.16"])
      s.add_development_dependency(%q<rdoc>.freeze, [">= 4.0", "< 7"])
      s.add_development_dependency(%q<hoe>.freeze, ["~> 3.18"])
    else
      s.add_dependency(%q<mini_portile2>.freeze, ["~> 2.4.0"])
      s.add_dependency(%q<concourse>.freeze, ["~> 0.24"])
      s.add_dependency(%q<hoe-bundler>.freeze, ["~> 1.2"])
      s.add_dependency(%q<hoe-debugging>.freeze, ["~> 2.0"])
      s.add_dependency(%q<hoe-gemspec>.freeze, ["~> 1.0"])
      s.add_dependency(%q<hoe-git>.freeze, ["~> 1.6"])
      s.add_dependency(%q<minitest>.freeze, ["~> 5.8"])
      s.add_dependency(%q<racc>.freeze, ["~> 1.4.14"])
      s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
      s.add_dependency(%q<rake-compiler>.freeze, ["~> 1.0.3"])
      s.add_dependency(%q<rake-compiler-dock>.freeze, ["~> 0.7.0"])
      s.add_dependency(%q<rexical>.freeze, ["~> 1.0.5"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.73"])
      s.add_dependency(%q<simplecov>.freeze, ["~> 0.16"])
      s.add_dependency(%q<rdoc>.freeze, [">= 4.0", "< 7"])
      s.add_dependency(%q<hoe>.freeze, ["~> 3.18"])
    end
  else
    s.add_dependency(%q<mini_portile2>.freeze, ["~> 2.4.0"])
    s.add_dependency(%q<concourse>.freeze, ["~> 0.24"])
    s.add_dependency(%q<hoe-bundler>.freeze, ["~> 1.2"])
    s.add_dependency(%q<hoe-debugging>.freeze, ["~> 2.0"])
    s.add_dependency(%q<hoe-gemspec>.freeze, ["~> 1.0"])
    s.add_dependency(%q<hoe-git>.freeze, ["~> 1.6"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.8"])
    s.add_dependency(%q<racc>.freeze, ["~> 1.4.14"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
    s.add_dependency(%q<rake-compiler>.freeze, ["~> 1.0.3"])
    s.add_dependency(%q<rake-compiler-dock>.freeze, ["~> 0.7.0"])
    s.add_dependency(%q<rexical>.freeze, ["~> 1.0.5"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.73"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.16"])
    s.add_dependency(%q<rdoc>.freeze, [">= 4.0", "< 7"])
    s.add_dependency(%q<hoe>.freeze, ["~> 3.18"])
  end
end
