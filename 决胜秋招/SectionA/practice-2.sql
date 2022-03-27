drop table if exists `seat`;

create table `seat`
(
    id integer not null,
    student varchar(16) not null,
    primary key (id)
);

insert into `seat`
values (1, 'Abbot'),
       (2, 'Doris'),
       (3, 'Emerson'),
       (4, 'Green'),
       (5, 'Jeames');

select (
    case
        when mod(id, 2) != 0 and s.counts != id then id + 1
        when mod(id, 2) != 0 and s.counts = id then id
        else id - 1
    end
           ) as id, student
from seat, (select count(*) as counts from seat) as s
order by id;