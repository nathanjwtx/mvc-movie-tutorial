CREATE OR REPLACE FUNCTION get_ghost() returns table (Title text, Released timestamp) as
$func$
begin
	return query
	select "Title", "ReleaseDate" from "Movie"
	where "Title" like 'Ghost%';
END
$func$ LANGUAGE plpgsql