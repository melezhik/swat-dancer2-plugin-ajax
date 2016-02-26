#!/usr/bin/perl

use Dancer2;
use Dancer2::Plugin::Ajax;

set plugins => { 'Ajax' => { content_type => 'application/json' } };

ajax '/test' => sub {
    "{some: 'json'}";
};

get '/test' => sub {
    "some text";
};

ajax '/another/test' => sub {
    "{more: 'json'}";
};

ajax ['put', 'del', 'get'] => "/more/test" => sub {
    "{some: 'json'}";
};

dance;

