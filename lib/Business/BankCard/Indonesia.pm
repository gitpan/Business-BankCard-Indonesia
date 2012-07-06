package Business::BankCard::Indonesia;

use Perinci::Sub::Gen::AccessTable qw(gen_read_table_func);

use Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(
                       list_id_bank_card_prefixes
               );

our %SPEC;

our $VERSION = '0.01'; # VERSION

# BEGIN SNIPPET id=data
# note: This section is generated by a script. Do not edit manually!
# src-file: /mnt/home/s1/repos/gudang-data-interim/data/idn_bank_card_prefix/data.csv
# src-revision: 716d080462f258a4a4a37ef0fd250035ef525d2b
# revision-date: Fri Jul 6 19:20:32 2012 +0700
# generate-date: Fri Jul  6 19:33:23 2012
# generated-by: /mnt/home/s1/repos/gudang-data-interim/bin/gen-perl-data-snippet
our $data = [
    ['410504','Kredit Visa BNI','67'],
    ['410505','Kredit Visa BNI','67'],
    ['410506','Kredit Visa BNI','67'],
    ['4377','Kredit Visa platinum Panin','129'],
    ['4760','Debit Visa CIMB Niaga','32'],
    ['5264','Debit Mastercard BNI','67'],
]
;
# END SNIPPET id=data
# BEGIN SNIPPET id=meta
# note: This section is generated by a script. Do not edit manually!
# src-file: /mnt/home/s1/repos/gudang-data-interim/data/idn_bank_card_prefix/meta.yaml
# src-revision: 716d080462f258a4a4a37ef0fd250035ef525d2b
# revision-date: Fri Jul 6 19:20:32 2012 +0700
# generate-date: Fri Jul  6 19:33:23 2012
# generated-by: /mnt/home/s1/repos/gudang-data-interim/bin/gen-perl-meta-snippet
our $meta = {
  "fields" => {
    ind_description => {
      "index" => 2,
      "schema" => "str*",
      "sortable" => 1,
      "summary" => "Description (in Indonesian)",
      "summary.alt.lang.id_ID" => "Keterangan (dalam bahasa Indonesia)",
      "unique" => 1,
    },
    issuer_id => {
      "description.alt.lang.id_ID" => "Lihat tabel idn_bank",
      "index" => 1,
      "schema" => "int*",
      "sortable" => 1,
      "summary" => "Issuer",
      "summary.alt.lang.id_ID" => "Penerbit",
    },
    prefix => {
      "description.alt.lang.id_ID" => "Umumnya berupa nama perusahaan.",
      "index" => 0,
      "schema" => ["str*", { match => "^\\d+\$", max_len => 6, min_len => 4 }],
      "sortable" => 1,
      "summary" => "Name",
      "summary.alt.lang.id_ID" => "Nama",
      "unique" => 1,
    },
  },
  "pk" => "prefix",
  "summary" => "Prefix of card numbers issued in Indonesia",
  "summary.alat.lang.id_ID" => "Prefiks nomor kartu yang diterbitkan di Indonesia",
}
;
# END SNIPPET id=meta
my $res = gen_read_table_func(
    table_data => $data,
    table_spec => $meta,
    default_fields => 'prefix',
);

die "BUG: Can't generate func: $res->[0] - $res->[1]"
    unless $res->[0] == 200;

my $spec = $res->[2]{meta};
$SPEC{list_id_bank_card_prefixes} = $spec;
no warnings;
*list_id_bank_card_prefixes = $res->[2]{code};
use warnings;

1;
# ABSTRACT: Utilities for dealing with bank card number issued in Indonesia


__END__
=pod

=head1 NAME

Business::BankCard::Indonesia - Utilities for dealing with bank card number issued in Indonesia

=head1 VERSION

version 0.01

=head1 SYNOPSIS

=head1 DESCRIPTION

B<NOTE: This module is still in early development and incomplete.>

This module provides routines to deal with bank card number issued in Indonesia.

