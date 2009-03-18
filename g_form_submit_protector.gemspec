# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{g_form_submit_protector}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["C. Jason Harrelson (midas)"]
  s.date = %q{2009-03-17}
  s.description = %q{FIX (describe your package)}
  s.email = ["jason@lookforwardenterprises.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc"]
  s.files = [".git/HEAD", ".git/config", ".git/description", ".git/hooks/applypatch-msg.sample", ".git/hooks/commit-msg.sample", ".git/hooks/post-commit.sample", ".git/hooks/post-receive.sample", ".git/hooks/post-update.sample", ".git/hooks/pre-applypatch.sample", ".git/hooks/pre-commit.sample", ".git/hooks/pre-rebase.sample", ".git/hooks/prepare-commit-msg.sample", ".git/hooks/update.sample", ".git/index", ".git/info/exclude", ".git/logs/HEAD", ".git/logs/refs/heads/master", ".git/logs/refs/remotes/origin/HEAD", ".git/objects/pack/pack-7e4cfff7cd288f3f7739b98beb822c8742094d56.idx", ".git/objects/pack/pack-7e4cfff7cd288f3f7739b98beb822c8742094d56.pack", ".git/packed-refs", ".git/refs/heads/master", ".git/refs/remotes/origin/HEAD", "History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "g_form_submit_protector.gemspec", "lib/g_form_submit_protector.rb", "lib/g_form_submit_protector/view_helpers.rb", "rails_generators/form_submit_protector_assets/form_submit_protector_assets_generator.rb", "rails_generators/form_submit_protector_assets/templates/guilded.form_submit_protector.js", "rails_generators/form_submit_protector_assets/templates/guilded.form_submit_protector.min.js", "rails_generators/form_submit_protector_assets/templates/jquery-disable_on_submit-1.0.js", "rails_generators/form_submit_protector_assets/templates/jquery-disable_on_submit-1.0.min.js", "script/console", "script/destroy", "script/generate", "spec/g_form_submit_protector_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "tasks/rspec.rake"]
  s.has_rdoc = true
  s.homepage = %q{FIX (url)}
  s.post_install_message = %q{PostInstall.txt}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{g_form_submit_protector}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{FIX (describe your package)}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<newgem>, [">= 1.2.3"])
      s.add_development_dependency(%q<rails>, [">= 2.2.0"])
      s.add_development_dependency(%q<midas-guilded>, [">= 0.1.4"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<newgem>, [">= 1.2.3"])
      s.add_dependency(%q<rails>, [">= 2.2.0"])
      s.add_dependency(%q<midas-guilded>, [">= 0.1.4"])
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<newgem>, [">= 1.2.3"])
    s.add_dependency(%q<rails>, [">= 2.2.0"])
    s.add_dependency(%q<midas-guilded>, [">= 0.1.4"])
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
