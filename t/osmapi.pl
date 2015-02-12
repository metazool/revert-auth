#!/usr/bin/perl -w

use strict;
use Test::Simple tests => 8;
use OsmApi;
use LWP;


our $a = HTTP::Request->new(GET=>'');
our $b = '';

ok(OsmApi::repeat($a,$b));
ok(OsmApi::get($a));
ok(OsmApi::get_with_credentials($a));
ok(OsmApi::put($a,$b));
ok(OsmApi::post($a,$b));
ok(OsmApi::delete($a,$b));
# skipping for now as it needs a real HTTP response
#ok(OsmApi::debuglog($a));
ok(OsmApi::dummylog('foo',$a,$b));
ok(OsmApi::set_timeout($a));
