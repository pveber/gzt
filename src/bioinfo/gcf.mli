(** GCF = Genomic coordinates format loosely defined as a TSV format
    whose first column represents a location with the syntax <chr>:<start>-<end>
*)

open Guizmin
open MBSchema

type tabular data = {
  loc : Location
}

include module type of Guizmin_table.Make(Row)(Table)

val to_bed : file -> Bed.Basic.file



















