require "watir-webdriver"; 
browser = Watir::Browser.new :firefox;

browser.goto "http://lets.qa/test-form/"; 
browser.text_field(:name => "vfb-5").set("First");
browser.text_field(:name => "vfb-6").set("Second");
browser.text_field(:name => "vfb-8").set("Email");
browser.text_field(:name => "vfb-7").set("Phone");
browser.input(:name => "vfb-9[]").click;
browser.input(:name => "vfb-11").click;

quine = ["require \"watir-webdriver\"; 
browser = Watir::Browser.new :firefox;

browser.goto \"http://lets.qa/test-form/\"; 
browser.text_field(:name => \"vfb-5\").set(\"First\");
browser.text_field(:name => \"vfb-6\").set(\"Second\");
browser.text_field(:name => \"vfb-8\").set(\"Email\");
browser.text_field(:name => \"vfb-7\").set(\"Phone\");
browser.input(:name => \"vfb-9[]\").click;
browser.input(:name => \"vfb-11\").click;

quine = [\"" , "
browser.text_field(:name => \"vfb-10\").set(quine[0] + quine[0].gsub('\\n','\\\\n').gsub('\"', '\\\\\\\"') + \"\\\" , \\\"\" + quine[1].gsub('\\\\', '\\\\\\\\\\\\').gsub('\"', '\\\\\\\"') + \"\\\"];\\n\" + quine[1]);
browser.text_field(:name => \"vfb-3\").set(\"45\");"];

browser.text_field(:name => "vfb-10").set(quine[0] + quine[0].gsub('\n','\\n').gsub('"', '\\\"') + "\" , \"" + quine[1].gsub('\\', '\\\\\\').gsub('"', '\\\"') + "\"];\n" + quine[1]);
browser.text_field(:name => "vfb-3").set("45");
