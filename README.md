# profile-flame-graph

A library for providing Racket profiler outputs as
[flame graphs](https://github.com/brendangregg/FlameGraph).

The library can optionally call out to the `flamegraph.pl` script.
For this feature, you will need to check out the
[FlameGraph](https://github.com/brendangregg/FlameGraph) repo and
add it to your `PATH` variable.

# Quick usage

Install with

```
raco pkg install profile-flame-graph
```

Wrap the expression you want to profile like this:

```racket
(profile <your-code-here>
         #:svg-path "my-profile.svg"
         #:preview? #t)
```

which will write the profile output to `my-profile.svg` and pop
up a window showing the flame graph.

---

Copyright (c) 2016 Asumu Takikawa

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU Lesser General Public License as published by the Free
Software Foundation, either version 3 of the License, or (at your option) any
later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License along
with this program. If not, see http://www.gnu.org/licenses.