=head1 SEE ALSO

L<Business::BankCard>

=head1 DESCRIPTION


This module has L<Rinci> metadata.

=head1 FUNCTIONS


None are exported by default, but they are exportable.

=head2 list_id_bank_card_prefixes(%args) -> [status, msg, result, meta]

Prefix of card numbers issued in Indonesia.

REPLACE ME

Arguments ('*' denotes required arguments):

=over 4

=item * B<detail> => I<bool> (default: 0)

Return array of full records instead of just ID fields.

By default, only the key (ID) field is returned per result entry.

=item * B<fields>* => I<array> (default: "prefix")

Select fields to return.

=item * B<ind_description>* => I<str>

Only return records where the 'ind_description' field equals specified value.

=item * B<ind_description.contains> => I<str>

Only return records where the 'ind_description' field contains specified text.

=item * B<ind_description.is>* => I<str>

Only return records where the 'ind_description' field equals specified value.

=item * B<ind_description.max> => I<str>

Only return records where the 'ind_description' field is less than or equal to specified value.

=item * B<ind_description.min> => I<array>

Only return records where the 'ind_description' field is greater than or equal to specified value.

=item * B<ind_description.not_contains> => I<str>

Only return records where the 'ind_description' field does not contain a certain text.

=item * B<ind_description.xmax> => I<str>

Only return records where the 'ind_description' field is less than specified value.

=item * B<ind_description.xmin> => I<array>

Only return records where the 'ind_description' field is greater than specified value.

=item * B<issuer_id>* => I<int>

Only return records where the 'issuer_id' field equals specified value.

=item * B<issuer_id.is>* => I<int>

Only return records where the 'issuer_id' field equals specified value.

=item * B<issuer_id.max> => I<int>

Only return records where the 'issuer_id' field is less than or equal to specified value.

=item * B<issuer_id.min> => I<array>

Only return records where the 'issuer_id' field is greater than or equal to specified value.

=item * B<issuer_id.xmax> => I<int>

Only return records where the 'issuer_id' field is less than specified value.

=item * B<issuer_id.xmin> => I<array>

Only return records where the 'issuer_id' field is greater than specified value.

=item * B<prefix>* => I<str>

Only return records where the 'prefix' field equals specified value.

=item * B<prefix.contains> => I<str>

Only return records where the 'prefix' field contains specified text.

=item * B<prefix.is>* => I<str>

Only return records where the 'prefix' field equals specified value.

=item * B<prefix.max> => I<str>

Only return records where the 'prefix' field is less than or equal to specified value.

=item * B<prefix.min> => I<array>

Only return records where the 'prefix' field is greater than or equal to specified value.

=item * B<prefix.not_contains> => I<str>

Only return records where the 'prefix' field does not contain a certain text.

=item * B<prefix.xmax> => I<str>

Only return records where the 'prefix' field is less than specified value.

=item * B<prefix.xmin> => I<array>

Only return records where the 'prefix' field is greater than specified value.

=item * B<q> => I<str>

Search.

=item * B<random> => I<bool> (default: 0)

Return records in random order.

=item * B<result_limit> => I<int>

Only return a certain number of records.

=item * B<result_start> => I<int> (default: 1)

Only return starting from the n'th record.

=item * B<sort> => I<str>

Order records according to certain field(s).

A list of field names separated by comma. Each field can be prefixed with '-' to
specify descending order instead of the default ascending.

=item * B<with_field_names> => I<bool>

Return field names in each record (as hash/associative array).

When enabled, function will return each record as hash/associative array
(field name => value pairs). Otherwise, function will return each record
as list/array (field value, field value, ...).

=back

Return value:

Returns an enveloped result (an array). First element (status) is an integer containing HTTP status code (200 means OK, 4xx caller error, 5xx function error). Second element (msg) is a string containing error message, or 'OK' if status is 200. Third element (result) is optional, the actual result. Fourth element (meta) is called result metadata and is optional, a hash that contains extra information.

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

