require "watir-webdriver"; 
browser = Watir::Browser.new :firefox;

browser.goto "http://lets.qa/test-form/"; 
browser.text_field(:name => "vfb-5").set("Stefan");
browser.text_field(:name => "vfb-6").set("Cepko");
browser.text_field(:name => "vfb-8").set("cepko.s@husky.neu.edu");
browser.text_field(:name => "vfb-7").set("774-922-3901");
browser.input(:name => "vfb-9[]").click;
browser.input(:name => "vfb-11").click;

quine = ["require \"watir-webdriver\"; 
browser = Watir::Browser.new :firefox;

browser.goto \"http://lets.qa/test-form/\"; 
browser.text_field(:name => \"vfb-5\").set(\"Stefan\");
browser.text_field(:name => \"vfb-6\").set(\"Cepko\");
browser.text_field(:name => \"vfb-8\").set(\"cepko.s@husky.neu.edu\");
browser.text_field(:name => \"vfb-7\").set(\"774-922-3901\");
browser.input(:name => \"vfb-9[]\").click;
browser.input(:name => \"vfb-11\").click;

quine = [\"" , "
browser.text_field(:name => \"vfb-10\").set(quine[0] + quine[0].gsub('\\n','\\\\n').gsub('\"', '\\\\\\\"') + \"\\\" , \\\"\" + quine[1].gsub('\\\\', '\\\\\\\\\\\\').gsub('\"', '\\\\\\\"') + \"\\\"];\\n\" + quine[1]);
browser.text_field(:name => \"vfb-3\").set(\"45\");"];

browser.text_field(:name => "vfb-10").set(quine[0] + quine[0].gsub('\n','\\n').gsub('"', '\\\"') + "\" , \"" + quine[1].gsub('\\', '\\\\\\').gsub('"', '\\\"') + "\"];\n" + quine[1]);
browser.text_field(:name => "vfb-3").set("45");
