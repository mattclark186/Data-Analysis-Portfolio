update lu_23_24
set `Annual Wages` = regexp_replace(`Annual Wages`, '^[^£]*£',''),
	`Annual Wages` = regexp_replace(`Annual Wages`, '\\$.*',''),
    `Annual Wages` = trim(`Annual Wages`),
    `Annual Wages` = cast(replace(`Annual Wages`, ',', '') as unsigned)
;


select * from lu_23_24
;
