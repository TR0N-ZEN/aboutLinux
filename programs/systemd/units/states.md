### `<state>`
can be of three categories of states:
+ LOAD - reflection if unit was properly loaded LOAD := { `loaded`, `not-found` }
+ ACTIVE - high-level unit activation state ACTIVE := { `active`, `inactive`, `failed` }
+ SUB - low-level unit activation state, value is dependent on the `<unitType>` SUB(`<unitType>`) := { `dead`, ... }
  + SUB(`service`)   := { `dead`, `exited`, `exited`, `failed` }
  + SUB(`socket`)    := { `dead`, `running`, `listening` }
  + SUB(`device`)    := { `plugged`, ... }
  + SUB(`mount`)     := { `dead`, `mounted`, ... }
  + SUB(`automount`) := { `dead`, `running`, ... }
  + SUB(`path`)      := { `waiting`, ... }
  + SUB(`scope`)     := { `running`, `abandon`, ... }
  + SUB(`slice`)     := { `dead`, ... }
  + SUB(`swap`)      := { `dead`, ... }
  + SUB(`target`)    := { `dead`, `enabled`, `disabled`, `static`, `indirect`... }
  + SUB(`timer`)     := { `dead`, ... }
  + SUB(`snapshot`)  := { `dead`, ... }
