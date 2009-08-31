# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mms2r}
  s.version = "2.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mike Mondragon"]
  s.date = %q{2009-08-30}
  s.description = %q{== DESCRIPTION
  
MMS2R is a library that decodes the parts of an MMS message to disk while 
stripping out advertising injected by the mobile carriers.  MMS messages are 
multipart email and the carriers often inject branding into these messages.  Use
MMS2R if you want to get at the real user generated content from a MMS without
having to deal with the cruft from the carriers.

If MMS2R is not aware of a particular carrier no extra processing is done to the 
MMS other than decoding and consolidating its media.

Contact the author to add additional carriers to be processed by the library.  
Suggestions and patches appreciated and welcomed!

Corpus of carriers currently processed by MMS2R:

* 1nbox/Idea: 1nbox.net
* 3 Ireland: mms.3ireland.ie
* Alltel: mms.alltel.com
* AT&T/Cingular/Legacy: mms.att.net, txt.att.net, mmode.com, mms.mycingular.com, 
  cingularme.com, mobile.mycingular.com pics.cingularme.com
* Bell Canada: txt.bell.ca
* Bell South / Suncom: bellsouth.net
* Cricket Wireless: mms.mycricket.com
* Dobson/Cellular One: mms.dobson.net
* Helio: mms.myhelio.com
* Hutchison 3G UK Ltd: mms.three.co.uk
* INDOSAT M2: mobile.indosat.net.id
* LUXGSM S.A.: mms.luxgsm.lu
* Maroc Telecom / mms.mobileiam.ma
* MTM South Africa: mms.mtn.co.za
* NetCom (Norway): mms.netcom.no
* Nextel: messaging.nextel.com
* O2 Germany: mms.o2online.de
* O2 UK: mediamessaging.o2.co.uk
* Orange & Regional Oranges: orangemms.net, mmsemail.orange.pl, orange.fr
* PLSPICTURES.COM mms hosting: waw.plspictures.com
* PXT New Zealand: pxt.vodafone.net.nz
* Rogers of Canada: rci.rogers.com
* SaskTel: sms.sasktel.com
* Sprint: pm.sprint.com, messaging.sprintpcs.com, sprintpcs.com
* T-Mobile: tmomail.net, mmsreply.t-mobile.co.uk, tmo.blackberry.net
* TELUS Corporation (Canada): mms.telusmobility.com, msg.telus.com
* UAE MMS: mms.ae
* Unicel: unicel.com, info2go.com 
  (note: mobile number is tucked away in a text/plain part for unicel.com)
* Verizon: vzwpix.com, vtext.com
* Virgin Mobile: vmpix.com
* Virgin Mobile of Canada: vmobile.ca
* Vodacom: mms.vodacom4me.co.za}
  s.email = %q{mikemondragon@gmail.com}
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = [".gitignore", "History.txt", "Manifest.txt", "README.txt", "Rakefile", "conf/1nbox.net.yml", "conf/aliases.yml", "conf/bellsouth.net.yml", "conf/from.yml", "conf/mediamessaging.o2.co.uk.yml", "conf/messaging.nextel.com.yml", "conf/mms.3ireland.ie.yml", "conf/mms.ae.yml", "conf/mms.alltel.com.yml", "conf/mms.att.net.yml", "conf/mms.dobson.net.yml", "conf/mms.luxgsm.lu.yml", "conf/mms.mobileiam.ma.yml", "conf/mms.mtn.co.za.yml", "conf/mms.mycricket.com.yml", "conf/mms.myhelio.com.yml", "conf/mms.netcom.no.yml", "conf/mms.o2online.de.yml", "conf/mms.three.co.uk.yml", "conf/mms.vodacom4me.co.za.yml", "conf/mms2r_media.yml", "conf/mobile.indosat.net.id.yml", "conf/msg.telus.com.yml", "conf/orangemms.net.yml", "conf/pm.sprint.com.yml", "conf/pxt.vodafone.net.nz.yml", "conf/rci.rogers.com.yml", "conf/sms.sasktel.com.yml", "conf/tmomail.net.yml", "conf/txt.bell.ca.yml", "conf/unicel.com.yml", "conf/vmpix.com.yml", "conf/vzwpix.com.yml", "conf/waw.plspictures.com.yml", "dev_tools/anonymizer.rb", "dev_tools/debug_sprint_hpricot_parsing.rb", "dev_tools/github.rb", "init.rb", "lib/mms2r.rb", "lib/mms2r/media.rb", "lib/mms2r/media/sprint.rb", "lib/tmail_ext.rb", "mms2r.gemspec", "test/fixtures/1nbox-2images-01.mail", "test/fixtures/1nbox-2images-02.mail", "test/fixtures/1nbox-2images-03.mail", "test/fixtures/1nbox-2images-04.mail", "test/fixtures/3ireland-mms-01.mail", "test/fixtures/alltel-image-01.mail", "test/fixtures/alltel-mms-01.mail", "test/fixtures/alltel-mms-03.mail", "test/fixtures/apple-double-image-01.mail", "test/fixtures/att-blackberry-02.mail", "test/fixtures/att-blackberry.mail", "test/fixtures/att-image-01.mail", "test/fixtures/att-image-02.mail", "test/fixtures/att-iphone-01.mail", "test/fixtures/att-iphone-02.mail", "test/fixtures/att-iphone-03.mail", "test/fixtures/att-text-01.mail", "test/fixtures/bell-canada-image-01.mail", "test/fixtures/cingularme-text-01.mail", "test/fixtures/cingularme-text-02.mail", "test/fixtures/dobson-image-01.mail", "test/fixtures/dot.jpg", "test/fixtures/generic.mail", "test/fixtures/helio-image-01.mail", "test/fixtures/helio-message-01.mail", "test/fixtures/iconv-fr-text-01.mail", "test/fixtures/indosat-image-01.mail", "test/fixtures/indosat-image-02.mail", "test/fixtures/info2go-image-01.mail", "test/fixtures/iphone-image-01.mail", "test/fixtures/luxgsm-image-01.mail", "test/fixtures/maroctelecom-france-mms-01.mail", "test/fixtures/mediamessaging_o2_co_uk-image-01.mail", "test/fixtures/mmode-image-01.mail", "test/fixtures/mms.ae-image-01.mail", "test/fixtures/mms.mycricket.com-pic-and-text.mail", "test/fixtures/mms.mycricket.com-pic.mail", "test/fixtures/mmsreply.t-mobile.co.uk-text-image-01.mail", "test/fixtures/mobile.mycingular.com-text-01.mail", "test/fixtures/mtn-southafrica-mms.mail", "test/fixtures/mycingular-image-01.mail", "test/fixtures/netcom-image-01.mail", "test/fixtures/nextel-image-01.mail", "test/fixtures/nextel-image-02.mail", "test/fixtures/nextel-image-03.mail", "test/fixtures/nextel-image-04.mail", "test/fixtures/o2-de-image-01.mail", "test/fixtures/orange-uk-image-01.mail", "test/fixtures/orangefrance-text-and-image.mail", "test/fixtures/orangepoland-text-01.mail", "test/fixtures/orangepoland-text-02.mail", "test/fixtures/pics.cingularme.com-image-01.mail", "test/fixtures/pxt-image-01.mail", "test/fixtures/rogers-canada-mms-01.mail", "test/fixtures/sasktel-image-01.mail", "test/fixtures/sprint-broken-image-01.mail", "test/fixtures/sprint-image-01.mail", "test/fixtures/sprint-pcs-text-01.mail", "test/fixtures/sprint-purged-image-01.mail", "test/fixtures/sprint-text-01.mail", "test/fixtures/sprint-two-images-01.mail", "test/fixtures/sprint-video-01.mail", "test/fixtures/sprint.mov", "test/fixtures/suncom-blackberry.mail", "test/fixtures/telus-image-01.mail", "test/fixtures/three-uk-image-01.mail", "test/fixtures/tmo.blackberry.net-image-01.mail", "test/fixtures/tmobile-blackberry-02.mail", "test/fixtures/tmobile-blackberry.mail", "test/fixtures/tmobile-image-01.mail", "test/fixtures/tmobile-image-02.mail", "test/fixtures/unicel-image-01.mail", "test/fixtures/verizon-blackberry.mail", "test/fixtures/verizon-image-01.mail", "test/fixtures/verizon-image-02.mail", "test/fixtures/verizon-image-03.mail", "test/fixtures/verizon-text-01.mail", "test/fixtures/verizon-video-01.mail", "test/fixtures/virgin-mobile-image-01.mail", "test/fixtures/virgin.ca-text-01.mail", "test/fixtures/vodacom4me-co-za-01.mail", "test/fixtures/vodacom4me-co-za-02.mail", "test/fixtures/vodacom4me-southafrica-mms-01.mail", "test/fixtures/vodacom4me-southafrica-mms-04.mail", "test/fixtures/vtext-text-01.mail", "test/fixtures/vzwpix.com-image-01.mail", "test/fixtures/waw.plspictures.com-image-01.mail", "test/test_1nbox_net.rb", "test/test_bell_canada.rb", "test/test_bellsouth_net.rb", "test/test_github.rb", "test/test_helper.rb", "test/test_mediamessaging_o2_co_uk.rb", "test/test_messaging_nextel_com.rb", "test/test_messaging_sprintpcs_com.rb", "test/test_mms2r_media.rb", "test/test_mms_3ireland_ie.rb", "test/test_mms_ae.rb", "test/test_mms_alltel_com.rb", "test/test_mms_att_net.rb", "test/test_mms_dobson_net.rb", "test/test_mms_luxgsm_lu.rb", "test/test_mms_mobileiam_ma.rb", "test/test_mms_mtn_co_za.rb", "test/test_mms_mycricket_com.rb", "test/test_mms_myhelio_com.rb", "test/test_mms_netcom_no.rb", "test/test_mms_o2online_de.rb", "test/test_mms_three_co_uk.rb", "test/test_mms_vodacom4me_co_za.rb", "test/test_mobile_indosat_net_id.rb", "test/test_msg_telus_com.rb", "test/test_orangemms_net.rb", "test/test_pm_sprint_com.rb", "test/test_pxt_vodafone_net_nz.rb", "test/test_rci_rogers_com.rb", "test/test_sms_sasktel_com.rb", "test/test_tmomail_net.rb", "test/test_unicel_com.rb", "test/test_vmpix_com.rb", "test/test_vzwpix_com.rb", "test/test_waw_plspictures_com.rb", "vendor/plugins/mms2r/lib/autotest/discover.rb", "vendor/plugins/mms2r/lib/autotest/mms2r.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://mms2r.rubyforge.org/
}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{mms2r}
  s.rubygems_version = %q{1.3.2}
  s.summary = %q{Extract user media from MMS (and not carrier cruft)}
  s.test_files = ["test/test_mms_o2online_de.rb", "test/test_helper.rb", "test/test_pm_sprint_com.rb", "test/test_sms_sasktel_com.rb", "test/test_mms_mobileiam_ma.rb", "test/test_msg_telus_com.rb", "test/test_messaging_sprintpcs_com.rb", "test/test_mms_myhelio_com.rb", "test/test_mms_3ireland_ie.rb", "test/test_mms_ae.rb", "test/test_mms_att_net.rb", "test/test_mediamessaging_o2_co_uk.rb", "test/test_bell_canada.rb", "test/test_mms_mtn_co_za.rb", "test/test_vmpix_com.rb", "test/test_github.rb", "test/test_vzwpix_com.rb", "test/test_bellsouth_net.rb", "test/test_unicel_com.rb", "test/test_waw_plspictures_com.rb", "test/test_mms_luxgsm_lu.rb", "test/test_mms_netcom_no.rb", "test/test_mms_mycricket_com.rb", "test/test_mms2r_media.rb", "test/test_rci_rogers_com.rb", "test/test_messaging_nextel_com.rb", "test/test_mms_vodacom4me_co_za.rb", "test/test_tmomail_net.rb", "test/test_1nbox_net.rb", "test/test_pxt_vodafone_net_nz.rb", "test/test_mobile_indosat_net_id.rb", "test/test_mms_three_co_uk.rb", "test/test_mms_alltel_com.rb", "test/test_mms_dobson_net.rb", "test/test_orangemms_net.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hpricot>, [">= 0"])
      s.add_runtime_dependency(%q<tmail>, [">= 0"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.2"])
    else
      s.add_dependency(%q<hpricot>, [">= 0"])
      s.add_dependency(%q<tmail>, [">= 0"])
      s.add_dependency(%q<hoe>, [">= 1.8.2"])
    end
  else
    s.add_dependency(%q<hpricot>, [">= 0"])
    s.add_dependency(%q<tmail>, [">= 0"])
    s.add_dependency(%q<hoe>, [">= 1.8.2"])
  end
end
