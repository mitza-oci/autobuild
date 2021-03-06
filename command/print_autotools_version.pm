#

package print_autotools_version;

use strict;
use warnings;

use Cwd;
use File::Path;

###############################################################################
# Constructor

sub new
{
    my $proto = shift;
    my $class = ref ($proto) || $proto;
    my $self = {};

    bless ($self, $class);
    return $self;
}

##############################################################################

sub CheckRequirements ()
{
    my $self = shift;

    return 1;
}

##############################################################################

sub Run ($)
{
    my $self = shift;
    my $useuname = shift;

    main::PrintStatus ('Config', "Print Autotools Version" );

    print "<h3>Automake version (automake --version)</h3>\n";
    system("automake --version");

    print "<h3>Autoconf version (autoconf --version)</h3>\n";
    system("autoconf --version");

    print "<h3>Libtool version (libtool --version)</h3>\n";
    system("libtool --version");

    print "\n";

    return 1;
}

##############################################################################

main::RegisterCommand ("print_autotools_version", new print_autotools_version());
