package Pod::Weaver::PluginBundle::Author::PERLANCAR::NoPerinci;

our $DATE = '2014-11-12'; # DATE
our $VERSION = '0.17'; # VERSION

use 5.010001;

use Pod::Weaver::Config::Assembler;

sub _exp { Pod::Weaver::Config::Assembler->expand_package($_[0]) }

sub mvp_bundle_config {
    return (
        [ '@Author::PERLANCAR/CorePrep', _exp('@CorePrep'), {} ],
        [ '@Author::PERLANCAR/Name', _exp('Name'), {} ],
        [ '@Author::PERLANCAR/Version', _exp('Version'), {format=>'This document describes version %v of %m (from Perl distribution %r), released on %{YYYY-MM-dd}d.'} ],
        [ '@Author::PERLANCAR/prelude', _exp('Region'), { region_name => 'prelude' } ],

        [ 'SYNOPSIS', _exp('Generic'), {} ],
        [ 'DESCRIPTION', _exp('Generic'), {} ],
        [ 'OVERVIEW', _exp('Generic'), {} ],

        [ 'ATTRIBUTES', _exp('Collect'), { command => 'attr' } ],
        [ 'METHODS', _exp('Collect'), { command => 'method' } ],
        [ 'FUNCTIONS', _exp('Collect'), { command => 'func' } ],
        #[ 'TYPES', _exp('Collect'), { command => ' } ],

        [ '@Author::PERLANCAR/Leftovers', _exp('Leftovers'), {} ],
        [ '@Author::PERLANCAR/postlude',  _exp('Region'), { region_name => 'postlude' } ],

        [ '@Author::PERLANCAR/BashCompletion::GetoptLongComplete', _exp('BashCompletion::GetoptLongComplete'), {} ],
        [ '@Author::PERLANCAR/BashCompletion::PerinciCmdLine', _exp('BashCompletion::PerinciCmdLine'), {} ],

        [ '@Author::PERLANCAR/Homepage::DefaultCPAN', _exp('Homepage::DefaultCPAN'), {} ],
        [ '@Author::PERLANCAR/Source::DefaultGitHub', _exp('Source::DefaultGitHub'), {} ],
        [ '@Author::PERLANCAR/Bugs::DefaultRT', _exp('Bugs::DefaultRT'), {} ],
        [ '@Author::PERLANCAR/Authors', _exp('Authors'), {} ],
        [ '@Author::PERLANCAR/Legal', _exp('Legal'), {} ],

        [ '@Author::PERLANCAR/EnsureUniqueSections', _exp('-EnsureUniqueSections'), {} ],
        #[ '@Author::PERLANCAR/List', _exp('-Transformer'), { transformer => 'List' } ],
        [ '@Author::PERLANCAR/SingleEncoding', _exp('-SingleEncoding'), {} ],
    );
}

1;
# ABSTRACT: PERLANCAR's default Pod::Weaver config

__END__

=pod

=encoding UTF-8

=head1 NAME

Pod::Weaver::PluginBundle::Author::PERLANCAR::NoPerinci - PERLANCAR's default Pod::Weaver config

=head1 VERSION

This document describes version 0.17 of Pod::Weaver::PluginBundle::Author::PERLANCAR::NoPerinci (from Perl distribution Pod-Weaver-PluginBundle-Author-PERLANCAR), released on 2014-11-12.

=head1 SYNOPSIS

In C<weaver.ini>:

 [@Author::PERLANCAR]

or in C<dist.ini>:

 [PodWeaver]
 config_plugin = @Author::PERLANCAR

=head1 DESCRIPTION

Equivalent to (see source code).

=for Pod::Coverage .*

=head1 SEE ALSO

L<Pod::Weaver>

L<Dist::Zilla::PluginBundle::Author::PERLANCAR>

=head1 HOMEPAGE

Please visit the project's homepage at L<https://metacpan.org/release/Pod-Weaver-PluginBundle-Author-PERLANCAR>.

=head1 SOURCE

Source repository is at L<https://github.com/perlancar/perl-Pod-Weaver-PluginBundle-Author-SHARYANTO>.

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website L<https://rt.cpan.org/Public/Dist/Display.html?Name=Pod-Weaver-PluginBundle-Author-PERLANCAR>

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

perlancar <perlancar@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by perlancar@cpan.org.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
