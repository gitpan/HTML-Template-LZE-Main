#!/usr/bin/perl -w
use lib qw(lib);
use strict;
use HTML::Template::LZE::Main;
my %set = (path => "./templates", size => 16, style => "Crystal", title => "HTML::Template::LZE::Main", server => "http://localhost", login => "",);
my $main = new HTML::Template::LZE::Main(\%set);
use CGI::LZE qw(header);
print header;
print $main->Header();
use showsource;
&showSource("./main.pl");
print $main->Footer();
