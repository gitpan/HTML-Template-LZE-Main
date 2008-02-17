use strict;
use warnings;
use lib("lib");
use HTML::Template::LZE::Main;
my %set  = (path => "cgi-bin/templates", size => 16, style => "Crystal", title => "main", server => "http://localhost", login => "",);
my $main = new HTML::Template::LZE::Main(\%set);
my $h1   = $main->Header();
my $f1   = $main->Footer();
use Test::More tests => 2;
ok(length($h1) > 0);
ok(length($f1) > 0);

print $h1, "body", $f1;
