#!/usr/bin/perl -w

use strict;
use Test::Simple tests => 7;
use OsmApi;
use LWP;


our $req = HTTP::Request->new(GET=>'');
our $a = $b = '';

ok(OsmApi::repeat($req,$b));
ok(OsmApi::get($a));
# skipping for now until we implement wrapper for repeat() :/
#ok(OsmApi::get_with_credentials($a));
ok(OsmApi::put($a,$b));
ok(OsmApi::post($a,$b));
ok(OsmApi::delete($a,$b));
# skipping for now as it needs a real HTTP response
#ok(OsmApi::debuglog($a));
ok(OsmApi::dummylog('foo',$a,$b));
ok(OsmApi::set_timeout($a));
