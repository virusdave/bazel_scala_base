# Re-export names from external repository, to get IDE completion
load("@rules_scala_annex//rules:scala.bzl",
    _scala_library = "scala_library",
    _scala_binary = "scala_binary",
    _scala_test = "scala_test",
    _scala_repl = "scala_repl")

scala_library = _scala_library
scala_binary = _scala_binary
scala_test = _scala_test
scala_repl = _scala_repl
