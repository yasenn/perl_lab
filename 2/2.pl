#!/usr/bin/env perl

# Write a program, by running It will identify the existing running sessions of the same program and its input values. 
# The recent program must ignore the input values already given for prior instance.

my $processname;
my $processlist;
my @argsarray = ();
use experimental 'smartmatch';

$processname = $0 =~ s/^[\.\/]*//r;

$processlist = `ps -eo pid,comm,args`;
for (split /^/, $processlist) {
    if ( /$processname/ ) {
        my $lets_add_args;
        $lets_add_args = 0;
        @tokens = split(/\s/, $_ );
        print scalar @tokens . "\n";
        foreach my $token ( @tokens ) {
            if ( $lets_add_args and $token ~~ @argsarray ) {
                print $token . "already used\n";
            }
            elsif ( $lets_add_args and $token ~~ @argsarray ) {
                push( @$argsarray, $token ) ;
            }
            if ( $lets_add_args or ( $token eq $0 ) ) {
                $lets_add_args = 1;
            }
        }
    }
}
print "Applied args are: \n";
foreach my $_arg ( @argsarray ) {
    print $_arg . "\n";
}
<STDIN>
