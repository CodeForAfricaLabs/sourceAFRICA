# -*- coding: utf-8 -*-
require 'test_helper'

class ValidatorsTest < ActiveSupport::TestCase

  it "is able to validate domain names" do
    %w(google.com www.sourceafrica.net internal.web1.est.example.com).each do |domain|
      assert DC::Validators::DOMAIN.match(domain)
    end
    %w(biz$ness.com google.com;drop google.c login www.microsoft).each do |domain|
      assert !DC::Validators::DOMAIN.match(domain)
    end
  end

  it "validates subdomains" do
    %w(web09 internal staging eu-western CAPHAPPY).each do |subdomain|
      assert DC::Validators::SUBDOMAIN.match(subdomain)
    end
    %w(dollar$ internal.web bim—bop grünter).each do |subdomain|
      assert !DC::Validators::SUBDOMAIN.match(subdomain)
    end
  end


  it "can validate email addresses" do
    %w(jsmith@example.com david@codeforafrica.org davidlemayian+sourceafrica@gmail.com).each do |email|
      assert DC::Validators::EMAIL.match(email)
    end
    %w(biz[at]docs.com 20#10@gmail.com example@something.somewhere).each do |email|
      assert !DC::Validators::EMAIL.match(email)
    end
  end
end
