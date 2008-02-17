#!/usr/bin/perl -w
use strict;
use HTML::Template::LZE::Main;
my %set = (path => "cgi-bin/templates", size => 16, style => "Crystal", title => "main", server => "http://localhost", login => "",);
my $main = new HTML::Template::LZE::Main(\%set);
print $main->Header(), "body", $main->Footer();
