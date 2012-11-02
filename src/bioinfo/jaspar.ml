open Biocaml
open Guizmin
open GzmUtils

type db

let mirror = d0
  ("guizmin.bioinfo.jaspar.mirror", [])
  (fun env path ->
    env.bash [
      sp "mkdir -p %s" path ;
      sp "cd %s" path ;
      "wget http://jaspar.genereg.net/html/DOWNLOAD/Archive.zip" ;
      "unzip Archive.zip" ;
      "rm Archive.zip" ;
    ])

let core = v1
  ("guizmin.bioinfo.jaspar.core", [])
  (fun env (Dir mirror) ->
    Biocaml.Jaspar.load (sp "%s/jaspar_CORE/non_redundant/all_species/FlatFileDir" mirror))
  mirror









