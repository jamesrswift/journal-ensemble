#let part-state = state("__journal-ensemble:part", none)

#let update(new) = {
  part-state.update(new)
}

#let make-new-section() = {

}

#let get() = part-state.get()