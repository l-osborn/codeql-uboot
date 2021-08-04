import cpp

from Macro m
where m.getName() in ["ntohl", "ntohll", "ntohs"]
select m, "one of: ntohl, ntohll, ntohs"


