(************************************************************************)
(*         *   The Coq Proof Assistant / The Coq Development Team       *)
(*  v      *         Copyright INRIA, CNRS and contributors             *)
(* <O___,, * (see version control and CREDITS file for authors & dates) *)
(*   \VV/  **************************************************************)
(*    //   *    This file is distributed under the terms of the         *)
(*         *     GNU Lesser General Public License Version 2.1          *)
(*         *     (see LICENSE file for the text of the license)         *)
(************************************************************************)

(** Initialization. *)

val set_debug : unit -> unit

val load_rcfile : rcfile:(string option) -> state:Vernac.State.t -> Vernac.State.t

(** Standard LoadPath for Coq user libraries; in particular it
   includes (in-order) Coq's standard library, Coq's [user-contrib]
   folder, and directories specified in [COQPATH] and [XDG_DIRS] *)
val libs_init_load_path
  : coqlib:CUnix.physical_path
  -> CUnix.physical_path list * Loadpath.vo_path list
